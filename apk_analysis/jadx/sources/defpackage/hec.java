package defpackage;

import android.net.Uri;
import com.google.android.gms.internal.measurement.zzafc;
import com.google.android.gms.internal.measurement.zztr;
import com.google.android.gms.internal.measurement.zztw;
import com.google.android.gms.internal.measurement.zzuj;
import com.google.common.collect.j;

/* JADX INFO: loaded from: classes4.dex */
public final class hec extends zztr {
    public final Uri a;
    public final zzafc b;
    public final rz5 c;
    public final j d;
    public final zzuj e;
    public final boolean f;

    public /* synthetic */ hec(Uri uri, zzafc zzafcVar, rz5 rz5Var, j jVar, zztw zztwVar, boolean z) {
        this.a = uri;
        this.b = zzafcVar;
        this.c = rz5Var;
        this.d = jVar;
        this.e = zztwVar;
        this.f = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zztr)) {
            return false;
        }
        zztr zztrVar = (zztr) obj;
        return this.a.equals(zztrVar.zza()) && this.b.equals(zztrVar.zzb()) && this.c.equals(zztrVar.zzc()) && this.d.equals(zztrVar.zzd()) && this.e.equals(zztrVar.zze()) && this.f == zztrVar.zzf();
    }

    public final int hashCode() {
        return (((true != this.f ? 1237 : 1231) ^ ((((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.e.hashCode()) * 1000003)) * 1000003) ^ 1237;
    }

    public final String toString() {
        String string = this.a.toString();
        int length = string.length();
        String string2 = this.b.toString();
        int length2 = string2.length();
        String strValueOf = String.valueOf(this.c);
        String strValueOf2 = String.valueOf(this.d);
        String string3 = this.e.toString();
        int length3 = strValueOf.length();
        int length4 = strValueOf2.length();
        int length5 = string3.length();
        boolean z = this.f;
        StringBuilder sb = new StringBuilder(length + 34 + length2 + 10 + length3 + 13 + length4 + 16 + length5 + 32 + String.valueOf(z).length() + 22);
        kv2.c(sb, "ProtoDataStoreConfig{uri=", string, ", schema=", string2);
        kv2.c(sb, ", handler=", strValueOf, ", migrations=", strValueOf2);
        sb.append(", variantConfig=");
        sb.append(string3);
        sb.append(", useGeneratedExtensionRegistry=");
        sb.append(z);
        sb.append(", enableTracing=false}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zztr
    public final Uri zza() {
        return this.a;
    }

    @Override // com.google.android.gms.internal.measurement.zztr
    public final zzafc zzb() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.measurement.zztr
    public final rz5 zzc() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.measurement.zztr
    public final j zzd() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.measurement.zztr
    public final zzuj zze() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.measurement.zztr
    public final boolean zzf() {
        return this.f;
    }
}
