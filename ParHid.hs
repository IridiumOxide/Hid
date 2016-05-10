{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParHid where
import AbsHid
import LexHid
import ErrM
import qualified Data.Array as Happy_Data_Array
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

newtype HappyAbsSyn  = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn23 :: (MyIdent) -> (HappyAbsSyn )
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn ) -> (MyIdent)
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: (Program) -> (HappyAbsSyn )
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn ) -> (Program)
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: (Code) -> (HappyAbsSyn )
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn ) -> (Code)
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: (Function) -> (HappyAbsSyn )
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn ) -> (Function)
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: (Decl) -> (HappyAbsSyn )
happyIn27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn ) -> (Decl)
happyOut27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: ([Code]) -> (HappyAbsSyn )
happyIn28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn ) -> ([Code])
happyOut28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: ([Stm]) -> (HappyAbsSyn )
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> ([Stm])
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: ([Decl]) -> (HappyAbsSyn )
happyIn30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn ) -> ([Decl])
happyOut30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: ([MyIdent]) -> (HappyAbsSyn )
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> ([MyIdent])
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: ([Exp]) -> (HappyAbsSyn )
happyIn32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> ([Exp])
happyOut32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: (Stm) -> (HappyAbsSyn )
happyIn33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn ) -> (Stm)
happyOut33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: (Exp) -> (HappyAbsSyn )
happyIn34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn ) -> (Exp)
happyOut34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: (Exp) -> (HappyAbsSyn )
happyIn35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> (Exp)
happyOut35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (Exp) -> (HappyAbsSyn )
happyIn36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (Exp)
happyOut36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (Exp) -> (HappyAbsSyn )
happyIn37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> (Exp)
happyOut37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (Exp) -> (HappyAbsSyn )
happyIn38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (Exp)
happyOut38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (Exp) -> (HappyAbsSyn )
happyIn39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (Exp)
happyOut39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: (Exp) -> (HappyAbsSyn )
happyIn40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> (Exp)
happyOut40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut40 #-}
happyIn41 :: (Exp) -> (HappyAbsSyn )
happyIn41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn ) -> (Exp)
happyOut41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut41 #-}
happyIn42 :: (ArithAssignOp) -> (HappyAbsSyn )
happyIn42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn ) -> (ArithAssignOp)
happyOut42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut42 #-}
happyIn43 :: (Type) -> (HappyAbsSyn )
happyIn43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> (Type)
happyOut43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x00\x00\x6e\x00\x1a\x00\x1a\x00\x00\x00\x00\x00\x1a\x00\x6e\x01\x91\x00\x6e\x00\x91\x00\x91\x00\x91\x00\x91\x00\x91\x00\x07\x00\x05\x00\x05\x00\x2b\x00\x1a\x00\x6e\x01\x00\x00\x5a\x01\x00\x00\x00\x00\x5a\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5a\x01\x91\x00\x75\x01\x58\x01\x00\x00\x6b\x00\x58\x01\x00\x00\x57\x01\x57\x01\x55\x01\x00\x00\x91\x00\x91\x00\x91\x00\x91\x00\x02\x00\x00\x00\x0a\x00\x92\x00\x55\x01\x98\x00\x68\x02\x55\x01\x00\x00\x67\x01\x52\x01\x54\x01\x29\x01\x4d\x01\x4b\x01\x91\x00\x91\x00\x4a\x01\x00\x00\x26\x01\x3f\x01\x33\x01\x12\x01\x2d\x01\x00\x01\x01\x00\x01\x00\x00\x01\x00\x01\xee\x00\xff\x00\x00\x00\x00\x00\xed\x00\xd9\x00\x6e\x00\x00\x00\xe8\x00\xe8\x00\x00\x00\x1a\x00\xdb\x00\x91\x00\x49\x00\x91\x00\xda\x00\xc8\x00\x91\x00\x91\x00\x00\x00\x00\x00\x00\x00\x91\x00\x91\x00\x00\x00\x00\x00\x91\x00\x91\x00\x91\x00\x91\x00\x91\x00\x91\x00\x91\x00\x91\x00\x91\x00\x91\x00\x91\x00\x91\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd3\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2c\x00\x2c\x00\x2c\x00\x2c\x00\x2c\x00\x92\x00\x92\x00\x2c\x00\x00\x00\xb3\x00\x00\x00\xa5\x00\xb2\x00\x00\x00\x00\x00\x9e\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe9\xff\x9d\x00\x6e\x00\x6e\x00\x91\x00\x00\x00\x82\x00\x81\x00\x00\x00\x75\x00\x00\x00\x6e\x00\x91\x00\x83\x00\x00\x00\x24\x00\x00\x00\x6e\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x13\x00\xc4\x00\x19\x00\x50\x00\x79\x00\x71\x00\x6d\x02\x72\x00\x5c\x01\x49\x01\xeb\x01\xfe\x01\x3c\x02\x59\x02\x2c\x01\x3b\x00\x3f\x00\x04\x00\x63\x00\x5d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe3\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\x00\x55\x00\x00\x00\x00\x00\x19\x01\x06\x01\xf3\x00\xe0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x52\x00\x00\x00\x00\x00\xd0\x01\xc8\x01\x00\x00\x25\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x01\xb1\x00\x00\x00\x00\x00\x37\x00\x00\x00\x00\x00\x00\x00\x0d\x00\x00\x00\xb1\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5a\x02\x08\x00\x74\x00\x36\x01\xb5\x01\x00\x00\x00\x00\xad\x01\x9a\x01\x00\x00\x00\x00\x00\x00\x92\x01\x4f\x00\x00\x00\x00\x00\x7f\x01\x36\x02\x54\x02\x41\x02\x23\x02\x1d\x02\x17\x02\x04\x02\x51\x01\xcd\x00\xba\x00\x97\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x99\x00\x00\x00\x23\x01\x10\x01\x77\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfb\xff\xfd\x00\x64\x01\x00\x00\x00\x00\xea\x00\x00\x00\xd7\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xe5\xff\x00\x00\x00\x00\x00\x00\xe5\xff\xe3\xff\xe1\xff\x00\x00\xdc\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xeb\xff\x00\x00\xab\xff\xac\xff\x00\x00\xad\xff\xaf\xff\xb1\xff\xb0\xff\xae\xff\xb3\xff\x00\x00\x00\x00\xb3\xff\x00\x00\xb4\xff\xb3\xff\x00\x00\xb6\xff\x00\x00\x00\x00\x00\x00\xbb\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc0\xff\x00\x00\xc4\xff\x00\x00\xc7\xff\xb3\xff\x00\x00\xce\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe3\xff\x00\x00\xdb\xff\xde\xff\x00\x00\xe0\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe9\xff\xe8\xff\x00\x00\x00\x00\xea\xff\xe4\xff\xe6\xff\x00\x00\xe2\xff\xe1\xff\x00\x00\xdc\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe6\xff\xd8\xff\xd9\xff\x00\x00\xdc\xff\xb8\xff\xb7\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xbe\xff\xbf\xff\xbd\xff\xbc\xff\xb9\xff\xba\xff\x00\x00\xb2\xff\xc2\xff\xc3\xff\xc1\xff\xca\xff\xcc\xff\xc9\xff\xcb\xff\xcd\xff\xc5\xff\xc6\xff\xc8\xff\xd0\xff\x00\x00\xcf\xff\x00\x00\x00\x00\xd1\xff\xd5\xff\x00\x00\xd7\xff\xda\xff\xdd\xff\xdf\xff\xe1\xff\x00\x00\x00\x00\x00\x00\x00\x00\xb5\xff\x00\x00\xd4\xff\xd6\xff\x00\x00\xe3\xff\x00\x00\x00\x00\x00\x00\xd3\xff\x00\x00\xe7\xff\x00\x00\xd2\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x06\x00\x01\x00\x1a\x00\x00\x00\x03\x00\x05\x00\x1e\x00\x00\x00\x07\x00\x05\x00\x0a\x00\x05\x00\x00\x00\x0d\x00\x0e\x00\x08\x00\x0a\x00\x10\x00\x09\x00\x01\x00\x0e\x00\x12\x00\x0d\x00\x05\x00\x13\x00\x19\x00\x1a\x00\x03\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x01\x00\x25\x00\x26\x00\x26\x00\x05\x00\x25\x00\x06\x00\x25\x00\x14\x00\x0a\x00\x04\x00\x26\x00\x0d\x00\x0e\x00\x08\x00\x1a\x00\x09\x00\x0b\x00\x00\x00\x1e\x00\x0d\x00\x0f\x00\x00\x00\x11\x00\x19\x00\x1a\x00\x00\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x01\x00\x10\x00\x11\x00\x12\x00\x05\x00\x00\x00\x11\x00\x12\x00\x00\x00\x0a\x00\x04\x00\x00\x00\x0d\x00\x0e\x00\x09\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x19\x00\x1a\x00\x14\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x01\x00\x05\x00\x14\x00\x00\x00\x05\x00\x00\x00\x0a\x00\x13\x00\x06\x00\x0a\x00\x0e\x00\x08\x00\x0d\x00\x0e\x00\x09\x00\x05\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x19\x00\x1a\x00\x06\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x01\x00\x25\x00\x12\x00\x03\x00\x05\x00\x00\x00\x23\x00\x07\x00\x02\x00\x0a\x00\x1b\x00\x04\x00\x0d\x00\x0e\x00\x07\x00\x09\x00\x10\x00\x06\x00\x06\x00\x0d\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x19\x00\x13\x00\x14\x00\x14\x00\x16\x00\x17\x00\x18\x00\x00\x00\x21\x00\x02\x00\x03\x00\x04\x00\x25\x00\x12\x00\x06\x00\x06\x00\x00\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x14\x00\x02\x00\x03\x00\x04\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x14\x00\x06\x00\x12\x00\x04\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x14\x00\x12\x00\x05\x00\x04\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x14\x00\x26\x00\x25\x00\x04\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x14\x00\x25\x00\x25\x00\x04\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x14\x00\x26\x00\x26\x00\x04\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x14\x00\x26\x00\x0c\x00\x04\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0c\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x14\x00\x0c\x00\x26\x00\x04\x00\x25\x00\x05\x00\x05\x00\x00\x00\x05\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x14\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x09\x00\x12\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x26\x00\x12\x00\x05\x00\x26\x00\x25\x00\xff\xff\x26\x00\x00\x00\x26\x00\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x25\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\xff\xff\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\x04\x00\xff\xff\xff\xff\x07\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x04\x00\x05\x00\x14\x00\xff\xff\x08\x00\x04\x00\x0a\x00\x0b\x00\x07\x00\xff\xff\x0e\x00\x0f\x00\xff\xff\x11\x00\xff\xff\xff\xff\xff\xff\x15\x00\xff\xff\xff\xff\xff\xff\x14\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\xa2\x00\x2d\x00\x18\x00\x1f\x00\x72\x00\x22\x00\x19\x00\x45\x00\x73\x00\x22\x00\x29\x00\x22\x00\x55\x00\x2e\x00\x2a\x00\x91\x00\x29\x00\x74\x00\x6b\x00\x52\x00\x2a\x00\x20\x00\x6c\x00\x53\x00\x64\x00\x2f\x00\x18\x00\x4c\x00\x3e\x00\x3f\x00\x19\x00\x40\x00\x41\x00\x30\x00\x42\x00\x43\x00\x2d\x00\x16\x00\xff\xff\xff\xff\x22\x00\x16\x00\x5b\x00\x16\x00\x4d\x00\x29\x00\x1b\x00\xff\xff\x2e\x00\x2a\x00\x1c\x00\x18\x00\x6b\x00\x1d\x00\x56\x00\x19\x00\x6c\x00\x1e\x00\x25\x00\x1f\x00\x2f\x00\x18\x00\x22\x00\x3e\x00\x3f\x00\x19\x00\x40\x00\x41\x00\x30\x00\x42\x00\x43\x00\xa4\x00\x16\x00\x2d\x00\x26\x00\x27\x00\x24\x00\x22\x00\x36\x00\x23\x00\x24\x00\x61\x00\x29\x00\x4b\x00\x78\x00\x2e\x00\x2a\x00\x88\x00\x79\x00\x44\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x2f\x00\x18\x00\x3c\x00\x3e\x00\x3f\x00\x19\x00\x40\x00\x41\x00\x30\x00\x42\x00\x43\x00\x90\x00\x16\x00\x2d\x00\x66\x00\x16\x00\x45\x00\x22\x00\x36\x00\x67\x00\x19\x00\x49\x00\x29\x00\x68\x00\x46\x00\x2e\x00\x2a\x00\x90\x00\x4a\x00\x44\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x2f\x00\x18\x00\xa5\x00\x3e\x00\x3f\x00\x19\x00\x40\x00\x41\x00\x30\x00\x42\x00\x43\x00\x2d\x00\x16\x00\xa0\x00\x72\x00\x22\x00\x25\x00\x9e\x00\x73\x00\x6a\x00\x29\x00\x9f\x00\x47\x00\x2e\x00\x2a\x00\x94\x00\x6b\x00\x74\x00\x9d\x00\x96\x00\x6c\x00\x7c\x00\x2b\x00\x27\x00\x24\x00\x2f\x00\x6d\x00\x6e\x00\x3c\x00\x6f\x00\x70\x00\x71\x00\x36\x00\x30\x00\x54\x00\x4f\x00\x39\x00\x16\x00\x98\x00\x97\x00\x99\x00\x25\x00\x50\x00\x3b\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x51\x00\x4e\x00\x4f\x00\x39\x00\x7d\x00\x2b\x00\x27\x00\x24\x00\x25\x00\x50\x00\x3b\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x51\x00\x7c\x00\x8d\x00\x39\x00\x7e\x00\x2b\x00\x27\x00\x24\x00\x25\x00\xa5\x00\x3b\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x3c\x00\x8e\x00\x94\x00\x39\x00\x74\x00\x2b\x00\x27\x00\x24\x00\x25\x00\x57\x00\x3b\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x3c\x00\xff\xff\x16\x00\x39\x00\x75\x00\x2b\x00\x27\x00\x24\x00\x25\x00\xa1\x00\x3b\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x3c\x00\x16\x00\x16\x00\x39\x00\x76\x00\x2b\x00\x27\x00\x24\x00\x25\x00\x9a\x00\x3b\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x3c\x00\xff\xff\xff\xff\x39\x00\x77\x00\x2b\x00\x27\x00\x24\x00\x25\x00\x9b\x00\x3b\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x3c\x00\xff\xff\x59\x00\x39\x00\x2a\x00\x2b\x00\x27\x00\x24\x00\x5a\x00\x57\x00\x3b\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x3c\x00\x5b\x00\xff\xff\x39\x00\x16\x00\x5d\x00\x60\x00\x25\x00\x61\x00\x3a\x00\x3b\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x3c\x00\x7f\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x43\x00\x63\x00\x44\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\xa0\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\xff\xff\x64\x00\x66\x00\xff\xff\x16\x00\x00\x00\xff\xff\x36\x00\xff\xff\x00\x00\x99\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x87\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x16\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x00\x00\x00\x00\x00\x89\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x8a\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x00\x00\x00\x00\x00\x8b\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x8e\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x00\x00\x00\x00\x00\x5d\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x5e\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x36\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x00\x00\x00\x00\x00\x7a\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x37\x00\x38\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x25\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x25\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x34\x00\x35\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x80\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x25\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x25\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x25\x00\x81\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x82\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x83\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x25\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x25\x00\x00\x00\x00\x00\x00\x00\x00\x00\x25\x00\x00\x00\x86\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x32\x00\x33\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x84\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x25\x00\x00\x00\x00\x00\x00\x00\x00\x00\x25\x00\x00\x00\x00\x00\x00\x00\x00\x00\x47\x00\x00\x00\x00\x00\x92\x00\x85\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x30\x00\x31\x00\x2b\x00\x27\x00\x24\x00\x1b\x00\x66\x00\x3c\x00\x00\x00\x1c\x00\x47\x00\x67\x00\x1d\x00\x48\x00\x00\x00\x68\x00\x1e\x00\x00\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x69\x00\x00\x00\x00\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (20, 84) [
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74),
	(75 , happyReduce_75),
	(76 , happyReduce_76),
	(77 , happyReduce_77),
	(78 , happyReduce_78),
	(79 , happyReduce_79),
	(80 , happyReduce_80),
	(81 , happyReduce_81),
	(82 , happyReduce_82),
	(83 , happyReduce_83),
	(84 , happyReduce_84)
	]

