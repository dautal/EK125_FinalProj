uk_emis = zeros(2, 267);
uk_emis(1, :) = emission1(1, 2:end);
uk_emis(2, :) = emission1(221, 2:end);
for i = 1:267
    if (uk_emis(2, i) == 0)
        uk_emis(2, i) = NaN;
    end
end

x = uk_emis(1,:);
y = uk_emis(2,:);
plot(x,y)
title('United Kingdom Emissions')
xlabel('Year')
ylabel('CO2 Emissions (in tonnes)')