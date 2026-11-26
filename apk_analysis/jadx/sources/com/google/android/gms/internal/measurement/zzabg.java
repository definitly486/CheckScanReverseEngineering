package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabg extends zzabh {
    public final zzabf c;

    public zzabg(zzabf zzabfVar, zzza zzzaVar, int i) {
        super(zzzaVar, i);
        this.c = zzabfVar;
        StringBuilder sb = new StringBuilder("%");
        zzzaVar.zzl(sb);
        sb.append(true != zzzaVar.zzk() ? 't' : 'T');
        sb.append(zzabfVar.zzb());
    }

    public static zzabh zza(zzabf zzabfVar, zzza zzzaVar, int i) {
        return new zzabg(zzabfVar, zzzaVar, i);
    }

    @Override // com.google.android.gms.internal.measurement.zzabh
    public final void a(zzabi zzabiVar, Object obj) {
        zzabiVar.zzd(obj, this.c, this.b);
    }
}
