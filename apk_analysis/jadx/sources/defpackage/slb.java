package defpackage;

import com.google.android.gms.internal.play_billing.zzfp;
import com.google.android.gms.internal.play_billing.zzgc;
import com.google.android.gms.internal.play_billing.zzhb;
import com.google.android.gms.internal.play_billing.zzhr;

/* JADX INFO: loaded from: classes4.dex */
public final class slb {
    public final zzhr a;
    public final zzgc b;
    public volatile zzfp c;
    public volatile zzhr d;

    public slb(zzhr zzhrVar) {
        this.d = zzhrVar;
        this.a = zzhrVar.zzl();
        zzgc zzgcVar = zzgc.b;
        int i = ydb.a;
        this.b = zzgc.b;
        this.c = null;
    }

    public final zzhr a() {
        try {
            return this.d;
        } catch (zzhb unused) {
            zzgc zzgcVar = zzgc.b;
            return this.a;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof slb)) {
            return a().equals(obj);
        }
        slb slbVar = (slb) obj;
        if (this.c == null || slbVar.c == null || this.b != slbVar.b || !this.c.equals(slbVar.c)) {
            return a().equals(slbVar.a());
        }
        return true;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a().toString();
    }
}
