#!/bin/bash

# Function to check if electric composter is available
function check_electric_composter() {
    read -p "Do you have an electric composter? (yes/no): " composter
    if [[ "$composter" == "yes" ]]; then
        return 0  # Electric composter is available
    else
        return 1  # Electric composter is not available
    fi
}

# Stage 1: Burn or Use Electric Composter
function stage_1() {
    echo "Stage 1: Burn Hazardous Inputs or Use Electric Composter"
    if check_electric_composter; then
        echo "Using the electric composter for shredding and pre-composting kitchen waste."
        echo "Proceed to Stage 2..."
        # Call Stage 2 here
    else
        echo "Burning hazardous materials like dried weeds, diseased garden waste, bones, and branches."
        echo "Collect charcoal (biochar) and wood ash for later use."
        echo "Proceed to Stage 2..."
        # Call Stage 2 here
    fi
}

# Stage 2: Reuse Bokashi Spray
function stage_2() {
    echo "Stage 2: Reuse Your Bokashi Spray (DIY EM Mix)"
    echo "Prepare your Bokashi spray with water, lemon juice, molasses, and sugar."
    echo "Leave cap loose and let it ferment in a warm, dark place."
    # Call Stage 3 here
}

# Stage 3: Bokashi Bin First Fermentation
function stage_3() {
    echo "Stage 3: Bokashi Bin – First Fermentation"
    echo "Fill your Bokashi bin with kitchen scraps (meat, seafood, bones, bread, dairy, fats, etc.)"
    echo "Add a handful of clay soil, charcoal, and ash from Stage 1."
    echo "Spray each layer with Bokashi solution."
    # Collect Bokashi leachate and move to Stage 4
    echo "Proceed to Stage 4..."
}

# Stage 4: Tumbling Compost Bin – Aerobic Breakdown
function stage_4() {
    echo "Stage 4: Tumbling Compost Bin – Aerobic Breakdown"
    if check_electric_composter; then
        echo "Transferring fermented Bokashi waste into tumbler bin."
        echo "Add garden waste (leaves, grass, etc.) and large amounts of brown material (untreated sawdust, dried leaves)."
        echo "Proceed to Stage 5..."
    else
        echo "Manually shredding and mixing compost material."
        echo "Proceed to Stage 5..."
    fi
}

# Stage 5: Aerobin or Curing Bin (with Lungs)
function stage_5() {
    echo "Stage 5: Aerobin or Curing Bin (with Lungs)"
    echo "Transfer compost to curing bin (Aerobin) for 2-3 months, ensuring proper moisture and aeration."
    echo "Check for even moisture and proper aeration during this time."
    # Proceed to Stage 6
}

# Stage 6: Worms or Crop Application
function stage_6() {
    echo "Stage 6: Worms or Crop Application"
    read -p "Do you have worms in your compost? (yes/no): " worms
    if [[ "$worms" == "yes" ]]; then
        echo "Feeding compost to worms to produce castings and enhance microbial activity."
    else
        echo "Applying finished compost directly to garden beds or crops."
    fi
}

# Start the composting process
echo "Welcome to Dan's Soil Alchemy composting process!"
stage_1
stage_2
stage_3
stage_4
stage_5
stage_6

echo "Composting process complete!"