happy_n_terms = 39 :: Int
happy_n_nonterms = 21 :: Int

happyReduce_20 = happySpecReduce_1  0# happyReduction_20
happyReduction_20 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_MyIdent happy_var_1)) -> 
	happyIn23
		 (MyIdent (happy_var_1)
	)}

happyReduce_21 = happySpecReduce_1  1# happyReduction_21
happyReduction_21 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn24
		 (AbsHid.Prog (reverse happy_var_1)
	)}

happyReduce_22 = happySpecReduce_1  2# happyReduction_22
happyReduction_22 happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	happyIn25
		 (AbsHid.FCode happy_var_1
	)}

happyReduce_23 = happySpecReduce_1  2# happyReduction_23
happyReduction_23 happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn25
		 (AbsHid.SCode happy_var_1
	)}

happyReduce_24 = happyReduce 8# 3# happyReduction_24
happyReduction_24 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut43 happy_x_1 of { happy_var_1 -> 
	case happyOut23 happy_x_2 of { happy_var_2 -> 
	case happyOut30 happy_x_4 of { happy_var_4 -> 
	case happyOut29 happy_x_7 of { happy_var_7 -> 
	happyIn26
		 (AbsHid.Fun happy_var_1 happy_var_2 happy_var_4 (reverse happy_var_7)
	) `HappyStk` happyRest}}}}

