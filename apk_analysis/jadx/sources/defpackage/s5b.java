package defpackage;

import com.google.android.gms.internal.auth.zzdj;
import com.google.android.gms.internal.auth.zzdl;

/* JADX INFO: loaded from: classes4.dex */
public final class s5b implements zzdj {
    public static final zzdl d = zzdl.zza;
    public volatile zzdj b;
    public Object c;

    public final String toString() {
        Object objC = this.b;
        if (objC == d) {
            objC = me0.c("<supplier that returned ", String.valueOf(this.c), ">");
        }
        return me0.c("Suppliers.memoize(", String.valueOf(objC), ")");
    }

    @Override // com.google.android.gms.internal.auth.zzdj
    public final Object zza() {
        zzdj zzdjVar = this.b;
        zzdl zzdlVar = d;
        if (zzdjVar != zzdlVar) {
            synchronized (this) {
                try {
                    if (this.b != zzdlVar) {
                        Object objZza = this.b.zza();
                        this.c = objZza;
                        this.b = zzdlVar;
                        return objZza;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }
}
