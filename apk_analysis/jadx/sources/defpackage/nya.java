package defpackage;

import com.google.android.gms.internal.measurement.zzbv;
import com.google.android.gms.internal.measurement.zzcd;

/* JADX INFO: loaded from: classes4.dex */
public final class nya extends zzcd {
    public final String a;
    public final int b;
    public final int c;

    public /* synthetic */ nya(String str, int i, int i2) {
        this.a = str;
        this.b = i;
        this.c = i2;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof zzcd)) {
                return false;
            }
            zzcd zzcdVar = (zzcd) obj;
            if (!this.a.equals(zzcdVar.zza())) {
                return false;
            }
            zzcdVar.zzb();
            int iZzd = zzcdVar.zzd();
            int i = this.b;
            if (i == 0) {
                throw null;
            }
            if (i != iZzd) {
                return false;
            }
            zzcdVar.zzc();
            int iZze = zzcdVar.zze();
            if (this.c == 0) {
                throw null;
            }
            if (iZze != 1) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() ^ 1000003;
        int i = this.b;
        if (i == 0) {
            throw null;
        }
        int i2 = (((iHashCode * 1000003) ^ 1237) * 1000003) ^ i;
        if (this.c != 0) {
            return (i2 * (-721379959)) ^ 1;
        }
        throw null;
    }

    public final String toString() {
        String str;
        int i = this.b;
        if (i == 1) {
            str = "ALL_CHECKS";
        } else if (i == 2) {
            str = "SKIP_COMPLIANCE_CHECK";
        } else if (i != 3) {
            str = i != 4 ? "null" : "NO_CHECKS";
        } else {
            str = "SKIP_SECURITY_CHECK";
        }
        String str2 = this.c == 1 ? "READ_AND_WRITE" : "null";
        String str3 = this.a;
        StringBuilder sb = new StringBuilder(str2.length() + str.length() + String.valueOf(str3).length() + 73 + 52 + 1);
        kv2.c(sb, "FileComplianceOptions{fileOwner=", str3, ", hasDifferentDmaOwner=false, fileChecks=", str);
        return kh.c(sb, ", multipleProductIdGroupsResolver=null, filePurpose=", str2, "}");
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final String zza() {
        return this.a;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final boolean zzb() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final zzbv zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final int zzd() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final int zze() {
        return this.c;
    }
}
