package defpackage;

import com.google.android.gms.internal.auth.zzdj;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class g5b implements Serializable, zzdj {
    public final zzdj b;
    public volatile transient boolean c;
    public transient Object d;

    public g5b(zzdj zzdjVar) {
        this.b = zzdjVar;
    }

    public final String toString() {
        return me0.c("Suppliers.memoize(", (this.c ? me0.c("<supplier that returned ", String.valueOf(this.d), ">") : this.b).toString(), ")");
    }

    @Override // com.google.android.gms.internal.auth.zzdj
    public final Object zza() {
        if (!this.c) {
            synchronized (this) {
                try {
                    if (!this.c) {
                        Object objZza = this.b.zza();
                        this.d = objZza;
                        this.c = true;
                        return objZza;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.d;
    }
}
