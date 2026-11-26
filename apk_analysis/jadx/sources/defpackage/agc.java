package defpackage;

import com.google.android.gms.internal.measurement.zzwv;
import com.google.android.gms.internal.measurement.zzww;
import com.google.common.collect.j;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class agc extends zzwv {
    public j a;
    public j b;
    public UUID c;
    public long d;
    public byte e;

    @Override // com.google.android.gms.internal.measurement.zzwv
    public final zzwv zza(j jVar) {
        if (jVar != null) {
            this.a = jVar;
            return this;
        }
        o2.d("Null spansNames");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzwv
    public final zzwv zzb(j jVar) {
        if (jVar != null) {
            this.b = jVar;
            return this;
        }
        o2.d("Null extras");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzwv
    public final zzwv zzc(UUID uuid) {
        if (uuid != null) {
            this.c = uuid;
            return this;
        }
        o2.d("Null rootTraceId");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzwv
    public final zzwv zzd(long j) {
        this.d = -1L;
        this.e = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzwv
    public final zzww zze() {
        j jVar;
        j jVar2;
        UUID uuid;
        if (this.e == 1 && (jVar = this.a) != null && (jVar2 = this.b) != null && (uuid = this.c) != null) {
            return new bgc(jVar, jVar2, uuid, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" spansNames");
        }
        if (this.b == null) {
            sb.append(" extras");
        }
        if (this.c == null) {
            sb.append(" rootTraceId");
        }
        if (this.e == 0) {
            sb.append(" rootDurationMs");
        }
        ah.f("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