happyReduce_25 = happySpecReduce_2  4# happyReduction_25
happyReduction_25 happy_x_2
	happy_x_1
	 =  case happyOut43 happy_x_1 of { happy_var_1 -> 
	case happyOut23 happy_x_2 of { happy_var_2 -> 
	happyIn27
		 (AbsHid.Dec happy_var_1 happy_var_2
	)}}

happyReduce_26 = happySpecReduce_0  5# happyReduction_26
happyReduction_26  =  happyIn28
		 ([]
	)

happyReduce_27 = happySpecReduce_2  5# happyReduction_27
happyReduction_27 happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { happy_var_2 -> 
	happyIn28
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_28 = happySpecReduce_0  6# happyReduction_28
happyReduction_28  =  happyIn29
		 ([]
	)

happyReduce_29 = happySpecReduce_2  6# happyReduction_29
happyReduction_29 happy_x_2
	happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	case happyOut33 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_30 = happySpecReduce_0  7# happyReduction_30
happyReduction_30  =  happyIn30
		 ([]
	)

happyReduce_31 = happySpecReduce_1  7# happyReduction_31
happyReduction_31 happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	happyIn30
		 ((:[]) happy_var_1
	)}

happyReduce_32 = happySpecReduce_3  7# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	case happyOut30 happy_x_3 of { happy_var_3 -> 
	happyIn30
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_33 = happySpecReduce_1  8# happyReduction_33
happyReduction_33 happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn31
		 ((:[]) happy_var_1
	)}

