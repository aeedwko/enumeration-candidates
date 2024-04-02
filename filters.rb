# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    # Your code Here
    @candidates.each do |candidate|
      if candidate[:id] == id
        return candidate
      end
    end

    return nil
  end
  
  def experienced?(candidate)
    # Your code Here
    candidate[:years_of_experience] >= 2
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    array = []
    candidates.each do | candidate |
      if experienced?(candidate) && 
         ruby_or_python?(candidate) && 
         github_points_more_than_100?(candidate) && 
         date_applied_last_15_days?(candidate) && 
         age_over_17?(candidate)
        array << candidate
      end
    end

    return array
  end
  
  # More methods will go below

  def ruby_or_python?(candidate)
    candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")
  end

  def github_points_more_than_100?(candidate) 
    candidate[:github_points] >= 100
  end

  def date_applied_last_15_days?(candidate)
    candidate[:date_applied] >= 15.days.ago.to_date
  end

  def age_over_17?(candidate) 
    candidate[:age] > 17
  end

  def ordered_by_qualifications(candidates)
    sorted_candidates = candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]]}
  end