china_emis = zeros(2, 267);
china_emis(1, :) = emission1(1, 2:end);
china_emis(2, :) = emission1(47, 2:end);
for i = 1:267
    if (china_emis(2, i) == 0)
        china_emis(2, i) = NaN;
    end
end

x = china_emis(1,:);
y = china_emis(2,:);
plot(x,y)
title('China Emissions')
xlabel('Year')
ylabel('CO2 Emissions (in tonnes)')