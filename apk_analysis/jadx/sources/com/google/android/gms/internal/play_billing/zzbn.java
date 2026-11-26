package com.google.android.gms.internal.play_billing;

import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.me0;
import defpackage.nxa;
import defpackage.xp;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbn {
    public final zzbq a;
    public boolean b;
    public long c;
    public long d;

    public zzbn(zzbq zzbqVar) {
        zzbl.zzc(zzbqVar, "ticker");
        this.a = zzbqVar;
    }

    public static zzbn zzb(zzbq zzbqVar) {
        zzbn zzbnVar = new zzbn(zzbqVar);
        zzbnVar.zze();
        return zzbnVar;
    }

    public static zzbn zzc(zzbq zzbqVar) {
        return new zzbn(zzbqVar);
    }

    public final String toString() {
        TimeUnit timeUnit;
        String str;
        long jZza = this.b ? (this.a.zza() - this.d) + this.c : this.c;
        long j = jZza / 86400000000000L;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (j > 0) {
            timeUnit = TimeUnit.DAYS;
        } else if (jZza / 3600000000000L > 0) {
            timeUnit = TimeUnit.HOURS;
        } else if (jZza / 60000000000L > 0) {
            timeUnit = TimeUnit.MINUTES;
        } else if (jZza / C.NANOS_PER_SECOND > 0) {
            timeUnit = TimeUnit.SECONDS;
        } else if (jZza / 1000000 > 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        } else {
            timeUnit = jZza / 1000 > 0 ? TimeUnit.MICROSECONDS : timeUnit2;
        }
        String str2 = String.format(Locale.ROOT, "%.4g", Double.valueOf(jZza / timeUnit2.convert(1L, timeUnit)));
        switch (nxa.a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = CmcdData.STREAMING_FORMAT_SS;
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = CmcdData.STREAMING_FORMAT_HLS;
                break;
            case 7:
                str = "d";
                break;
            default:
                xp.g();
                return null;
        }
        return me0.c(str2, " ", str);
    }

    public final long zza(TimeUnit timeUnit) {
        return timeUnit.convert(this.b ? (this.a.zza() - this.d) + this.c : this.c, TimeUnit.NANOSECONDS);
    }

    public final zzbn zzd() {
        this.c = 0L;
        this.b = false;
        return this;
    }

    public final zzbn zze() {
        zzbl.zze(!this.b, "This stopwatch is already running.");
        this.b = true;
        this.d = this.a.zza();
        return this;
    }

    public final zzbn zzf() {
        long jZza = this.a.zza();
        zzbl.zze(this.b, "This stopwatch is already stopped.");
        this.b = false;
        this.c = (jZza - this.d) + this.c;
        return this;
    }

    public final boolean zzg() {
        return this.b;
    }

    public zzbn() {
        this.a = zzbq.zzb();
    }
}
