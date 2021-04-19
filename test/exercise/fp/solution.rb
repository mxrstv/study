module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        result = array.select { |film| film['country'].to_s.split(',').size >= 2 } \
                      .reject { |film| film['rating_kinopoisk'].to_f.zero? }
        result.map { |film| film['rating_kinopoisk'].to_f }.reduce(:+) / result.size
      end

      def chars_count(films, threshold)
        films.reject { |film| film['rating_kinopoisk'].to_f < threshold } \
             .inject(0) { |sum, film| sum + film['name'].count('и') }
      end
    end
  end
end
