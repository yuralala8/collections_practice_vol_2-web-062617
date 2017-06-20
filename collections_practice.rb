def begins_with_r(name)
    name.all? do |word|
        word.start_with?("r")
    end
end

def contain_a(letter)
    letter.select do |a|
        a.include?("a")
        end
end

def first_wa(array)
    array.find {|x| x.to_s.start_with?("wa")}
end

def remove_non_strings(array)
    array.delete_if {|x| !(x.is_a?(String))}
end

def count_elements(arr)
    arr.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.
    map { |name, count| { :name=>name, :count=>count } }
end

def merge_data(arr1,arr2)
    merged =[]
    arr1.each_index do |i|
        arr2[0].keys.each do |name|
            merged << arr1[i].merge(arr2[0][name]) if name == arr1[i][:first_name]
        end
    end
    merged
end

def find_cool(cool)
    cool.select { |h| h[:temperature] == "cool"}
end

def organize_schools(schools)
    
    organized_schools = {}
    
    schools.each do |school, info|
        info.each do |key, value|
            if organized_schools[value] == nil
                organized_schools[value] = [school]
                else
                organized_schools[value] << school
                end
            end
        end

    
    organized_schools
    
end
