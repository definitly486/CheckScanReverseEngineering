package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzag implements zzao {
    public final zzao b;
    public final String c;

    public zzag() {
        this.b = zzao.zzf;
        this.c = "return";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzag)) {
            return false;
        }
        zzag zzagVar = (zzag) obj;
        return this.c.equals(zzagVar.c) && this.b.equals(zzagVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.c.hashCode() * 31);
    }

    public final zzao zzb() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String zzc() {
        throw new IllegalStateException("Control is not a String");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzcG(String str, zzg zzgVar, List list) {
        throw new IllegalStateException("Control does not have functions");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double zzd() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean zze() {
        throw new IllegalStateException("Control is not a boolean");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator zzf() {
        return null;
    }

    public final String zzg() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzt() {
        return new zzag(this.c, this.b.zzt());
    }

    public zzag(String str) {
        this.b = zzao.zzf;
        this.c = str;
    }

    public zzag(String str, zzao zzaoVar) {
        this.b = zzaoVar;
        this.c = str;
    }
}
