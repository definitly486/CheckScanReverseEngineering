package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class gw5 {
    public int a;
    public int b;

    public abstract int a();

    public final void b(float f, int i) {
        float f2 = i + f;
        float fA = a() - 1;
        if (f2 == fA) {
            f2 = fA - 1.0E-4f;
        }
        int i2 = (int) f2;
        int i3 = i2 + 1;
        if (i3 > fA || i2 < 0) {
            return;
        }
        c(f2 % 1.0f, i2, i3);
        int i4 = this.a;
        if (i4 != -1) {
            if (i2 > i4) {
                x74 it = kx6.n(i4, i2).iterator();
                while (it.d) {
                    d(it.nextInt());
                }
            }
            int i5 = this.b;
            if (i3 < i5) {
                d(i5);
                x74 it2 = new y74(i2 + 2, this.b, 1).iterator();
                while (it2.d) {
                    d(it2.nextInt());
                }
            }
        }
        this.a = i2;
        this.b = i3;
    }

    public abstract void c(float f, int i, int i2);

    public abstract void d(int i);
}
