india_emis = zeros(2, 267);
india_emis(1, :) = emission1(1, 2:end);
india_emis(2, :) = emission1(101, 2:end);
for i = 1:267
    if (india_emis(2, i) == 0)
        india_emis(2, i) = NaN;
    end
end

x = india_emis(1,:);
y = india_emis(2,:);
plot(x,y)
title('India Emissions')
xlabel('Year')
ylabel('CO2 Emissions (in tonnes)')