happyReduce_34 = happySpecReduce_3  8# happyReduction_34
happyReduction_34 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut31 happy_x_3 of { happy_var_3 -> 
	happyIn31
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_35 = happySpecReduce_0  9# happyReduction_35
happyReduction_35  =  happyIn32
		 ([]
	)

happyReduce_36 = happySpecReduce_1  9# happyReduction_36
happyReduction_36 happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 ((:[]) happy_var_1
	)}

happyReduce_37 = happySpecReduce_3  9# happyReduction_37
happyReduction_37 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_38 = happySpecReduce_2  10# happyReduction_38
happyReduction_38 happy_x_2
	happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	happyIn33
		 (AbsHid.SDecl happy_var_1
	)}

happyReduce_39 = happySpecReduce_2  10# happyReduction_39
happyReduction_39 happy_x_2
	happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	happyIn33
		 (AbsHid.SExp happy_var_1
	)}

happyReduce_40 = happySpecReduce_3  10# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut29 happy_x_2 of { happy_var_2 -> 
	happyIn33
		 (AbsHid.SBlock (reverse happy_var_2)
	)}

happyReduce_41 = happyReduce 5# 10# happyReduction_41
happyReduction_41 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut34 happy_x_3 of { happy_var_3 -> 
	case happyOut33 happy_x_5 of { happy_var_5 -> 
	happyIn33
		 (AbsHid.SWhile happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_42 = happySpecReduce_3  10# happyReduction_42
happyReduction_42 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut34 happy_x_2 of { happy_var_2 -> 
	happyIn33
		 (AbsHid.SReturn happy_var_2
	)}

happyReduce_43 = happyReduce 5# 10# happyReduction_43
happyReduction_43 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut34 happy_x_3 of { happy_var_3 -> 
	case happyOut33 happy_x_5 of { happy_var_5 -> 
	happyIn33
		 (AbsHid.SIf happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_44 = happyReduce 7# 10# happyReduction_44
happyReduction_44 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut34 happy_x_3 of { happy_var_3 -> 
	case happyOut33 happy_x_5 of { happy_var_5 -> 
	case happyOut33 happy_x_7 of { happy_var_7 -> 
	happyIn33
		 (AbsHid.SIfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest}}}

happyReduce_45 = happyReduce 9# 10# happyReduction_45
happyReduction_45 (happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut34 happy_x_3 of { happy_var_3 -> 
	case happyOut34 happy_x_5 of { happy_var_5 -> 
	case happyOut34 happy_x_7 of { happy_var_7 -> 
	case happyOut33 happy_x_9 of { happy_var_9 -> 
	happyIn33
		 (AbsHid.SFor happy_var_3 happy_var_5 happy_var_7 happy_var_9
	) `HappyStk` happyRest}}}}

happyReduce_46 = happySpecReduce_3  10# happyReduction_46
happyReduction_46 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut34 happy_x_2 of { happy_var_2 -> 
	happyIn33
		 (AbsHid.SPrt happy_var_2
	)}

happyReduce_47 = happySpecReduce_3  11# happyReduction_47
happyReduction_47 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut34 happy_x_3 of { happy_var_3 -> 
	happyIn34
		 (AbsHid.EAss happy_var_1 happy_var_3
	)}}

happyReduce_48 = happySpecReduce_3  11# happyReduction_48
happyReduction_48 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut42 happy_x_2 of { happy_var_2 -> 
	case happyOut34 happy_x_3 of { happy_var_3 -> 
	happyIn34
		 (AbsHid.EArAss happy_var_1 happy_var_2 happy_var_3
	)}}}

happyReduce_49 = happySpecReduce_1  11# happyReduction_49
happyReduction_49 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 (happy_var_1
	)}

happyReduce_50 = happySpecReduce_3  12# happyReduction_50
happyReduction_50 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut36 happy_x_3 of { happy_var_3 -> 
	happyIn35
		 (AbsHid.ELt happy_var_1 happy_var_3
	)}}

happyReduce_51 = happySpecReduce_3  12# happyReduction_51
happyReduction_51 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut36 happy_x_3 of { happy_var_3 -> 
	happyIn35
		 (AbsHid.EGt happy_var_1 happy_var_3
	)}}

happyReduce_52 = happySpecReduce_3  12# happyReduction_52
happyReduction_52 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut36 happy_x_3 of { happy_var_3 -> 
	happyIn35
		 (AbsHid.ELe happy_var_1 happy_var_3
	)}}

happyReduce_53 = happySpecReduce_3  12# happyReduction_53
happyReduction_53 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut36 happy_x_3 of { happy_var_3 -> 
	happyIn35
		 (AbsHid.EGe happy_var_1 happy_var_3
	)}}

happyReduce_54 = happySpecReduce_3  12# happyReduction_54
happyReduction_54 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut36 happy_x_3 of { happy_var_3 -> 
	happyIn35
		 (AbsHid.EEq happy_var_1 happy_var_3
	)}}

