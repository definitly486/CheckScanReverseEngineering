package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhz extends zzadp implements zzafd {
    public zzhz() {
        throw null;
    }

    public final List zza() {
        return Collections.unmodifiableList(((zzib) this.c).zza());
    }

    public final int zzb() {
        return ((zzib) this.c).zzb();
    }

    public final zzid zzc(int i) {
        return ((zzib) this.c).zzc(i);
    }

    public final zzhz zzd(int i, zzic zzicVar) {
        e();
        ((zzib) this.c).n(i, (zzid) zzicVar.zzbd());
        return this;
    }

    public final zzhz zze(zzic zzicVar) {
        e();
        ((zzib) this.c).o((zzid) zzicVar.zzbd());
        return this;
    }

    public final zzhz zzf(Iterable iterable) {
        e();
        ((zzib) this.c).p(iterable);
        return this;
    }

    public final zzhz zzg() {
        e();
        ((zzib) this.c).q();
        return this;
    }

    public final String zzh() {
        return ((zzib) this.c).zze();
    }

    public final zzhz zzi(String str) {
        e();
        ((zzib) this.c).r(str);
        return this;
    }

    public final zzhz zzj(String str) {
        e();
        ((zzib) this.c).s(str);
        return this;
    }
}
