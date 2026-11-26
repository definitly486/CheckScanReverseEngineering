package defpackage;

import com.google.android.gms.internal.mlkit_common.zzmu;
import com.google.android.gms.internal.mlkit_common.zzna;
import com.google.android.gms.internal.mlkit_common.zzsj;

/* JADX INFO: loaded from: classes4.dex */
public final class ldc extends zzsj {
    public final zzmu a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final sc5 e;
    public final zzna f;
    public final int g;

    public /* synthetic */ ldc(zzmu zzmuVar, String str, boolean z, boolean z2, sc5 sc5Var, zzna zznaVar, int i) {
        this.a = zzmuVar;
        this.b = str;
        this.c = z;
        this.d = z2;
        this.e = sc5Var;
        this.f = zznaVar;
        this.g = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzsj) {
            zzsj zzsjVar = (zzsj) obj;
            if (this.a.equals(zzsjVar.zzc()) && this.b.equals(zzsjVar.zze()) && this.c == zzsjVar.zzg() && this.d == zzsjVar.zzf() && this.e.equals(zzsjVar.zzb()) && this.f.equals(zzsjVar.zzd()) && this.g == zzsjVar.zza()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.g ^ ((((((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ (true != this.c ? 1237 : 1231)) * 1000003) ^ (true != this.d ? 1237 : 1231)) * 1000003) ^ this.e.hashCode()) * 1000003) ^ this.f.hashCode()) * 1000003);
    }

    public final String toString() {
        String string = this.a.toString();
        String string2 = this.e.toString();
        String string3 = this.f.toString();
        StringBuilder sbD = n7.d("RemoteModelLoggingOptions{errorCode=", string, ", tfliteSchemaVersion=");
        sbD.append(this.b);
        sbD.append(", shouldLogRoughDownloadTime=");
        sbD.append(this.c);
        sbD.append(", shouldLogExactDownloadTime=");
        sbD.append(this.d);
        sbD.append(", modelType=");
        sbD.append(string2);
        sbD.append(", downloadStatus=");
        sbD.append(string3);
        sbD.append(", failureStatusCode=");
        return l2.e(sbD, "}", this.g);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final int zza() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final sc5 zzb() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final zzmu zzc() {
        return this.a;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final zzna zzd() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final String zze() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final boolean zzf() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final boolean zzg() {
        return this.c;
    }
}
