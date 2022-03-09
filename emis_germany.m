germany_emis = zeros(2, 267);
germany_emis(1, :) = emission1(1, 2:end);
germany_emis(2, :) = emission1(85, 2:end);
for i = 1:267
    if (germany_emis(2, i) == 0)
        germany_emis(2, i) = NaN;
    end
end

x = germany_emis(1,:);
y = germany_emis(2,:);
plot(x,y)
title('Germany Emissions')
xlabel('Year')
ylabel('CO2 Emissions (in tonnes)')