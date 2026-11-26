package defpackage;

import com.google.android.gms.internal.measurement.zzadu;

/* JADX INFO: loaded from: classes4.dex */
public final class ira implements hsa {
    public static final ira b = new ira();

    @Override // defpackage.hsa
    public final boolean a(Class cls) {
        return zzadu.class.isAssignableFrom(cls);
    }

    @Override // defpackage.hsa
    public final zra b(Class cls) {
        if (!zzadu.class.isAssignableFrom(cls)) {
            fg.c("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (zra) zzadu.h(cls.asSubclass(zzadu.class)).m(3);
        } catch (Exception e) {
            mg.e("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }
}
