package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ld4 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public ld4(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ld4)) {
            return false;
        }
        ld4 ld4Var = (ld4) obj;
        return this.a == ld4Var.a && this.b == ld4Var.b && this.c == ld4Var.c && this.d == ld4Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + i96.a(this.c, i96.a(this.b, Integer.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        int i3 = this.c;
        int i4 = this.d;
        StringBuilder sbF = defpackage.bg.f(i, i2, "MuteControlResources(mutedResourceId=", ", unmutedResourceId=", ", mutedContentDescriptionId=");
        sbF.append(i3);
        sbF.append(", unmutedContentDescriptionId=");
        sbF.append(i4);
        sbF.append(")");
        return sbF.toString();
    }
}
