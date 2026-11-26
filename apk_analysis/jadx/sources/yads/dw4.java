package yads;

import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class dw4 implements kv {
    public static final dw4 e = new dw4(1.0f, 1.0f);
    public final float b;
    public final float c;
    public final int d;

    public dw4(float f, float f2) {
        if (f <= 0.0f) {
            defpackage.mi2.b();
            throw null;
        }
        if (f2 <= 0.0f) {
            defpackage.mi2.b();
            throw null;
        }
        this.b = f;
        this.c = f2;
        this.d = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && dw4.class == obj.getClass()) {
            dw4 dw4Var = (dw4) obj;
            if (this.b == dw4Var.b && this.c == dw4Var.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.c) + ((Float.floatToRawIntBits(this.b) + 527) * 31);
    }

    public final String toString() {
        Object[] objArr = {Float.valueOf(this.b), Float.valueOf(this.c)};
        int i = u56.a;
        return String.format(Locale.US, "PlaybackParameters(speed=%.2f, pitch=%.2f)", objArr);
    }
}
