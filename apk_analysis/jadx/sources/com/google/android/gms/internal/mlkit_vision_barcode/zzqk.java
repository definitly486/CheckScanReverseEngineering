package com.google.android.gms.internal.mlkit_vision_barcode;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqk {
    public final zzqi a;
    public final Integer b;

    public /* synthetic */ zzqk(zzqh zzqhVar) {
        this.a = zzqhVar.a;
        this.b = zzqhVar.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzqk)) {
            return false;
        }
        zzqk zzqkVar = (zzqk) obj;
        return Objects.equal(this.a, zzqkVar.a) && Objects.equal(this.b, zzqkVar.b) && Objects.equal(null, null) && Objects.equal(null, null);
    }

    public final int hashCode() {
        return Objects.hashCode(this.a, this.b, null, null);
    }

    public final zzqi zza() {
        return this.a;
    }

    public final Integer zzb() {
        return this.b;
    }
}
