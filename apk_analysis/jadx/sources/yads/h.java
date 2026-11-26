package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h extends i46 {
    public int b = 2;
    public Object c;

    public abstract Object a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.b;
        if (i == 4) {
            defpackage.ud.g();
            return false;
        }
        int iA = xn0.a(i);
        if (iA == 0) {
            return true;
        }
        if (iA != 2) {
            this.b = 4;
            this.c = a();
            if (this.b != 3) {
                this.b = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            defpackage.qz0.e();
            return null;
        }
        this.b = 2;
        Object obj = this.c;
        this.c = null;
        return obj;
    }
}