happyReduce_55 = happySpecReduce_3  12# happyReduction_55
happyReduction_55 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut36 happy_x_3 of { happy_var_3 -> 
	happyIn35
		 (AbsHid.ENeq happy_var_1 happy_var_3
	)}}

happyReduce_56 = happySpecReduce_1  12# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn35
		 (happy_var_1
	)}

happyReduce_57 = happySpecReduce_3  13# happyReduction_57
happyReduction_57 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut37 happy_x_3 of { happy_var_3 -> 
	happyIn36
		 (AbsHid.EAdd happy_var_1 happy_var_3
	)}}

happyReduce_58 = happySpecReduce_3  13# happyReduction_58
happyReduction_58 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut37 happy_x_3 of { happy_var_3 -> 
	happyIn36
		 (AbsHid.ESub happy_var_1 happy_var_3
	)}}

happyReduce_59 = happySpecReduce_1  13# happyReduction_59
happyReduction_59 happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn36
		 (happy_var_1
	)}

happyReduce_60 = happySpecReduce_3  14# happyReduction_60
happyReduction_60 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn37
		 (AbsHid.EMul happy_var_1 happy_var_3
	)}}

happyReduce_61 = happySpecReduce_3  14# happyReduction_61
happyReduction_61 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn37
		 (AbsHid.EDiv happy_var_1 happy_var_3
	)}}

