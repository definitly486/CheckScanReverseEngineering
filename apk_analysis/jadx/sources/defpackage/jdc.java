package defpackage;

import com.google.android.gms.internal.mlkit_common.zzsb;

/* JADX INFO: loaded from: classes4.dex */
public final class jdc extends zzsb {
    public final String a;
    public final boolean b;
    public final int c;

    public /* synthetic */ jdc(int i, String str, boolean z) {
        this.a = str;
        this.b = z;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzsb)) {
            return false;
        }
        zzsb zzsbVar = (zzsb) obj;
        return this.a.equals(zzsbVar.zzb()) && this.b == zzsbVar.zzc() && this.c == zzsbVar.zza();
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() ^ 1000003;
        return this.c ^ (((iHashCode * 1000003) ^ (true != this.b ? 1237 : 1231)) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MLKitLoggingOptions{libraryName=");
        sb.append(this.a);
        sb.append(", enableFirelog=");
        sb.append(this.b);
        sb.append(", firelogEventType=");
        return l2.e(sb, "}", this.c);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsb
    public final int zza() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsb
    public final String zzb() {
        return this.a;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsb
    public final boolean zzc() {
        return this.b;
    }
}
