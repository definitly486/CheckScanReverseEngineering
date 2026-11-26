package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class m1 implements dy6 {
    @Override // defpackage.dy6
    public void I() {
    }

    public final void a(int i) {
        if (q() >= i) {
            return;
        }
        v93.b();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // defpackage.dy6
    public boolean markSupported() {
        return this instanceof ey6.b;
    }

    @Override // defpackage.dy6
    public void reset() {
        throw new UnsupportedOperationException();
    }
}
