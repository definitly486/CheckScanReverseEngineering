package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class x74 extends u74 {
    public final int b;
    public final int c;
    public boolean d;
    public int e;

    public x74(int i, int i2, int i3) {
        this.b = i3;
        this.c = i2;
        boolean z = false;
        if (i3 <= 0 ? i >= i2 : i <= i2) {
            z = true;
        }
        this.d = z;
        this.e = z ? i : i2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.d;
    }

    @Override // defpackage.u74
    public final int nextInt() {
        int i = this.e;
        if (i != this.c) {
            this.e = this.b + i;
            return i;
        }
        if (this.d) {
            this.d = false;
            return i;
        }
        qz0.e();
        return 0;
    }
}
