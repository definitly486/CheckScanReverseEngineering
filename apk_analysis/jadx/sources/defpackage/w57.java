package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public class w57 {
    public final float a;
    public final float b;

    public w57(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    public static float a(w57 w57Var, w57 w57Var2) {
        float f = w57Var.a;
        float f2 = w57Var.b;
        float f3 = f - w57Var2.a;
        float f4 = f2 - w57Var2.b;
        return (float) Math.sqrt((f4 * f4) + (f3 * f3));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof w57) {
            w57 w57Var = (w57) obj;
            if (this.a == w57Var.a && this.b == w57Var.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.b) + (Float.floatToIntBits(this.a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(25);
        sb.append('(');
        sb.append(this.a);
        sb.append(',');
        return js2.b(sb, this.b, ')');
    }
}
