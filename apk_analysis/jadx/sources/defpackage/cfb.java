package defpackage;

import com.google.android.gms.internal.auth.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class cfb extends jfb {
    @Override // defpackage.jfb
    public final void a(Object obj, long j) {
        ((zzez) pnb.c(obj, j)).zzb();
    }

    @Override // defpackage.jfb
    public final void b(long j, Object obj, Object obj2) {
        zzez zzezVarZzd = (zzez) pnb.c(obj, j);
        zzez zzezVar = (zzez) pnb.c(obj2, j);
        int size = zzezVarZzd.size();
        int size2 = zzezVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzezVarZzd.zzc()) {
                zzezVarZzd = zzezVarZzd.zzd(size2 + size);
            }
            zzezVarZzd.addAll(zzezVar);
        }
        if (size > 0) {
            zzezVar = zzezVarZzd;
        }
        pnb.g(j, obj, zzezVar);
    }
}
