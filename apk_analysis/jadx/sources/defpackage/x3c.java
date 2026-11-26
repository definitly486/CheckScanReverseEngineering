package defpackage;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x3c extends mub {
    public static final WeakReference l = new WeakReference(null);
    public WeakReference b;

    public x3c(byte[] bArr) {
        super(bArr);
        this.b = l;
    }

    @Override // defpackage.mub
    public final byte[] g() {
        byte[] bArrH;
        synchronized (this) {
            try {
                bArrH = (byte[]) this.b.get();
                if (bArrH == null) {
                    bArrH = h();
                    this.b = new WeakReference(bArrH);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrH;
    }

    public abstract byte[] h();
}
