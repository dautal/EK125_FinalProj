us_emis = zeros(2, 267);
us_emis(1, :) = emission1(1, 2:end);
us_emis(2, :) = emission1(222, 2:end);
for i = 1:267
    if (us_emis(2, i) == 0)
        us_emis(2, i) = NaN;
    end
end

x = us_emis(1,:);
y = us_emis(2,:);
plot(x,y)
title('United States Emissions')
xlabel('Year')
ylabel('CO2 Emissions (in tonnes)')