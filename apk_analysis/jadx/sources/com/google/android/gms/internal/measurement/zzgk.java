package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgk extends zzadp implements zzafd {
    public zzgk() {
        throw null;
    }

    public final int zza() {
        return ((zzgl) this.c).zzf();
    }

    public final zzgj zzb(int i) {
        return ((zzgl) this.c).zzh(i);
    }

    public final zzgk zzc(int i, zzgi zzgiVar) {
        e();
        ((zzgl) this.c).n(i, (zzgj) zzgiVar.zzbd());
        return this;
    }

    public final List zzd() {
        return Collections.unmodifiableList(((zzgl) this.c).zzi());
    }

    public final zzgk zze() {
        e();
        ((zzgl) this.c).o();
        return this;
    }

    public final zzgk zzf() {
        e();
        ((zzgl) this.c).p();
        return this;
    }

    public final List zzg() {
        return Collections.unmodifiableList(((zzgl) this.c).zzl());
    }

    public final String zzh() {
        return ((zzgl) this.c).zzm();
    }

    public final List zzi() {
        return Collections.unmodifiableList(((zzgl) this.c).zzr());
    }
}
