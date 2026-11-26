package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zzme;

/* JADX INFO: loaded from: classes4.dex */
public final class g4c extends zzme {
    public final String a;
    public final boolean b;
    public final int c;

    public /* synthetic */ g4c(int i, String str, boolean z) {
        this.a = str;
        this.b = z;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzme)) {
            return false;
        }
        zzme zzmeVar = (zzme) obj;
        return this.a.equals(zzmeVar.zzb()) && this.b == zzmeVar.zzc() && this.c == zzmeVar.zza();
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() ^ 1000003;
        return this.c ^ (((iHashCode * 1000003) ^ (true != this.b ? 1237 : 1231)) * 1000003);
    }

    public final String toString() {
        return l2.e(p2.b("MLKitLoggingOptions{libraryName=", this.a, ", enableFirelog=", ", firelogEventType=", this.b), "}", this.c);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzme
    public final int zza() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzme
    public final String zzb() {
        return this.a;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzme
    public final boolean zzc() {
        return this.b;
    }
}
