require 'concrete_holidays'
require 'concrete_holidays/calculations'
require 'concrete_holidays/thanksgiving'

RSpec.describe ConcreteHolidays::Thanksgiving do
  let(:holiday) { ConcreteHolidays::Thanksgiving }

  # http://en.wikipedia.org/wiki/Thanksgiving_%28United_States%29#Thanksgiving_dates_1942.E2.80.932099
  test_cases = [
   { day: 22, years: [1945, 1951, 1956, 1962, 1973, 1979, 1984, 1990, 2001, 2007, 2012, 2018, 2029, 2035, 2040, 2046, 2057, 2063, 2068, 2074, 2085, 2091, 2096] },
   { day: 23, years: [1944, 1950, 1961, 1967, 1972, 1978, 1989, 1995, 2000, 2006, 2017, 2023, 2028, 2034, 2045, 2051, 2056, 2062, 2073, 2079, 2084, 2090] },
   { day: 24, years: [1949, 1955, 1960, 1966, 1977, 1983, 1988, 1994, 2005, 2011, 2016, 2022, 2033, 2039, 2044, 2050, 2061, 2067, 2072, 2078, 2089, 2095] },
   { day: 25, years: [1943, 1948, 1954, 1965, 1971, 1976, 1982, 1993, 1999, 2004, 2010, 2021, 2027, 2032, 2038, 2049, 2055, 2060, 2066, 2077, 2083, 2088, 2094] },
   { day: 26, years: [1942, 1953, 1959, 1964, 1970, 1981, 1987, 1992, 1998, 2009, 2015, 2020, 2026, 2037, 2043, 2048, 2054, 2065, 2071, 2076, 2082, 2093, 2099] },
   { day: 27, years: [1947, 1952, 1958, 1969, 1975, 1980, 1986, 1997, 2003, 2008, 2014, 2025, 2031, 2036, 2042, 2053, 2059, 2064, 2070, 2081, 2087, 2092, 2098] },
   { day: 28, years: [1946, 1957, 1963, 1968, 1974, 1985, 1991, 1996, 2002, 2013, 2019, 2024, 2030, 2041, 2047, 2052, 2058, 2069, 2075, 2080, 2086, 2097] },
  ]

  test_cases.each do |test|
    test[:years].each do |year|
      it "calculates thanksgiving for #{year}" do
        expect(holiday.date(year)).to eq(Date.new(year,11,test[:day]))
      end
    end
  end
end
