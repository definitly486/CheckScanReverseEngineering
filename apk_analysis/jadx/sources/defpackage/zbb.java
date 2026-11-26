package defpackage;

import com.google.android.gms.internal.auth.zzev;

/* JADX INFO: loaded from: classes4.dex */
public final class zbb implements sgb {
    public static final zbb a = new zbb();

    @Override // defpackage.sgb
    public final ogb a(Class cls) {
        if (!zzev.class.isAssignableFrom(cls)) {
            fg.c("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (ogb) zzev.a(cls.asSubclass(zzev.class)).h(3);
        } catch (Exception e) {
            mg.e("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }

    @Override // defpackage.sgb
    public final boolean b(Class cls) {
        return zzev.class.isAssignableFrom(cls);
    }
}
