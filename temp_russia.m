count = 0;
for i = 1:size(temp)
    if contains(temp(i), "Russia") && ...
            ( (contains(temp(i), "-01-01")) || (contains(temp(i), "-07-01")))
        count = count + 1;
    end
end
count = count/2;
russia_year_temp_jan = zeros((count),1);
russia_year_temp_jul = zeros((count),1);
ind_jan = 1;
ind_jul = 1;

    for j = 1:size(temp)
        if contains(temp(j), "Russia") 
                if (contains(temp(j), "-01-01")) 
                     if ((strlength(temp(j))) == 19) 
                            [date, rest] = strtok(temp(j), ',');
                            [avgtemp, rest2] = strtok(rest, ',');
                            [year, restdate] = strtok(date, '-');
                            [month, restdate2] = strtok(restdate, '-');
                            fixed_date = year + "." + month;
                            fixed_date1 = str2double(fixed_date);
                            russia_year_temp_jan(ind_jan, 1) = fixed_date1;
                            russia_year_temp_jan(ind_jan, 2) = NaN;
                            ind_jan = ind_jan + 1;
                    else
                            [date, rest] = strtok(temp(j), ',');
                            [avgtemp, rest2] = strtok(rest, ',');
                            [year, restdate] = strtok(date, '-');
                            [month, restdate2] = strtok(restdate, '-');
                            fixed_date = year + "." + month;
                            fixed_date1 = str2double(fixed_date);
                            russia_year_temp_jan(ind_jan, 1) = fixed_date1;
                            russia_year_temp_jan(ind_jan, 2) = str2double(avgtemp);
                            ind_jan = ind_jan + 1;
                     end
                elseif (contains(temp(j), "-07-01"))
                    if ((strlength(temp(j))) == 26) 
                            [date, rest] = strtok(temp(j), ',');
                            [avgtemp, rest2] = strtok(rest, ',');
                            [year, restdate] = strtok(date, '-');
                            [month, restdate2] = strtok(restdate, '-');
                            fixed_date = year + "." + month;
                            fixed_date1 = str2double(fixed_date);
                            russia_year_temp_jul(ind_jul, 1) = fixed_date1;
                            russia_year_temp_jul(ind_jul, 2) = NaN;
                            ind_jul = ind_jul + 1;
                    else
                            [date, rest] = strtok(temp(j), ',');
                            [avgtemp, rest2] = strtok(rest, ',');
                            [year, restdate] = strtok(date, '-');
                            [month, restdate2] = strtok(restdate, '-');
                            fixed_date = year + "." + month;
                            fixed_date1 = str2double(fixed_date);
                            russia_year_temp_jul(ind_jul, 1) = fixed_date1;
                            russia_year_temp_jul(ind_jul, 2) = str2double(avgtemp);
                            ind_jul = ind_jul + 1;
                    end
                end
        end
    end
    
x = russia_year_temp_jul(:, 1);
y = russia_year_temp_jul(:, 2);
subplot(1,2,1)
plot(x,y, 'b*')
title('Russia Temperature Change (July)')
xlabel('Year')
ylabel('Temperature (in °C)')


a = russia_year_temp_jan(:, 1);
b = russia_year_temp_jan(:, 2);
subplot(1,2,2)
plot(a,b, 'b*')
title('Russia Temperature Change (January)')
xlabel('Year')
ylabel('Temperature (in °C)')
        