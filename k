template = Image.open(template_path)
front_shirt = Image.open(front_shirt_path).convert("RGBA")
back_shirt = Image.open(back_shirt_path).convert("RGBA")

front_shirt_resized = front_shirt.resize((128, 128))  # Adjust size as needed
back_shirt_resized = back_shirt.resize((128, 128))  # Adjust size as needed

template.paste(front_shirt_resized, (300, 100), front_shirt_resized)  # Position for the front
template.paste(back_shirt_resized, (500, 100), back_shirt_resized)   # Position for the back

output_path = '/mnt/data/Roblox_Shirt_Design_v2.png'
template.save(output_path)

output_path
