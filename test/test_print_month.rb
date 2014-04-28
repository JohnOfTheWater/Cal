require "minitest/autorun"
require "print_month"
require "print_months"

class TestPrintMonth < MiniTest::Unit::TestCase

  def test_print_month_class
    #skip("Skipping this test")
    actual = `./cal 02 1800`
    expected = <<-EOS
      February      
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 
EOS
    assert_equal expected, actual
  end

  def test_print_month_class
    #skip("Skipping this test")
    actual = `./cal 08 1980`
    expected = <<-EOS
       August       
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31 
EOS
    assert_equal expected, actual
  end

  def test_print_month_class_4_rows
    #skip("Skipping this test")
    actual = `./cal 1992`
    expected = <<-EOS
                            1992                            
     January               February               March         
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
          1  2  3  4                     1   1  2  3  4  5  6  7
 5  6  7  8  9 10 11   2  3  4  5  6  7  8   8  9 10 11 12 13 14
12 13 14 15 16 17 18   9 10 11 12 13 14 15  15 16 17 18 19 20 21
19 20 21 22 23 24 25  16 17 18 19 20 21 22  22 23 24 25 26 27 28
26 27 28 29 30 31     23 24 25 26 27 28 29  29 30 31            
                                                                
      April                  May                   June         
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
          1  2  3  4                  1  2      1  2  3  4  5  6
 5  6  7  8  9 10 11   3  4  5  6  7  8  9   7  8  9 10 11 12 13
12 13 14 15 16 17 18  10 11 12 13 14 15 16  14 15 16 17 18 19 20
19 20 21 22 23 24 25  17 18 19 20 21 22 23  21 22 23 24 25 26 27
26 27 28 29 30        24 25 26 27 28 29 30  28 29 30            
                      31                                        
       July                 August              September       
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
          1  2  3  4                     1         1  2  3  4  5
 5  6  7  8  9 10 11   2  3  4  5  6  7  8   6  7  8  9 10 11 12
12 13 14 15 16 17 18   9 10 11 12 13 14 15  13 14 15 16 17 18 19
19 20 21 22 23 24 25  16 17 18 19 20 21 22  20 21 22 23 24 25 26
26 27 28 29 30 31     23 24 25 26 27 28 29  27 28 29 30         
                      30 31                                     
     October               November              December       
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
             1  2  3   1  2  3  4  5  6  7         1  2  3  4  5
 4  5  6  7  8  9 10   8  9 10 11 12 13 14   6  7  8  9 10 11 12
11 12 13 14 15 16 17  15 16 17 18 19 20 21  13 14 15 16 17 18 19
18 19 20 21 22 23 24  22 23 24 25 26 27 28  20 21 22 23 24 25 26
25 26 27 28 29 30 31  29 30                 27 28 29 30 31      
                                                                
EOS
    assert_equal expected, actual
  end

  def test_print_month_class_2_rows
    #skip("Skipping this test")
    actual = `./cal r2 2000`
    expected = <<-EOS
                                                               2000                                                               
     January               February               March                 April                  May                   June         
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
                   1         1  2  3  4  5            1  2  3  4                     1      1  2  3  4  5  6               1  2  3
 2  3  4  5  6  7  8   6  7  8  9 10 11 12   5  6  7  8  9 10 11   2  3  4  5  6  7  8   7  8  9 10 11 12 13   4  5  6  7  8  9 10
 9 10 11 12 13 14 15  13 14 15 16 17 18 19  12 13 14 15 16 17 18   9 10 11 12 13 14 15  14 15 16 17 18 19 20  11 12 13 14 15 16 17
16 17 18 19 20 21 22  20 21 22 23 24 25 26  19 20 21 22 23 24 25  16 17 18 19 20 21 22  21 22 23 24 25 26 27  18 19 20 21 22 23 24
23 24 25 26 27 28 29  27 28 29              26 27 28 29 30 31     23 24 25 26 27 28 29  28 29 30 31           25 26 27 28 29 30   
30 31                                                             30                                                              
       July                 August              September              October               November              December       
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
                   1         1  2  3  4  5                  1  2   1  2  3  4  5  6  7            1  2  3  4                  1  2
 2  3  4  5  6  7  8   6  7  8  9 10 11 12   3  4  5  6  7  8  9   8  9 10 11 12 13 14   5  6  7  8  9 10 11   3  4  5  6  7  8  9
 9 10 11 12 13 14 15  13 14 15 16 17 18 19  10 11 12 13 14 15 16  15 16 17 18 19 20 21  12 13 14 15 16 17 18  10 11 12 13 14 15 16
16 17 18 19 20 21 22  20 21 22 23 24 25 26  17 18 19 20 21 22 23  22 23 24 25 26 27 28  19 20 21 22 23 24 25  17 18 19 20 21 22 23
23 24 25 26 27 28 29  27 28 29 30 31        24 25 26 27 28 29 30  29 30 31              26 27 28 29 30        24 25 26 27 28 29 30
30 31                                                                                                         31                  
EOS
    assert_equal expected, actual
  end

end

