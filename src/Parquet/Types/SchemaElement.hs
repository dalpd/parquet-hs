-- |
module Parquet.Types.SchemaElement where

------------------------------------------------------------------------------

import Data.Binary (Binary)
import Data.Int
import Data.Text
import GHC.Generics
import Parquet.Types.Common
import Parquet.Types.ConvertedType
import Parquet.Types.FieldRepetitionType
import Parquet.Types.LogicalType
import Pinch

------------------------------------------------------------------------------

-- |
data SchemaElement = SchemaElement
  { _SchemaElement_type :: Field 1 (Maybe Type),
    _SchemaElement_type_length :: Field 2 (Maybe Int32),
    _SchemaElement_repetition_type :: Field 3 (Maybe FieldRepetitionType),
    _SchemaElement_name :: Field 4 Text,
    _SchemaElement_num_children :: Field 5 (Maybe Int32),
    _SchemaElement_converted_type :: Field 6 (Maybe ConvertedType),
    _SchemaElement_scale :: Field 7 (Maybe Int32),
    _SchemaElement_precision :: Field 8 (Maybe Int32),
    _SchemaElement_field_id :: Field 9 (Maybe Int32),
    _SchemaElement_logicalType :: Field 10 (Maybe LogicalType)
  }
  deriving (Show, Eq, Generic, Pinchable, Binary)
