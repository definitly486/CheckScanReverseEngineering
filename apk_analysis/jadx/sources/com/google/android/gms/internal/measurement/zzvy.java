package com.google.android.gms.internal.measurement;

import android.os.Build;
import android.os.Trace;
import com.google.common.collect.n;
import com.google.common.collect.z;
import defpackage.ggc;
import defpackage.tv8;
import java.util.ArrayDeque;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvy {
    public static final AtomicReference a;
    public static final zzrg b;
    public static final WeakHashMap c;
    public static final ggc d;
    public static final /* synthetic */ int zzb = 0;

    static {
        n.m(5, "androidx.fragment.app.FragmentViewLifecycleOwner.handleLifecycleEvent", "com.google.android.libraries.logging.logger.transmitters.clearcut", "com.google.android.libraries.performance.primes.transmitter.clearcut", "com.google.android.libraries.performance.primes.metrics.crash.CrashMetricServiceImpl", "com.google.android.libraries.performance.primes.metrics.crash.applicationexit.ApplicationExitMetricServiceImpl");
        a = new AtomicReference(z.k);
        b = new zzrg("tiktok_systrace");
        c = new WeakHashMap();
        d = new ggc();
        new ArrayDeque();
        new ArrayDeque();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0053  */
    public static zzws zzc(zzwq zzwqVar, zzws zzwsVar) {
        zzxb zzxbVar = zzwqVar.zzc;
        zzws zzwsVar2 = zzwqVar.b;
        if (zzwsVar2 != zzwsVar) {
            if (zzwsVar2 == null) {
                zzwqVar.a = Build.VERSION.SDK_INT >= 29 ? Trace.isEnabled() : zzrk.zza(b);
            }
            if (zzwqVar.a) {
                if (zzwsVar2 != null) {
                    if (zzwsVar != null) {
                        if (zzwsVar2.zzb() == zzwsVar && zzwsVar2.zza() == Thread.currentThread()) {
                            Trace.endSection();
                        } else if (zzwsVar2 == zzwsVar.zzb() && zzwsVar.zza() == Thread.currentThread()) {
                            tv8.d(zzwsVar);
                        }
                    }
                    tv8.c(zzwsVar2);
                    if (zzwsVar != null) {
                        tv8.b(zzwsVar);
                    }
                } else if (zzwsVar != null) {
                    tv8.b(zzwsVar);
                }
            }
            if (zzwsVar2 != zzwsVar) {
                zzwqVar.b = zzwsVar;
                return zzwsVar2;
            }
        }
        return zzwsVar;
    }

    public static zzwq zzd() {
        return (zzwq) d.get();
    }
}
