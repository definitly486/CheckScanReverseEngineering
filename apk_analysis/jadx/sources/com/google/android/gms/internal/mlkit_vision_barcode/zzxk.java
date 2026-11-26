package com.google.android.gms.internal.mlkit_vision_barcode;

import android.content.Context;
import com.google.android.gms.common.internal.GmsLogger;
import defpackage.ihc;
import defpackage.q8b;
import defpackage.xt7;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class zzxk {
    public static final GmsLogger r = new GmsLogger("AutoZoom");
    public final zzxm a;
    public final AtomicBoolean b;
    public final Object c;
    public final zzbw d;
    public final ScheduledExecutorService e;
    public final zzbb f;
    public final zzwp g;
    public final String h;
    public Executor i;
    public float j;
    public float k;
    public long l;
    public long m;
    public ScheduledFuture n;
    public String o;
    public boolean p;
    public int q;

    public zzxk(Context context, zzxm zzxmVar, String str) {
        zzg.zza();
        ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(2));
        zzbb zzbbVarZza = zzar.zza();
        zzwp zzwpVar = new zzwp(context, new xt7(context), new zzwi(context, zzwh.zzd("scanner-auto-zoom").zzd()), "scanner-auto-zoom");
        this.c = new Object();
        this.a = zzxmVar;
        this.b = new AtomicBoolean(false);
        this.d = zzbw.zzz();
        this.e = scheduledExecutorServiceUnconfigurableScheduledExecutorService;
        this.f = zzbbVarZza;
        this.g = zzwpVar;
        this.h = str;
        this.q = 1;
        this.j = 1.0f;
        this.k = -1.0f;
        this.l = zzbbVarZza.zza();
    }

    public static zzxk zzd(Context context, String str) {
        return new zzxk(context, zzxm.zza, str);
    }

    public static /* synthetic */ void zzf(zzxk zzxkVar) {
        ScheduledFuture scheduledFuture;
        synchronized (zzxkVar.c) {
            try {
                if (zzxkVar.q == 2 && !zzxkVar.b.get() && (scheduledFuture = zzxkVar.n) != null && !scheduledFuture.isCancelled()) {
                    if (zzxkVar.j > 1.0f && zzxkVar.zza() >= zzxkVar.a.i()) {
                        r.i("AutoZoom", "Reset zoom = 1");
                        zzxkVar.a(1.0f, zzrc.SCANNER_AUTO_ZOOM_AUTO_RESET, null);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(float f, zzrc zzrcVar, zzxn zzxnVar) {
        synchronized (this.c) {
        }
    }

    public final void b(zzrc zzrcVar, float f, float f2, zzxn zzxnVar) {
        long jZza;
        if (this.o != null) {
            zzuo zzuoVar = new zzuo();
            zzuoVar.zza(this.h);
            String str = this.o;
            str.getClass();
            zzuoVar.zze(str);
            zzuoVar.zzf(Float.valueOf(f));
            zzuoVar.zzc(Float.valueOf(f2));
            synchronized (this.c) {
                jZza = (this.f.zza() - this.m) / 1000000;
            }
            zzuoVar.zzb(Long.valueOf(jZza));
            if (zzxnVar != null) {
                zzup zzupVar = new zzup();
                zzupVar.zzc(Float.valueOf(zzxnVar.b()));
                zzupVar.zze(Float.valueOf(zzxnVar.d()));
                zzupVar.zzb(Float.valueOf(zzxnVar.a()));
                zzupVar.zzd(Float.valueOf(zzxnVar.c()));
                zzupVar.zza(Float.valueOf(0.0f));
                zzuoVar.zzd(zzupVar.zzf());
            }
            zzwp zzwpVar = this.g;
            zzrd zzrdVar = new zzrd();
            zzrdVar.zzi(zzuoVar.zzh());
            zzwpVar.zzd(zzws.zzf(zzrdVar), zzrcVar);
        }
    }

    public final void c(boolean z) {
        ScheduledFuture scheduledFuture;
        synchronized (this.c) {
            try {
                this.d.zzs();
                this.l = this.f.zza();
                if (z && (scheduledFuture = this.n) != null) {
                    scheduledFuture.cancel(false);
                    this.n = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final long zza() {
        long jZza;
        synchronized (this.c) {
            jZza = (this.f.zza() - this.l) / 1000000;
        }
        return jZza;
    }

    /* JADX WARN: Code duplicated, block: B:81:0x024f A[Catch: all -> 0x0191, TryCatch #0 {all -> 0x0191, blocks: (B:51:0x0180, B:53:0x018e, B:57:0x0195, B:58:0x01c1, B:60:0x01c7, B:63:0x01f0, B:72:0x0206, B:74:0x020e, B:76:0x021d, B:78:0x0228, B:79:0x024d, B:81:0x024f, B:82:0x026c), top: B:91:0x0180, outer: #1 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:81:0x024f, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    public final void zzi(int i, zzxn zzxnVar) {
        float fE;
        synchronized (this.c) {
            try {
                if (this.q != 2) {
                    return;
                }
                if (zzxnVar.f() && (!this.a.l() || this.a.b() <= 0.0f)) {
                    if (!this.p) {
                        zzrc zzrcVar = zzrc.SCANNER_AUTO_ZOOM_FIRST_ATTEMPT;
                        float f = this.j;
                        b(zzrcVar, f, f, zzxnVar);
                        this.p = true;
                    }
                    GmsLogger gmsLogger = r;
                    Locale locale = Locale.getDefault();
                    Float fValueOf = Float.valueOf(zzxnVar.b());
                    Float fValueOf2 = Float.valueOf(zzxnVar.d());
                    Float fValueOf3 = Float.valueOf(zzxnVar.a());
                    Float fValueOf4 = Float.valueOf(zzxnVar.c());
                    Float fValueOf5 = Float.valueOf(0.0f);
                    Integer numValueOf = Integer.valueOf(i);
                    gmsLogger.i("AutoZoom", String.format(locale, "Process PredictedArea: [%.2f, %.2f, %.2f, %.2f, %.2f], frameIndex = %d", fValueOf, fValueOf2, fValueOf3, fValueOf4, fValueOf5, numValueOf));
                    this.d.zzt(numValueOf, zzxnVar);
                    Set setZzw = this.d.zzw();
                    if (setZzw.size() - 1 > this.a.h()) {
                        Iterator it = setZzw.iterator();
                        int i2 = i;
                        while (it.hasNext()) {
                            int iIntValue = ((Integer) it.next()).intValue();
                            if (i2 > iIntValue) {
                                i2 = iIntValue;
                            }
                        }
                        r.i("AutoZoom", "Removing recent frameIndex = " + i2);
                        this.d.zzf(Integer.valueOf(i2));
                    }
                    HashSet hashSet = new HashSet();
                    for (Map.Entry entry : this.d.zzu()) {
                        if (((Integer) entry.getKey()).intValue() != i) {
                            zzxn zzxnVar2 = (zzxn) entry.getValue();
                            if (zzxnVar2.f() && zzxnVar.f()) {
                                ihc ihcVar = new ihc(Math.max(zzxnVar2.b(), zzxnVar.b()), Math.max(zzxnVar2.d(), zzxnVar.d()), Math.min(zzxnVar2.a(), zzxnVar.a()), Math.min(zzxnVar2.c(), zzxnVar.c()));
                                fE = ihcVar.e() / ((zzxnVar2.e() + zzxnVar.e()) - ihcVar.e());
                            } else {
                                fE = 0.0f;
                            }
                            if (fE >= this.a.d()) {
                                hashSet.add((Integer) entry.getKey());
                            }
                        }
                    }
                    if (hashSet.size() >= this.a.g() || (this.a.l() && this.a.a() <= 0.0f)) {
                        synchronized (this.c) {
                            try {
                                if (zza() >= this.a.j()) {
                                    zzdv zzdvVarListIterator = zzcs.zzi(Float.valueOf(zzxnVar.b()), Float.valueOf(zzxnVar.d()), Float.valueOf(zzxnVar.a()), Float.valueOf(zzxnVar.c())).listIterator(0);
                                    float f2 = 1.0E9f;
                                    while (zzdvVarListIterator.hasNext()) {
                                        float fC = (this.a.c() / 2.0f) / Math.max(Math.abs(((Float) zzdvVarListIterator.next()).floatValue() - 0.5f), 0.001f);
                                        if (f2 > fC) {
                                            f2 = fC;
                                        }
                                    }
                                    float f3 = this.j * f2;
                                    float f4 = this.k;
                                    if (f3 < 1.0f) {
                                        f3 = 1.0f;
                                    }
                                    if (f4 <= 0.0f || f3 <= f4) {
                                        f4 = f3;
                                    }
                                    if (this.a.k()) {
                                        float f5 = this.j;
                                        float f6 = (f4 - f5) / f5;
                                        if (f6 > this.a.e() || f6 < (-this.a.f())) {
                                            r.i("AutoZoom", "Going to set zoom = " + f4);
                                            a(f4, zzrc.SCANNER_AUTO_ZOOM_AUTO_ZOOM, zzxnVar);
                                        } else {
                                            r.i("AutoZoom", "Auto zoom to " + f4 + " is filtered by threshold");
                                            this.l = this.f.zza();
                                        }
                                    } else {
                                        r.i("AutoZoom", "Going to set zoom = " + f4);
                                        a(f4, zzrc.SCANNER_AUTO_ZOOM_AUTO_ZOOM, zzxnVar);
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzj() {
        synchronized (this.c) {
            try {
                if (this.q == 4) {
                    return;
                }
                zzn(false);
                this.e.shutdown();
                this.q = 4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzk(float f) {
        synchronized (this.c) {
            zzaz.zzd(f >= 1.0f);
            this.k = f;
        }
    }

    public final void zzm() {
        synchronized (this.c) {
            try {
                int i = this.q;
                if (i != 2 && i != 4) {
                    c(true);
                    this.n = this.e.scheduleWithFixedDelay(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_barcode.zzxi
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzxk.zzf(this.zza);
                        }
                    }, 500L, 500L, TimeUnit.MILLISECONDS);
                    if (this.q == 1) {
                        this.o = UUID.randomUUID().toString();
                        this.m = this.f.zza();
                        this.p = false;
                        zzrc zzrcVar = zzrc.SCANNER_AUTO_ZOOM_START;
                        float f = this.j;
                        b(zzrcVar, f, f, null);
                    } else {
                        zzrc zzrcVar2 = zzrc.SCANNER_AUTO_ZOOM_RESUME;
                        float f2 = this.j;
                        b(zzrcVar2, f2, f2, null);
                    }
                    this.q = 2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzn(boolean z) {
        synchronized (this.c) {
            try {
                int i = this.q;
                if (i != 1 && i != 4) {
                    c(true);
                    if (z) {
                        if (!this.p) {
                            zzrc zzrcVar = zzrc.SCANNER_AUTO_ZOOM_FIRST_ATTEMPT;
                            float f = this.j;
                            b(zzrcVar, f, f, null);
                        }
                        zzrc zzrcVar2 = zzrc.SCANNER_AUTO_ZOOM_SCAN_SUCCESS;
                        float f2 = this.j;
                        b(zzrcVar2, f2, f2, null);
                    } else {
                        zzrc zzrcVar3 = zzrc.SCANNER_AUTO_ZOOM_SCAN_FAILED;
                        float f3 = this.j;
                        b(zzrcVar3, f3, f3, null);
                    }
                    this.p = false;
                    this.q = 1;
                    this.o = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzo(q8b q8bVar, Executor executor) {
        this.i = executor;
    }
}
