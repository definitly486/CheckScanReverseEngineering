package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zznh {
    public final String a;
    public final zznf b;
    public final String c;
    public final zzne d;

    public /* synthetic */ zznh(zznd zzndVar) {
        this.a = zzndVar.a;
        this.b = zzndVar.b;
        this.c = zzndVar.c;
        this.d = zzndVar.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zznh)) {
            return false;
        }
        zznh zznhVar = (zznh) obj;
        return Objects.equal(this.a, zznhVar.a) && Objects.equal(null, null) && Objects.equal(this.b, zznhVar.b) && Objects.equal(null, null) && Objects.equal(this.c, zznhVar.c) && Objects.equal(this.d, zznhVar.d) && Objects.equal(null, null) && Objects.equal(null, null) && Objects.equal(null, null);
    }

    public final int hashCode() {
        return Objects.hashCode(this.a, null, this.b, null, this.c, this.d, null, null, null);
    }

    public final zzne zza() {
        return this.d;
    }

    public final zznf zzb() {
        return this.b;
    }

    public final String zzc() {
        return this.c;
    }

    public final String zzd() {
        return this.a;
    }
}
