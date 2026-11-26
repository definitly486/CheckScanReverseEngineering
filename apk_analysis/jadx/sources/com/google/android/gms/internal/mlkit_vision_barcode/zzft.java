package com.google.android.gms.internal.mlkit_vision_barcode;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzft {
    public final zzrb a;
    public final Boolean b;
    public final zzvz c;
    public final zzcs d;
    public final zzcs e;

    public /* synthetic */ zzft(zzfr zzfrVar) {
        this.a = zzfrVar.a;
        this.b = zzfrVar.b;
        this.c = zzfrVar.c;
        this.d = zzfrVar.d;
        this.e = zzfrVar.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzft)) {
            return false;
        }
        zzft zzftVar = (zzft) obj;
        return Objects.equal(this.a, zzftVar.a) && Objects.equal(null, null) && Objects.equal(this.b, zzftVar.b) && Objects.equal(null, null) && Objects.equal(this.c, zzftVar.c) && Objects.equal(this.d, zzftVar.d) && Objects.equal(this.e, zzftVar.e);
    }

    public final int hashCode() {
        return Objects.hashCode(this.a, null, this.b, null, this.c, this.d, this.e);
    }

    public final zzcs zza() {
        return this.d;
    }

    public final zzcs zzb() {
        return this.e;
    }

    public final zzrb zzc() {
        return this.a;
    }

    public final zzvz zzd() {
        return this.c;
    }

    public final Boolean zze() {
        return this.b;
    }
}
