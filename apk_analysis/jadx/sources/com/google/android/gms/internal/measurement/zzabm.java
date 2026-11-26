package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzabm {
    public final zzaaf a;
    public int b = 0;
    public int c = -1;

    public zzabm(zzaaf zzaafVar) {
        zzabr.zza(zzaafVar, "context");
        this.a = zzaafVar;
    }

    public abstract void zzb(int i, int i2, zzabh zzabhVar);

    public abstract Object zzg();

    public final zzabn zzh() {
        return this.a.zza();
    }

    public final String zzi() {
        return this.a.zzb();
    }

    public final int zzj() {
        return this.c + 1;
    }

    public final void zzk(int i, int i2, zzabh zzabhVar) {
        if (zzabhVar.zzc() < 32) {
            this.b |= 1 << zzabhVar.zzc();
        }
        this.c = Math.max(this.c, zzabhVar.zzc());
        zzb(i, i2, zzabhVar);
    }

    public final Object zzl() {
        zzaaf zzaafVar = this.a;
        zzaafVar.zza().a(this);
        int i = this.b;
        if (((i + 1) & i) != 0 || (this.c > 31 && i != -1)) {
            throw zzabo.zzd(String.format("unreferenced arguments [first missing index=%d]", Integer.valueOf(Integer.numberOfTrailingZeros(~i))), zzaafVar.zzb());
        }
        return zzg();
    }
}
