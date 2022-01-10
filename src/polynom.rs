// The irreductible polynom to be used in the fingerprint function.
pub trait Polynom {
    fn degree(&self) -> i32;
    fn modulo(&self, m: &Self) -> Self;

    fn append_byte(&self, byte: u8, m: &Self) -> Self;
}

pub type Polynom64 = u64;

// Default irreductible modulo polynom.
pub const MOD_POLYNOM: Polynom64 = 0x3DA3358B4DC173;

impl Polynom for Polynom64 {
    // The degree of the polynom.
    fn degree(&self) -> i32 {
        // for i in (0..63).rev() {
        //     if *self >= ((1 as Self) << i) {
        //         return i;
        //     }
        // }

        // // The "0" polynom has a degree -1.
        // return -1;
        return 63 - self.leading_zeros() as i32;
    }

    fn modulo(&self, m: &Self) -> Self {
        let mut p = *self;
        while p.degree() >= m.degree() {
            p ^= m << (p.degree() - m.degree());
        }

        return p;
    }

    fn append_byte(&self, byte: u8, m: &Self) -> Self {
        let mut hash = *self;
        hash <<= 8;
        hash |= byte as u64;

        hash.modulo(m)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn polynom_degree() {
        assert_eq!(MOD_POLYNOM.degree(), 53);
        assert_eq!(0u64.degree(), -1);
        assert_eq!(1u64.degree(), 0);

        assert_eq!(((1u64 << 7) - 1).degree(), 6);
        assert_eq!((1u64 << 7).degree(), 7);
        assert_eq!(((1u64 << 7) + 1).degree(), 7);
    }

    #[test]
    fn polynom_modulo() {
        assert_eq!(7u64.modulo(&3), 1);
        assert_eq!(7u64.modulo(&4), 3);
        assert_eq!(7u64.modulo(&2), 1);

        assert_eq!(16u64.modulo(&8), 0);
        assert_eq!(19u64.modulo(&8), 3);

        assert_eq!(16u64.modulo(&4), 0);
        assert_eq!(19u64.modulo(&4), 3);
    }
}
