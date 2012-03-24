{- -}

-- single layer in region
-- it's a tensor (3d matrix)
-- sequence memory: stores transitions between (spatial) SDRs.
-- many possible future inputs may be predicted at same time.
-- if next pattern doesn't match any of them: anomaly.
data Region = Region [Column]

-- each col connects to a subset of the input
data Column = Column [Cell]

-- each cell connects to others in region
data Cell = Cell [Connection]

-- SDR: info represented by small % of active neurons.
-- first thing region does: convert its input into an SDR.
-- actual inputs: miniscule fraction of possible.
-- match only portion of pattern, still significant.

-- cell output states:
--  + inactive
--  + active from feed-forward input
--  + active from lateral input (representing prediction)

-- dendrite segments:
--  + single shared dendrite segment per COLUMN of cells
--  + proximal: SP (feed-fwd input) operates on the shared dendrite segment
--  + lateral: TP operates on distal dendrite segments (one per cell)

-- synapses
--  + binary weight
--  + potential synapses
--  + permanence :: Ch

-- connectedness: btwn axon & dendrite
data Permanence = Perm1 | Perm2 | Perm3 | Perm4 | Perm5 | Perm6 | Perm7 | Perm8 | Perm9 | Perm10
     deriving (Eq, Show)
