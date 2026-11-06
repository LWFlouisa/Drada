#############################################################################################################
#                                               Obelisk DSL                                                 #
#############################################################################################################
###########################################################################################
#                         Data Recycling And Memory Management                            #
###########################################################################################
# Focus on preserving knowledge through burial urns inside of obelisks. This started out  #
# as an esolang, and gradually became more useful for real world problems, such as the    #
# issue of catestrophic forgetting in AI models.                                          #
###########################################################################################
module Obelisk
  class Quips
    def self.floating_finger(a, b)
      right = [":right_finger", a.split(" ")]
      left  = [":left_finger",  b.split(" ")]

      floating = [":floating_finger", right[1][1], left[1][0]]

      Obelisk::DataRecycling.obelisk("#{floating[0]} #{floating[1]} #{floating[2]}")

      puts "#{floating[0]} #{floating[1]} #{floating[2]}"
    end

    def self.spooney(first_word, second_word)
      first_replacement = first_word.split("")
      second_replacement = second_word.split("")

      spooned_first = first_word.tr first_replacement[0], second_replacement[0]
      spooned_second = second_word.tr second_replacement[0], first_replacement[0]

      Obelisk::DataRecycling.obelisk("#{spooned_first} #{spooned_second}")
      
      "#{spooned_first} #{spooned_second}"
    end
  end
  
  class DataRecycling
    macro obelisk_method(obelisk_method_name, obelisk_output, obelisk_content)
      def {{obelisk_method_name}}
        {{obelisk_content}}

        {{obelisk_output}}
      end
    end

    #################################################################################################################
    #                                                Memoricimetiere                                                #
    #################################################################################################################
    def self.obelisk(old_data)
      old_graveyard = File.read_lines("mce/urn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("mce/urn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.obelisk_shell(old_data)
      old_graveyard = File.read_lines("mce/surn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("mce/surn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.obelisk_repl(old_data)
      old_graveyard = File.read_lines("mce/aurn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("mce/aurn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.three_plot_burial(father, mother, child)
      buried_fathers  = File.read_lines("mce/family/father.txt").uniq.sort
      buried_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort
      buried_children = File.read_lines("mce/family/child.txt").uniq.sort

      File.open("mce/family/father.txt", "w") { |f|
        f.puts father
        f.puts buried_fathers
      }
  
      File.open("mce/family/mother.txt", "w") { |f|
        f.puts mother
        f.puts buried_mothers
      }
  
      File.open("mce/family/child.txt", "w") { |f|
        f.puts child
        f.puts buried_children
      }
    end

    def self.four_plot_burial(father, mother, brother, sister)
      buried_fathers  = File.read_lines("mce/family/father.txt").uniq.sort
      buried_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort
      buried_brothers = File.read_lines("mce/family/brother.txt").uniq.sort
      buried_sisters  = File.read_lines("mce/family/sister.txt").uniq.sort

      File.open("mce/family/father.txt", "w") { |f|
        f.puts father
        f.puts buried_fathers
      }
  
      File.open("mce/family/mother.txt", "w") { |f|
        f.puts mother
        f.puts buried_mothers
      }
  
      File.open("mce/family/brother.txt", "w") { |f|
        f.puts brother
        f.puts buried_brothers
      }

      File.open("mce/family/sister.txt", "w") { |f|
        f.puts sister
        f.puts buried_sisters
      }
    end

    def self.scatter_ashes
      old_graveyard = File.read_lines("mce/urn.txt").uniq.sort.shuffle
      size_limit    = old_graveyard.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_graveyard[index]
  
        index = index + 1
      end
    end

    def self.scatter_shells
      old_graveyard = File.read_lines("mce/surn.txt").uniq.sort.shuffle
      size_limit    = old_graveyard.size.to_i
      index         = 0
  
      size_limit.times do
        system("#{old_graveyard[index]}")
  
        index = index + 1
      end
    end

    def self.scatter_three_ashes
      old_fathers  = File.read_lines("mce/family/father.txt").uniq.sort.shuffle
      old_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort.shuffle
      old_children = File.read_lines("mce/family/child.txt").uniq.sort.shuffle

      size_limit    = old_fathers.size.to_i
      index         = 0
  
      ## Scatters fathers ashes in the wind.
      size_limit.times do
        puts old_fathers[index]
  
        index = index + 1
      end
  
      ## Scatters mothers ashes in the wind
      size_limit    = old_mothers.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_mothers[index]
  
        index = index + 1
      end

      ## Scatters childrens ashes in the wind.
      size_limit    = old_children.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_children[index]
  
        index = index + 1
      end
    end

    def self.scatter_four_ashes
      old_fathers  = File.read_lines("mce/family/father.txt").uniq.sort.shuffle
      old_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort.shuffle
      old_brothers = File.read_lines("mce/family/brother.txt").uniq.sort
      old_sister   = File.read_lines("mce/family/sister.txt").uniq.sort

      size_limit    = old_fathers.size.to_i
      index         = 0
  
      ## Scatters fathers ashes in the wind.
      size_limit.times do
        puts old_fathers[index]
  
        index = index + 1
      end
  
      ## Scatters mothers ashes in the wind
      size_limit    = old_mothers.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_mothers[index]
  
        index = index + 1
      end

      ## Scatters brothers ashes in the wind.
      size_limit    = old_brothers.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_brothers[index]
  
        index = index + 1
      end

      ## Scatters sisters ashes in the wind.
      size_limit    = old_sister.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_sister[index]
  
        index = index + 1
      end
    end

    def self.yonagumi(current_year, specific_event)
      age_of_yonagumi = 11000.0
  
      age_percent = age_of_yonagumi - current_year
  
      " For a point of comparison: Yonagumi is #{age_percent} years old as of #{current_year}."

      Obelisk::DataRecycling.obelisk("For a point of comparison: Yonagumi is #{age_percent} years old as of #{current_year}.")
      Obelisk::DataRecycling.scatter_ashes
    end

    def self.age_comparison(current_year, age_historical, specific_event)
      years_ago = current_year - age_historical
  
      print "The current year is #{current_year}, #{specific_event} is #{years_ago} years ago."
      puts Obelisk::DataRecycling.yonagumi(2026.0, "#{specific_event}")
      
      Obelisk::DataRecycling.obelisk("The current year is #{current_year}, #{specific_event} is #{years_ago} years ago.")
    end
  end
end

class Filters
  # wane bhineb [ window pane shines brightly ]
  # bat larts [ black cat farts loudly ]
  # wlays qhess [ winona plays chess quietly ]
  # lookshelf parries [ large bookshelf carries pamphlets ]
  # boffee rug [ big coffee mug rests ]
  # brinks silk [ bianca drinks milk shakes ]
  # sright qarkens [ starlight bright darkens quickly ]
  # wat fuman [ werebears eat human flesh ]

  def self.floating_finger(a, b)
    right = [":right_finger", a.split(" ")]
    left  = [":left_finger",  b.split(" ")]

    floating = [":floating_finger", right[1][1], left[1][0]]

    puts "#{floating[0]} #{floating[1]}_#{floating[2]}"
  end

  def self.spooney(first_word, second_word)
    first_replacement = first_word.split("")
    second_replacement = second_word.split("")

    spooned_first = first_word.tr first_replacement[0], second_replacement[0]
    spooned_second = second_word.tr second_replacement[0], first_replacement[0]

    "#{spooned_first} #{spooned_second}"
  end

  def self.transpile(file_name, file_contents)
    new_file = <<-TRANSPILE
    #{file_contents}
    TRANSPILE

    File.open(file_contents, "w") { |f|
      f.puts new_file
    }
  end

  # The collission between floating fingers and spoonerisms.
  def self.ocasbesce(a, b, c, d, file_name) # ocaoh_sbeliskr
    if a.nil?
      puts "Erreur: Il y es ne ocasbesce de [A]."
    end

    if b.nil?
      puts "Erreur: Il y es ne ocasbesce de [B]."
    end

    if c.nil?
      puts "Erreur: Il y es ne ocasbesce de [C]."
    end

    if d.nil?
      puts "Erreur: Il y es ne ocasbesce de [D]."
    end

    new_finger = floating_finger(spooney(a, b), spooney(c, d))

    Filters.transpile(file_name, new_finger)
  end

  def self.cana_sunos(a, b, c, d, file_name)
    if a.nil?
      puts "Erreur: Il y es ne ocasbesce de [A]."
    end

    if b.nil?
      puts "Erreur: Il y es ne ocasbesce de [B]."
    end

    if c.nil?
      puts "Erreur: Il y es ne ocasbesce de [C]."
    end

    if d.nil?
      puts "Erreur: Il y es ne ocasbesce de [D]."
    end

    new_finger = floating_finger(spooney(a, b), spooney(c, d))

    Filters.transpile(file_name, new_finger)
  end

  def self.ocatfasba(a, b, c, d, file_name)
    if a.nil?
      puts "Erreur: Il y es ne ocasbesce de [A]."
    end

    if b.nil?
      puts "Erreur: Il y es ne ocasbesce de [B]."
    end

    if c.nil?
      puts "Erreur: Il y es ne ocasbesce de [C]."
    end

    if d.nil?
      puts "Erreur: Il y es ne ocasbesce de [D]."
    end

    new_finger = floating_finger(spooney(a, b), spooney(c, d))

    Filters.transpile(file_name, new_finger)
  end
end

class MatrixTypes
  macro dmatrice(name, content)
    def {{name}}
      {{content}}
    end
  end

  dmatrice self.level_three(a, b, c), [[[a, a, a], [a, a, b], [a, a, c]], [[b, b, a], [b, b, b], [b, b, c]], [[c, c, a], [c, c, b], [c, c, c]]]

  dmatrice self.level_six(a, b, c, d, e, f), [[[[a, a, a, a, a, a], [a, a, a, a, a, e], [a, a, a, a, a, b], [a, a, a, a, a, d], [a, a, a, a, a, f], [a, a, a, a, a, c]], [[e, e, e, e, e, a], [e, e, e, e, e, e], [e, e, e, e, e, b], [e, e, e, e, e, d], [e, e, e, e, e, f], [e, e, e, e, e, c]], [[b, b, b, b, b, a], [b, b, b, b, b, e], [b, b, b, b, b, b], [b, b, b, b, b, d], [b, b, b, b, b, f], [b, b, b, b, b, c]], [[d, d, d, d, d, a], [d, d, d, d, d, e], [d, d, d, d, d, b], [d, d, d, d, d, d], [d, d, d, d, d, f], [d, d, d, d, d, c]], [[f, f, f, f, f, a], [f, f, f, f, f, e], [f, f, f, f, f, b], [f, f, f, f, f, d], [f, f, f, f, f, f], [f, f, f, f, f, c]], [[c, c, c, c, c, a], [c, c, c, c, c, e], [c, c, c, c, c, b], [c, c, c, c, c, d], [c, c, c, c, c, f], [c, c, c, c, c, c]]]]

  dmatrice self.level_eg(a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2), [[ [ a1, e1, b1, d1, f1, c1 ], [ e1, b1, d1, f1, c1, a1 ], [ b1, d1, f1, c1, a1, e1 ], [ d1, f1, c1, a1, e1, b1 ], [ f1, c1, a1, b1, d1, e1 ], [ c1, a1, e1, b1, d1, f1 ], ], [ [ a2, e2, b2, d2, f2, c2 ], [ e2, b2, d2, f2, c2, a2 ], [ b2, d2, f2, c2, a2, e2 ], [ d2, f2, c2, a2, e2, b2 ], [ f2, c2, a2, b2, d2, e2 ], [ c2, a2, e2, b2, d2, f2 ], ]]

  ## Specialized Models
  dmatrice self.nuitmarcheuse(n, i, g, h, t, w, a, l, k, e, r, b, c, d, f, j, m, o, p, q, s, u, v), [[[n, i, g], [e, r, a], [j, k, m], [h, t, w], [b, c, d], [o, p, q], [a, l, k], [e, f, g], [s, u, v]], [[j, k, m], [n, i, g], [e, r, a], [o, p, q], [h, t, w], [b, c, d], [s, u, v], [a, l, k], [e, f, g]], [[e, r, a], [j, k, m], [n, i, g], [b, c, d], [o, p, q], [h, t, w], [e, f, g], [s, u, v], [a, l, k]]]
end

class SelectorTypes
  macro selector_set(name, content)
    def {{name}}
      {{content}}
    end
  end

  # Basic Selectors
  selector_set self.row1(a, b, c), [a, b, c].sample
  selector_set self.col1(a, b, c), [a, b, c].sample
  selector_set self.arr1(a, b, c), [a, b, c].sample

  # Basic Two
  selector_set self.row2(a, b, c, d, e, f), [a, b, c, d, e, f].sample
  selector_set self.col2(a, b, c, d, e, f), [a, b, c, d, e, f].sample
  selector_set self.arr2(a, b, c, d, e, f), [a, b, c, d, e, f].sample

  # Edge Cases
  selector_set self.row3(a, b, c, d, e, f), [a, b, c, d, e, f].sample
  selector_set self.col3(a, b, c, d, e, f), [a, b, c, d, e, f].sample
end

## Inferences are based on five followup questions.
class TreeStructure
  def self.inference(p, *kwargs)
    q = kwargs[0]

    case p
    when -0.0003..0.1250; puts q[0]
    when  0.1260..0.3330; puts q[1]
    when  0.3331..0.5659; puts q[2]
    when  0.5660..0.7500; puts q[3]
    when  0.7501..0.9999; puts q[4]
    else
      " [ I'm not sure the right question to ask. ]"
    end
  end
end

class ReinforcementStructures
  def self.loss
    current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
    current_information = File.read("data/statistics/label/current_information.txt")

    if current_probability > 0.999999999999999999
      current_probability = 0.9 / current_probability
    end
  
    case current_probability
    when 0.003921569000000000..0.287225000000000000
      "Im confident it is not [ #{current_information} ] as its only #{current_probability}."
    when 0.287225000000000001..0.522225000000000000
      "Im less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
    when 0.522225000000000001..0.756112500000000000
      "Im almost sure it is [ #{current_information} ] because it has #{current_probability}."
    when 0.756112500000000001..0.999999999999999999
      "Im sure it is [ #{current_information} ] after all it has #{current_probability}."

    else
      "The probability is either to low or to large, so I cant determine exactly."
    end
  
    current_probability    = current_probability * 0.95
  
    File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
    File.write("data/statistics/label/current_information.txt",       current_information)
  end

  def self.gain
    current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
    current_information = File.read("data/statistics/label/current_information.txt")

    if current_probability > 0.999999999999999999
      current_probability = 0.9 / current_probability
    end
  
    case current_probability
    when 0.003921569000000000..0.287225000000000000
      "Im confident it is not [ #{current_information} ] as its only #{current_probability}."
    when 0.287225000000000001..0.522225000000000000
      "Im less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
    when 0.522225000000000001..0.756112500000000000
      "Im almost sure it is [ #{current_information} ] because it has #{current_probability}."
    when 0.756112500000000001..0.999999999999999999
      "Im sure it is [ #{current_information} ] after all it has #{current_probability}."

    else
      "The probability is either to low or to large, so I cant determine exactly."
    end
  
    current_probability    = current_probability + 0.15
  
    File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
    File.write("data/statistics/label/current_information.txt",       current_information)
  end

  def self.dynamic_guillotine_allocation
    l1_reasses = "level one reasses"
    l2_reasses = "level two reasses"
    l3_reasses = "level tre reasses"
    l4_reasses = "level fro reasses"

    reward_model = [
      [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
       [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
       [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
       [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
      [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
       [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
       [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
       [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
      [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
       [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
       [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
       [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
      [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
       [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
       [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
       [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
    ]

    row_options = [0, 1, 2, 3]
    col_options = [0, 1, 2, 3]
    arr_options = [0, 1, 2, 3]

    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample

    current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

    if    current_reward_structure == l1_reasses;            ReinforcementStructures.loss
    elsif current_reward_structure == l2_reasses; 2.times do ReinforcementStructures.loss end
    elsif current_reward_structure == l3_reasses; 3.times do ReinforcementStructures.loss end
    elsif current_reward_structure == l4_reasses; 4.times do ReinforcementStructures.loss end
    else
      ReinforcementStructures.loss
    end
  end

  def self.dynamic_reward_allocation
    l1_reasses = "level one reasses"
    l2_reasses = "level two reasses"
    l3_reasses = "level tre reasses"
    l4_reasses = "level fro reasses"

    reward_model = [
      [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
       [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
       [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
       [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
      [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
       [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
       [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
       [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
      [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
       [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
       [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
       [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
      [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
       [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
       [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
       [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
    ]

    row_options = [0, 1, 2, 3]
    col_options = [0, 1, 2, 3]
    arr_options = [0, 1, 2, 3]

    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample

    current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

    if    current_reward_structure == l1_reasses;            ReinforcementStructures.gain
    elsif current_reward_structure == l2_reasses; 2.times do ReinforcementStructures.gain end
    elsif current_reward_structure == l3_reasses; 3.times do ReinforcementStructures.gain end
    elsif current_reward_structure == l4_reasses; 4.times do ReinforcementStructures.gain end
    else
      ReinforcementStructures.gain
    end
  end

  def self.dynamic_mode_switcher
    modes = [
      [["deposit", "deposit"], ["deposit", "extract"]],
      [["extract", "deposit"], ["extract", "extract"]],
    ]
  
    row_options = [0, 1]
    col_options = [0, 1]
    arr_options = [0, 1]

    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample

    current_mode = modes[cur_row][cur_col][cur_arr]

    if    current_mode == "deposit"; ReinforcementStructures.dynamic_reward_allocation
    elsif current_mode == "extract"; ReinforcementStructures.dynamic_guillotine_allocation
    else
      ReinforcementStructures.dynamic_guillotine_allocation
    end
  end
end

class BoundaryConditions
  # But that
  def cemasi(*args)
    that_label,      that_discrete,
    but_that_label,  but_that_discrete,
    otherwise_label, otherwise_discrete = args

    x, y, z = that_discrete, but_that_discrete, otherwise_discrete

    if    x > 80
      puts "#{that_label} is above the threshold as #{that_discrete}."
    elsif x < 20
      puts "#{that_label} is below the threshold as #{that_discrete}."
    else
      puts "#{that_label} is in an ambiguous state at #{that_discrete}."
    end

    if    y > 80
      puts "#{but_that_label} is above the threshold as #{but_that_discrete}."
    elsif y < 20
      puts "#{but_that_label} is below the threshold as #{but_that_discrete}."
    else
      puts "#{but_that_label} is in an ambiguous state at #{but_that_discrete}."
    end

    if    z > 80
      puts "#{otherwise_label} is above the threshold as #{otherwise_discrete}."
    elsif z < 20
      puts "#{otherwise_label} is below the threshold as #{otherwise_discrete}."
    else
      puts "#{otherwise_label} is in an ambiguous state at #{otherwise_discrete}."
    end
  end

  # Course graining / Wasei-Eigo: But that ( probabilistic )
  def soshika(*args)
    that_label,      that_discrete,
    but_that_label,  but_that_discrete,
    otherwise_label, otherwise_discrete = args

    x, y, z = that_discrete, but_that_discrete, otherwise_discrete

    if    x > 0.80
      puts "#{that_label} is above the threshold as #{that_discrete}."
    elsif x < 0.20
      puts "#{that_label} is below the threshold as #{that_discrete}."
    else
      puts "#{that_label} is in an ambiguous state at #{that_discrete}."
    end

    if    y > 0.80
      puts "#{but_that_label} is above the threshold as #{but_that_discrete}."
    elsif y < 0.20
      puts "#{but_that_label} is below the threshold as #{but_that_discrete}."
    else
      puts "#{but_that_label} is in an ambiguous state at #{but_that_discrete}."
    end

    if    z > 0.80
      puts "#{otherwise_label} is above the threshold as #{otherwise_discrete}."
    elsif z < 0.20
      puts "#{otherwise_label} is below the threshold as #{otherwise_discrete}."
    else
      puts "#{otherwise_label} is in an ambiguous state at #{otherwise_discrete}."
    end
  end
end

###################################################################################################
#                                   Dynamic Enemy Stat Allocation                                 #
###################################################################################################
class MetricsOfAnalyticIncrementDiagnostics
  macro stat_display(name, content)
    def {{name}}
      {{content}}
    end
  end

  macro set_enemy_stats(name, content)
    def {{name}}
      {{content}}
    end
  end

  # Assymetric battle counters
  stat_display self.lure_count(lures, character_name), puts "#{character_name} has deceptively mimmicked #{lures} times."
  stat_display self.stun_count(stuns, character_name), puts "#{character_name} has stunned #{stuns} times."
  stat_display self.trap_count(traps, character_name), puts "#{character_name} has trapped #{lures} times."

  # Standard battle counters
  stat_display self.epee_count(epees, character_name), puts "#{character_name} has stabbbed #{epees} times."
  stat_display self.ishi_count(ishis, character_name), puts "#{character_name} has stabbbed #{ishis} times."
  stat_display self.bache_count(baches, character_name), puts "#{character_name} has stabbbed #{baches} times."

  # Dynamically adjusts enemy stats
  set_enemy_stats   enemy_hp(enemy_level, player_hp, percent_increment),  (player_hp * ( player_hp * percent_increment )) * enemy_level
  set_enemy_stats enemy_atk(enemy_level, player_atk, percent_increment), (player_atk * ( player_atk * percent_increment )) * enemy_level
  set_enemy_stats enemy_def(enemy_level, player_def, percent_increment), (player_def * ( player_def * percent_increment )) * enemy_level
end
