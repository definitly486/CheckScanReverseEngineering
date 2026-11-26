package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class o1a {
    public static final o1a e = new o1a(0, 0, 0, 0);
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public o1a(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TrgInsets{left=");
        sb.append(this.a);
        sb.append(", top=");
        sb.append(this.b);
        sb.append(", right=");
        sb.append(this.c);
        sb.append(", bottom=");
        return rg.h(sb, this.d, '}');
    }
}
