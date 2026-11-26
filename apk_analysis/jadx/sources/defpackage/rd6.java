package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class rd6 {
    public final int a;
    public final int b;
    public final float c;

    public rd6(int i, int i2, float f) {
        this.a = i;
        this.b = i2;
        this.c = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rd6)) {
            return false;
        }
        rd6 rd6Var = (rd6) obj;
        return this.a == rd6Var.a && this.b == rd6Var.b && Float.compare(this.c, rd6Var.c) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.c) + ej0.b(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PostHogScreenSizeInfo(width=");
        sb.append(this.a);
        sb.append(", height=");
        sb.append(this.b);
        sb.append(", density=");
        return js2.b(sb, this.c, ')');
    }
}
