package defpackage;

import android.os.Looper;

/* JADX INFO: loaded from: classes5.dex */
public final class hi implements ty4 {
    @Override // defpackage.ty4
    public final gu3 a() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new gu3(iu3.a(mainLooper));
        }
        ah.f("The main looper is not available");
        return null;
    }
}
