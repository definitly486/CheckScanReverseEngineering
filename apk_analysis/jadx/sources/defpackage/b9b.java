package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;

/* JADX INFO: loaded from: classes4.dex */
public final class b9b implements efb {
    public static final b9b b = new b9b();

    @Override // defpackage.efb
    public final zeb a(Class cls) {
        if (!zzeh.class.isAssignableFrom(cls)) {
            fg.c("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (zeb) zzeh.c(cls.asSubclass(zzeh.class)).j(3, null);
        } catch (Exception e) {
            mg.e("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }

    @Override // defpackage.efb
    public final boolean b(Class cls) {
        return zzeh.class.isAssignableFrom(cls);
    }
}