happyReduce_62 = happySpecReduce_3  14# happyReduction_62
happyReduction_62 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn37
		 (AbsHid.EMod happy_var_1 happy_var_3
	)}}

happyReduce_63 = happySpecReduce_1  14# happyReduction_63
happyReduction_63 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn37
		 (happy_var_1
	)}

happyReduce_64 = happySpecReduce_2  15# happyReduction_64
happyReduction_64 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn38
		 (AbsHid.EInc happy_var_2
	)}

happyReduce_65 = happySpecReduce_2  15# happyReduction_65
happyReduction_65 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn38
		 (AbsHid.EDec happy_var_2
	)}

happyReduce_66 = happySpecReduce_2  15# happyReduction_66
happyReduction_66 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn38
		 (AbsHid.EUmin happy_var_2
	)}

happyReduce_67 = happySpecReduce_2  15# happyReduction_67
happyReduction_67 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn38
		 (AbsHid.ENeg happy_var_2
	)}

happyReduce_68 = happySpecReduce_1  15# happyReduction_68
happyReduction_68 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn38
		 (happy_var_1
	)}

happyReduce_69 = happySpecReduce_2  16# happyReduction_69
happyReduction_69 happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_2 of { happy_var_2 -> 
	happyIn39
		 (AbsHid.EPreIn happy_var_2
	)}

