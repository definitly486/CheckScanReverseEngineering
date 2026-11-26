package yads;

import android.graphics.RadialGradient;
import android.graphics.Shader;
import defpackage.fh8;
import defpackage.ll3;
import defpackage.yr;
import yads.q35;

/* JADX INFO: loaded from: classes6.dex */
public abstract class q35 {
    public static RadialGradient a(u35 u35Var, p35 p35Var, p35 p35Var2, int[] iArr, int i, int i2) {
        float f;
        float f2;
        float fFloatValue;
        if (p35Var instanceof n35) {
            f = ((n35) p35Var).a;
        } else {
            if (!(p35Var instanceof o35)) {
                defpackage.me0.e();
                return null;
            }
            f = ((o35) p35Var).a * i;
        }
        final float f3 = f;
        if (p35Var2 instanceof n35) {
            f2 = ((n35) p35Var2).a;
        } else {
            if (!(p35Var2 instanceof o35)) {
                defpackage.me0.e();
                return null;
            }
            f2 = ((o35) p35Var2).a * i2;
        }
        final float f4 = f2;
        final float f5 = i;
        final float f6 = i2;
        fh8 fh8Var = new fh8(new ll3() { // from class: f6a
            @Override // defpackage.ll3
            public final Object invoke() {
                return q35.a(0.0f, 0.0f, f5, f6, f3, f4);
            }
        });
        fh8 fh8Var2 = new fh8(new ll3() { // from class: g6a
            @Override // defpackage.ll3
            public final Object invoke() {
                return q35.b(0.0f, f5, f6, 0.0f, f3, f4);
            }
        });
        if (u35Var instanceof r35) {
            fFloatValue = ((r35) u35Var).a;
        } else {
            if (!(u35Var instanceof t35)) {
                defpackage.me0.e();
                return null;
            }
            int iOrdinal = ((t35) u35Var).a.ordinal();
            if (iOrdinal == 0) {
                Float fX = yr.X((Float[]) fh8Var.getValue());
                fX.getClass();
                fFloatValue = fX.floatValue();
            } else if (iOrdinal == 1) {
                Float fV = yr.V((Float[]) fh8Var.getValue());
                fV.getClass();
                fFloatValue = fV.floatValue();
            } else if (iOrdinal == 2) {
                Float fX2 = yr.X((Float[]) fh8Var2.getValue());
                fX2.getClass();
                fFloatValue = fX2.floatValue();
            } else {
                if (iOrdinal != 3) {
                    defpackage.me0.e();
                    return null;
                }
                Float fV2 = yr.V((Float[]) fh8Var2.getValue());
                fV2.getClass();
                fFloatValue = fV2.floatValue();
            }
        }
        if (fFloatValue <= 0.0f) {
            fFloatValue = 0.01f;
        }
        return new RadialGradient(f3, f4, fFloatValue, iArr, (float[]) null, Shader.TileMode.CLAMP);
    }

    public static final Float[] b(float f, float f2, float f3, float f4, float f5, float f6) {
        return new Float[]{Float.valueOf(Math.abs(f5 - f)), Float.valueOf(Math.abs(f5 - f2)), Float.valueOf(Math.abs(f6 - f3)), Float.valueOf(Math.abs(f6 - f4))};
    }

    public static final float a(float f, float f2, float f3, float f4) {
        return (float) Math.sqrt(((float) Math.pow(f - f3, 2.0d)) + ((float) Math.pow(f2 - f4, 2.0d)));
    }

    public static final Float[] a(float f, float f2, float f3, float f4, float f5, float f6) {
        return new Float[]{Float.valueOf(a(f5, f6, f, f2)), Float.valueOf(a(f5, f6, f3, f2)), Float.valueOf(a(f5, f6, f3, f4)), Float.valueOf(a(f5, f6, f, f4))};
    }
}
