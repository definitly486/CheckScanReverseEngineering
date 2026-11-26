package com.google.android.gms.internal.mlkit_vision_common;

import android.os.SystemClock;
import androidx.collection.SieveCacheKt;
import defpackage.ah;
import java.io.Closeable;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class zzlx implements Closeable {
    public static final HashMap g = new HashMap();
    public int b;
    public long c;
    public long d;
    public long e = SieveCacheKt.NodeLinkMask;
    public long f = SieveCacheKt.NodeMetaAndPreviousMask;

    public zzlx(String str) {
    }

    public static zzlx zze(String str) {
        zzmw.zza();
        if (!zzmw.zzb()) {
            return a.h;
        }
        HashMap map = g;
        if (map.get("detectorTaskWithResource#run") == null) {
            map.put("detectorTaskWithResource#run", new zzlx("detectorTaskWithResource#run"));
        }
        return (zzlx) map.get("detectorTaskWithResource#run");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long j = this.c;
        if (j != 0) {
            zzd(j);
        } else {
            ah.f("Did you forget to call start()?");
        }
    }

    public zzlx zzb() {
        this.c = SystemClock.elapsedRealtimeNanos() / 1000;
        return this;
    }

    public void zzc(long j) {
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos() / 1000;
        long j2 = this.d;
        if (j2 != 0 && jElapsedRealtimeNanos - j2 >= 1000000) {
            this.b = 0;
            this.c = 0L;
            this.e = SieveCacheKt.NodeLinkMask;
            this.f = SieveCacheKt.NodeMetaAndPreviousMask;
        }
        this.d = jElapsedRealtimeNanos;
        this.b++;
        this.e = Math.min(this.e, j);
        this.f = Math.max(this.f, j);
        if (this.b % 50 == 0) {
            Locale locale = Locale.US;
            zzmw.zza();
        }
        if (this.b % 500 == 0) {
            this.b = 0;
            this.c = 0L;
            this.e = SieveCacheKt.NodeLinkMask;
            this.f = SieveCacheKt.NodeMetaAndPreviousMask;
        }
    }

    public void zzd(long j) {
        zzc((SystemClock.elapsedRealtimeNanos() / 1000) - j);
    }
}
