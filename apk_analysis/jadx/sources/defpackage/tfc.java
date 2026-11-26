package defpackage;

import com.google.android.gms.internal.measurement.zzadf;
import com.google.android.gms.internal.measurement.zzafc;
import com.google.android.gms.internal.measurement.zzve;

/* JADX INFO: loaded from: classes4.dex */
public final class tfc extends zzve {
    public final zzafc a;
    public final zzadf b;

    public tfc(zzafc zzafcVar, zzadf zzadfVar) {
        this.a = zzafcVar;
        if (zzadfVar != null) {
            this.b = zzadfVar;
        } else {
            o2.d("Null extensionRegistryLite");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzve) {
            zzve zzveVar = (zzve) obj;
            if (this.a.equals(zzveVar.zzb()) && this.b.equals(zzveVar.zzc())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        String string = this.a.toString();
        int length = string.length();
        String string2 = this.b.toString();
        StringBuilder sb = new StringBuilder(length + 53 + string2.length() + 1);
        kv2.c(sb, "ProtoSerializer{defaultValue=", string, ", extensionRegistryLite=", string2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzve, com.google.android.gms.internal.measurement.zztv
    public final /* synthetic */ Object zza() {
        return this.a;
    }

    @Override // com.google.android.gms.internal.measurement.zzve
    public final zzafc zzb() {
        return this.a;
    }

    @Override // com.google.android.gms.internal.measurement.zzve
    public final zzadf zzc() {
        return this.b;
    }
}
