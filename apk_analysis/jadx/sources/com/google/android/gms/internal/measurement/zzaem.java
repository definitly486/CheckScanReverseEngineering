package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public class zzaem {
    public volatile zzafc a;
    public volatile zzacr b;

    public final void a(zzafc zzafcVar) {
        if (this.a != null) {
            return;
        }
        synchronized (this) {
            if (this.a != null) {
                return;
            }
            try {
                this.a = zzafcVar;
                this.b = zzacr.zza;
            } catch (zzaeh unused) {
                this.a = zzafcVar;
                this.b = zzacr.zza;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaem)) {
            return false;
        }
        zzaem zzaemVar = (zzaem) obj;
        zzafc zzafcVar = this.a;
        zzafc zzafcVar2 = zzaemVar.a;
        if (zzafcVar == null && zzafcVar2 == null) {
            return zzc().equals(zzaemVar.zzc());
        }
        if (zzafcVar != null && zzafcVar2 != null) {
            return zzafcVar.equals(zzafcVar2);
        }
        if (zzafcVar != null) {
            zzaemVar.a(zzafcVar.zzcK());
            return zzafcVar.equals(zzaemVar.a);
        }
        a(zzafcVar2.zzcK());
        return this.a.equals(zzafcVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzafc zza(zzafc zzafcVar) {
        zzafc zzafcVar2 = this.a;
        this.b = null;
        this.a = zzafcVar;
        return zzafcVar2;
    }

    public final int zzb() {
        if (this.b != null) {
            return this.b.zzb();
        }
        if (this.a != null) {
            return this.a.zzcq();
        }
        return 0;
    }

    public final zzacr zzc() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b != null) {
                    return this.b;
                }
                if (this.a == null) {
                    this.b = zzacr.zza;
                } else {
                    this.b = this.a.zzcc();
                }
                return this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
