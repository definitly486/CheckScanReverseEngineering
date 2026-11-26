package defpackage;

import com.google.android.gms.internal.measurement.zzww;
import com.google.common.collect.j;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class bgc extends zzww {
    public final j a;
    public final j b;
    public final UUID c;
    public final long d;

    public /* synthetic */ bgc(j jVar, j jVar2, UUID uuid, long j) {
        this.a = jVar;
        this.b = jVar2;
        this.c = uuid;
        this.d = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzww) {
            zzww zzwwVar = (zzww) obj;
            if (this.a.equals(zzwwVar.zza()) && this.b.equals(zzwwVar.zzb()) && this.c.equals(zzwwVar.zzc()) && this.d == zzwwVar.zzd()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode();
        long j = this.d;
        return ((int) ((j >>> 32) ^ j)) ^ (iHashCode * 1000003);
    }

    @Override // com.google.android.gms.internal.measurement.zzww
    public final j zza() {
        return this.a;
    }

    @Override // com.google.android.gms.internal.measurement.zzww
    public final j zzb() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.measurement.zzww
    public final UUID zzc() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.measurement.zzww
    public final long zzd() {
        return this.d;
    }
}
