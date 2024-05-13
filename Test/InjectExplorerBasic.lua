--!client
--Alternative Option

for _, Item in workspace:GetChildren() do
  pcall(function()
    if Item then
      print("[RTE]", Item.Name)
    end
  end)
end
