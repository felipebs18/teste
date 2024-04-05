-- Aviso de que o LipeHub foi executado
warn("LipeHub foi executado!")

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player.PlayerGui

local function fruitsEspFunction()
    print("Fruits/Esp executada")
    -- Aqui você pode adicionar o código para manipular a aba Fruits/Esp
end

local function bossStoneFunction()
    print("Boss Stone selecionado")
    -- Voar até o Boss Stone
    flyToBoss("Boss Stone")
end

local function bossIslandEmpressFunction()
    print("Boss Island Empress selecionado")
    -- Voar até o Boss Island Empress
    flyToBoss("Boss Island Empress")
end

local function bossKiloAdmirialFunction()
    print("Boss Kilo Admirial selecionado")
    -- Voar até o Boss Kilo Admirial
    flyToBoss("Boss Kilo Admirial")
end

local function bossCaptainElephantFunction()
    print("Boss Captain Elephant selecionado")
    -- Voar até o Boss Captain Elephant
    flyToBoss("Boss Captain Elephant")
end

local function bossBeautifulPirateFunction()
    print("Boss Beautiful Pirate selecionado")
    -- Voar até o Boss Beautiful Pirate
    flyToBoss("Boss Beautiful Pirate")
end

local function bossLongmaFunction()
    print("Boss Longma selecionado")
    -- Voar até o Boss Longma
    flyToBoss("Boss Longma")
end

local function bossCakeQueenFunction()
    print("Boss Cake Queen selecionado")
    -- Voar até o Boss Cake Queen
    flyToBoss("Boss Cake Queen")
end

local function equipMelee()
    print("Melee selecionado")
    -- Equipar o estilo de luta Combat
    equipCombatStyle("Combat")
end

local function equipDarkStep()
    print("Dark Step selecionado")
    -- Equipar o estilo de luta Dark Stepe
    equipCombatStyle("Dark Stepe")
end

local function equipElectric()
    print("Electric selecionado")
    -- Equipar o estilo de luta Eletric
    equipCombatStyle("Electric")
end

local function equipWaterKungFu()
    print("Water Kung Fu selecionado")
    -- Equipar o estilo de luta Water Kung Fu
    equipCombatStyle("Water Kung Fu")
end

local function equipDragonBreath()
    print("Dragon Breath selecionado")
    -- Equipar o estilo de luta Dragon Breath
    equipCombatStyle("Dragon Breath")
end

local function equipSuperhuman()
    print("Superhuman selecionado")
    -- Equipar o estilo de luta Superhuman
    equipCombatStyle("Superhuman")
end

local function equipDeathStep()
    print("Death Step selecionado")
    -- Equipar o estilo de luta Death Step
    equipCombatStyle("Death Step")
end

local function equipSharkmanKarate()
    print("Sharkman Karate selecionado")
    -- Equipar o estilo de luta Sharkman Karate
    equipCombatStyle("Sharkman Karate")
end

local function equipElectricClaw()
    print("Electric Claw selecionado")
    -- Equipar o estilo de luta Eletric Claw
    equipCombatStyle("Electric Claw")
end

local function equipDragonTalon()
    print("Dragon Talon selecionado")
    -- Equipar o estilo de luta Dragon Talon
    equipCombatStyle("Dragon Talon")
end

local function equipGodhuman()
    print("Godhuman selecionado")
    -- Equipar o estilo de luta Godhuman
    equipCombatStyle("Godhuman")
end

local function equipSanguneArt()
    print("Sangune Art selecionado")
    -- Equipar o estilo de luta Sangune Art
    equipCombatStyle("Sangune Art")
end

local function equipSelectedGun()
    local equippedTool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
    if equippedTool then
        local equippedToolName = equippedTool.Name
        print("Arma equipada: " .. equippedToolName)
        -- Verificar se a arma equipada está na lista de armas de gun
        local gunWeapons = {"Slingshot", "Flintlock", "Musket", "Acidum Rifle", "Bizarre Rifle", "Cannon Refined Flintlock", "Refined Musket", "Refined Slingshot", "Bazooka", "Kabucha", "Serpent Bow", "Soul Guitar"}
        for _, weaponName in ipairs(gunWeapons) do
            if equippedToolName == weaponName then
                print("Arma " .. equippedToolName .. " selecionada")
                -- Aqui você pode adicionar a lógica para utilizar a arma
                return
            end
        end
        print("A arma equipada não está na lista de armas de Gun.")
    else
        print("Nenhuma arma equipada.")
    end
end

local function equipGun()
    print("Gun selecionado")
    -- Equipar a fruta Gun
    equipFruit("Gun")
end

local function createTab(text, func, posX)
    local tab = Instance.new("TextButton")
    tab.Size = UDim2.new(0, 100, 0, 50)
    tab.Position = UDim2.new(0, posX, 0, 0)
    tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tab.Text = text
    tab.Parent = gui
    tab.MouseButton1Click:Connect(func)
end

local function createDropDown(parent, list, posX, posY, buttonWidth, buttonHeight)
    local dropDownButton = Instance.new("TextButton")
    dropDownButton.Size = UDim2.new(0, buttonWidth, 0, buttonHeight)
    dropDownButton.Position = UDim2.new(0, posX, 0, posY)
    dropDownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dropDownButton.Text = parent.Name
    dropDownButton.Parent = gui

    local dropDownFrame = Instance.new("Frame")
    dropDownFrame.Size = UDim2.new(0, buttonWidth, 0, buttonHeight * #list)
    dropDownFrame.Position = UDim2.new(0, posX, 0, posY + buttonHeight)
    dropDownFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dropDownFrame.Visible = false
    dropDownFrame.Parent = gui

    dropDownButton.MouseButton1Click:Connect(function()
        dropDownFrame.Visible = not dropDownFrame.Visible
    end)

    for i, itemName in ipairs(list) do
        local itemButton = Instance.new("TextButton")
        itemButton.Size = UDim2.new(0, buttonWidth, 0, buttonHeight)
        itemButton.Position = UDim2.new(0, 0, 0, (i - 1) * buttonHeight)
        itemButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        itemButton.Text =