happyReduce_70 = happySpecReduce_2  16# happyReduction_70
happyReduction_70 happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_2 of { happy_var_2 -> 
	happyIn39
		 (AbsHid.EPreDe happy_var_2
	)}

happyReduce_71 = happySpecReduce_2  16# happyReduction_71
happyReduction_71 happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn39
		 (AbsHid.EPstIn happy_var_1
	)}

happyReduce_72 = happySpecReduce_2  16# happyReduction_72
happyReduction_72 happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn39
		 (AbsHid.EPstDe happy_var_1
	)}

happyReduce_73 = happySpecReduce_1  16# happyReduction_73
happyReduction_73 happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn39
		 (happy_var_1
	)}

happyReduce_74 = happyReduce 4# 17# happyReduction_74
happyReduction_74 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn40
		 (AbsHid.Call happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_75 = happySpecReduce_1  17# happyReduction_75
happyReduction_75 happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	happyIn40
		 (happy_var_1
	)}

happyReduce_76 = happySpecReduce_1  18# happyReduction_76
happyReduction_76 happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (AbsHid.EVar happy_var_1
	)}

happyReduce_77 = happySpecReduce_3  18# happyReduction_77
happyReduction_77 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut34 happy_x_2 of { happy_var_2 -> 
	happyIn41
		 (happy_var_2
	)}

happyReduce_78 = happySpecReduce_1  19# happyReduction_78
happyReduction_78 happy_x_1
	 =  happyIn42
		 (AbsHid.AssignAdd
	)

happyReduce_79 = happySpecReduce_1  19# happyReduction_79
happyReduction_79 happy_x_1
	 =  happyIn42
		 (AbsHid.AssignSubt
	)

happyReduce_80 = happySpecReduce_1  19# happyReduction_80
happyReduction_80 happy_x_1
	 =  happyIn42
		 (AbsHid.AssignMult
	)

happyReduce_81 = happySpecReduce_1  19# happyReduction_81
happyReduction_81 happy_x_1
	 =  happyIn42
		 (AbsHid.AssignDiv
	)

happyReduce_82 = happySpecReduce_1  19# happyReduction_82
happyReduction_82 happy_x_1
	 =  happyIn42
		 (AbsHid.AssignMod
	)

