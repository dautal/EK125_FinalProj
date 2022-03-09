russia_emis = zeros(2, 267);
russia_emis(1, :) = emission1(1, 2:end);
russia_emis(2, :) = emission1(174, 2:end);
for i = 1:267
    if (russia_emis(2, i) == 0)
        russia_emis(2, i) = NaN;
    end
end

x = russia_emis(1,:);
y = russia_emis(2,:);
plot(x,y)
title('Russia Emissions')
xlabel('Year')
ylabel('CO2 Emissions (in tonnes)')