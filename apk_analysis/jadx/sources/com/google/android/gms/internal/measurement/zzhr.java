package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhr extends zzadp implements zzafd {
    public zzhr() {
        throw null;
    }

    public final List zza() {
        return Collections.unmodifiableList(((zzhs) this.c).zza());
    }

    public final int zzb() {
        return ((zzhs) this.c).zzb();
    }

    public final zzhw zzc(int i) {
        return ((zzhs) this.c).zzc(i);
    }

    public final zzhr zzd(int i, zzhw zzhwVar) {
        e();
        ((zzhs) this.c).p(i, zzhwVar);
        return this;
    }

    public final zzhr zze(int i, zzhv zzhvVar) {
        e();
        ((zzhs) this.c).p(i, (zzhw) zzhvVar.zzbd());
        return this;
    }

    public final zzhr zzf(zzhw zzhwVar) {
        e();
        ((zzhs) this.c).q(zzhwVar);
        return this;
    }

    public final zzhr zzg(zzhv zzhvVar) {
        e();
        ((zzhs) this.c).q((zzhw) zzhvVar.zzbd());
        return this;
    }

    public final zzhr zzh(Iterable iterable) {
        e();
        ((zzhs) this.c).r(iterable);
        return this;
    }

    public final zzhr zzi() {
        e();
        ((zzhs) this.c).s();
        return this;
    }

    public final zzhr zzj(int i) {
        e();
        ((zzhs) this.c).t(i);
        return this;
    }

    public final String zzk() {
        return ((zzhs) this.c).zzd();
    }

    public final zzhr zzl(String str) {
        e();
        ((zzhs) this.c).u(str);
        return this;
    }

    public final boolean zzm() {
        return ((zzhs) this.c).zze();
    }

    public final long zzn() {
        return ((zzhs) this.c).zzf();
    }

    public final zzhr zzo(long j) {
        e();
        ((zzhs) this.c).v(j);
        return this;
    }

    public final long zzp() {
        return ((zzhs) this.c).zzi();
    }

    public final zzhr zzq(long j) {
        e();
        ((zzhs) this.c).w(j);
        return this;
    }

    public final zzhr zzr(long j) {
        e();
        ((zzhs) this.c).x(j);
        return this;
    }

    public final boolean zzs() {
        return ((zzhs) this.c).zzl();
    }

    public final zzhr zzt(long j) {
        e();
        ((zzhs) this.c).y(j);
        return this;
    }

    public final boolean zzu() {
        return ((zzhs) this.c).zzn();
    }

    public final long zzv() {
        return ((zzhs) this.c).zzo();
    }

    public final zzhr zzw(long j) {
        e();
        ((zzhs) this.c).n(j);
        return this;
    }
}
