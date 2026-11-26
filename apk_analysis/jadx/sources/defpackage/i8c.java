package defpackage;

import com.google.android.gms.internal.measurement.zznd;

/* JADX INFO: loaded from: classes4.dex */
public final class i8c extends occ {
    public final zznd a;
    public final rcc b;

    public i8c(zznd zzndVar, rcc rccVar) {
        this.a = zzndVar;
        this.b = rccVar;
    }

    @Override // defpackage.occ
    public final zznd a() {
        return this.a;
    }

    @Override // defpackage.occ
    public final rcc b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof occ)) {
            return false;
        }
        occ occVar = (occ) obj;
        zznd zzndVar = this.a;
        if (zzndVar == null) {
            if (occVar.a() != null) {
                return false;
            }
        } else if (zzndVar != occVar.a()) {
            return false;
        }
        return this.b.equals(occVar.b());
    }

    public final int hashCode() {
        zznd zzndVar = this.a;
        return this.b.hashCode() ^ (((zzndVar == null ? 0 : zzndVar.hashCode()) ^ 1000003) * 1000003);
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.a);
        String string = this.b.toString();
        StringBuilder sb = new StringBuilder(strValueOf.length() + 52 + string.length() + 1);
        kv2.c(sb, "SnapshotBlobAndResult{snapshotBlob=", strValueOf, ", snapshotResult=", string);
        sb.append("}");
        return sb.toString();
    }
}
