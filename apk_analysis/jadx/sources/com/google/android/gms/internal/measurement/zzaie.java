package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaie implements zzaid {
    public static final zzpo a = new zzpo(zzagr.zzc(), 6);

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final boolean zza() {
        return ((Boolean) a.zza(0, "measurement.test.boolean_flag", false).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final long zzb() {
        return ((Long) a.zzb(1, "measurement.test.cached_long_flag", -1L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final double zzc() {
        return ((Double) a.zzc(2, "measurement.test.double_flag", -3.0d).get()).doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final long zzd() {
        return ((Long) a.zzb(3, "measurement.test.int_flag", -2L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final long zze() {
        return ((Long) a.zzb(4, "measurement.test.long_flag", -1L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaid
    public final String zzf() {
        return (String) a.zzd(5, "measurement.test.string_flag", "---").get();
    }
}
