package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.z3b;

/* JADX INFO: loaded from: classes4.dex */
public class zzex {
    public volatile zzfm a;
    public volatile zzdf b;

    public final void a(zzfm zzfmVar) {
        if (this.a != null) {
            return;
        }
        synchronized (this) {
            if (this.a != null) {
                return;
            }
            try {
                this.a = zzfmVar;
                this.b = zzdf.zzb;
            } catch (zzer unused) {
                this.a = zzfmVar;
                this.b = zzdf.zzb;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzex)) {
            return false;
        }
        zzex zzexVar = (zzex) obj;
        zzfm zzfmVar = this.a;
        zzfm zzfmVar2 = zzexVar.a;
        if (zzfmVar == null && zzfmVar2 == null) {
            return zzb().equals(zzexVar.zzb());
        }
        if (zzfmVar != null && zzfmVar2 != null) {
            return zzfmVar.equals(zzfmVar2);
        }
        if (zzfmVar != null) {
            zzexVar.a(zzfmVar.zzac());
            return zzfmVar.equals(zzexVar.a);
        }
        a(zzfmVar2.zzac());
        return this.a.equals(zzfmVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.b != null) {
            return ((z3b) this.b).c.length;
        }
        if (this.a != null) {
            return this.a.zzF();
        }
        return 0;
    }

    public final zzdf zzb() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b != null) {
                    return this.b;
                }
                if (this.a == null) {
                    this.b = zzdf.zzb;
                } else {
                    this.b = this.a.zzC();
                }
                return this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzfm zzc(zzfm zzfmVar) {
        zzfm zzfmVar2 = this.a;
        this.b = null;
        this.a = zzfmVar;
        return zzfmVar2;
    }
}