happyReduce_83 = happySpecReduce_1  20# happyReduction_83
happyReduction_83 happy_x_1
	 =  happyIn43
		 (AbsHid.TInt
	)

happyReduce_84 = happySpecReduce_1  20# happyReduction_84
happyReduction_84 happy_x_1
	 =  happyIn43
		 (AbsHid.TBool
	)

happyNewToken action sts stk [] =
	happyDoAction 38# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TS _ 10) -> cont 10#;
	PT _ (TS _ 11) -> cont 11#;
	PT _ (TS _ 12) -> cont 12#;
	PT _ (TS _ 13) -> cont 13#;
	PT _ (TS _ 14) -> cont 14#;
	PT _ (TS _ 15) -> cont 15#;
	PT _ (TS _ 16) -> cont 16#;
	PT _ (TS _ 17) -> cont 17#;
	PT _ (TS _ 18) -> cont 18#;
	PT _ (TS _ 19) -> cont 19#;
	PT _ (TS _ 20) -> cont 20#;
	PT _ (TS _ 21) -> cont 21#;
	PT _ (TS _ 22) -> cont 22#;
	PT _ (TS _ 23) -> cont 23#;
	PT _ (TS _ 24) -> cont 24#;
	PT _ (TS _ 25) -> cont 25#;
	PT _ (TS _ 26) -> cont 26#;
	PT _ (TS _ 27) -> cont 27#;
	PT _ (TS _ 28) -> cont 28#;
	PT _ (TS _ 29) -> cont 29#;
	PT _ (TS _ 30) -> cont 30#;
	PT _ (TS _ 31) -> cont 31#;
	PT _ (TS _ 32) -> cont 32#;
	PT _ (TS _ 33) -> cont 33#;
	PT _ (TS _ 34) -> cont 34#;
	PT _ (TS _ 35) -> cont 35#;
	PT _ (TS _ 36) -> cont 36#;
	PT _ (T_MyIdent happy_dollar_dollar) -> cont 37#;
	_ -> happyError' (tk:tks)
	}

happyError_ 38# tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

pProgram tks = happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut24 x))

pCode tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut25 x))

pFunction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut26 x))

pDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut27 x))

pListCode tks = happySomeParser where
  happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (happyOut28 x))

pListStm tks = happySomeParser where
  happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (happyOut29 x))

pListDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (happyOut30 x))

pListMyIdent tks = happySomeParser where
  happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (happyOut31 x))

pListExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (happyOut32 x))

pStm tks = happySomeParser where
  happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (happyOut33 x))

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (happyOut34 x))

pExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (happyOut35 x))

pExp2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (happyOut36 x))

pExp3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 13# tks) (\x -> happyReturn (happyOut37 x))

pExp4 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 14# tks) (\x -> happyReturn (happyOut38 x))

pExp5 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 15# tks) (\x -> happyReturn (happyOut39 x))

pExp6 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 16# tks) (\x -> happyReturn (happyOut40 x))

pExp7 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 17# tks) (\x -> happyReturn (happyOut41 x))

pArithAssignOp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 18# tks) (\x -> happyReturn (happyOut42 x))

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 19# tks) (\x -> happyReturn (happyOut43 x))

happySeq = happyDontSeq


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 12 "<command-line>" #-}
{-# LINE 1 "G:\\GitHub\\haskell-platform\\build\\ghc-bindist\\local\\lib/include\\ghcversion.h" #-}

















{-# LINE 12 "<command-line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates\\GenericTemplate.hs" #-}





-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif
{-# LINE 46 "templates\\GenericTemplate.hs" #-}


data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList





{-# LINE 67 "templates\\GenericTemplate.hs" #-}

{-# LINE 77 "templates\\GenericTemplate.hs" #-}

{-# LINE 86 "templates\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}


          case action of
                0#           -> {- nothing -}
                                     happyFail i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}

                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}


                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = indexShortOffAddr happyActOffsets st
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else False
         action
          | check     = indexShortOffAddr happyTable off_i
          | otherwise = indexShortOffAddr happyDefActions st


indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#





data HappyAddr = HappyA# Happy_GHC_Exts.Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 170 "templates\\GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = indexShortOffAddr happyGotoOffsets st1
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i



          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = indexShortOffAddr happyGotoOffsets st
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ( (Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
