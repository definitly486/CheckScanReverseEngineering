package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzabz;
import com.google.android.gms.internal.measurement.zzlk;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzqm;
import com.google.android.gms.internal.measurement.zzqv;
import com.google.common.collect.n;
import com.google.common.collect.q;
import com.google.common.collect.x;
import com.google.common.collect.z;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.cac;
import defpackage.ks;
import defpackage.n3c;
import defpackage.nd5;
import defpackage.pcc;
import defpackage.scc;
import defpackage.x1;
import defpackage.xac;
import defpackage.xr4;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpg {
    public static final zzpe h = new zzpe(0);
    public static final cac i;
    public static final /* synthetic */ int zzb = 0;
    public volatile scc a;
    public final zzlk b;
    public final String c;
    public final boolean d;
    public final n e;
    public final zzps f;
    public final zzqt g;

    static {
        int i2 = n.d;
        i = new cac(xac.b, false, z.k);
    }

    public zzpg(zzlk zzlkVar, cac cacVar) {
        this.b = zzlkVar;
        Context contextZzc = zzlkVar.zzc();
        String str = cacVar.d;
        if (str == null) {
            str = (String) cacVar.a.apply(contextZzc);
            cacVar.d = str;
        }
        this.c = str;
        this.d = cacVar.b;
        this.e = cacVar.c;
        this.a = null;
        this.f = new zzps();
        this.g = new zzqt(zzlkVar, str, "", false);
    }

    public static zzpe zzd() {
        return h;
    }

    public final scc a() {
        scc sccVar;
        scc sccVar2 = this.a;
        if (sccVar2 != null) {
            return sccVar2;
        }
        synchronized (this) {
            try {
                sccVar = this.a;
                if (sccVar == null) {
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
                    try {
                        scc sccVarA = this.g.a();
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                        int i2 = sccVarA.e.b - 2;
                        if (i2 == 15 || i2 == 16) {
                            sccVar = sccVarA;
                        } else {
                            zzlk zzlkVar = this.b;
                            zzlkVar.zzd().zza();
                            if (this.d || this.g.b() || !sccVarA.b.isEmpty()) {
                                zzlkVar.zzg().execute(new n3c(this, 1));
                                zzlkVar.zzk().zza(sccVarA.c, this.e, this.c);
                                if (this.g.b()) {
                                    zzlkVar.zzg().execute(new Runnable() { // from class: jac
                                        @Override // java.lang.Runnable
                                        public final /* synthetic */ void run() {
                                            zzpg zzpgVar = this.b;
                                            zzpgVar.b.zzf().zza(zzabz.FILE, zzpgVar.d, pac.a);
                                        }
                                    });
                                }
                                sccVar = sccVarA;
                            } else {
                                zzlkVar.zzg().execute(new Runnable() { // from class: gac
                                    @Override // java.lang.Runnable
                                    public final /* synthetic */ void run() {
                                        this.b.b();
                                    }
                                });
                                sccVar = new scc(zzqv.zzi(), sccVarA.e);
                            }
                        }
                        if (!this.d || sccVar.e.b != 17) {
                            this.a = sccVar;
                        }
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return sccVar;
    }

    public final void b() {
        final zzqt zzqtVar = this.g;
        zzlk zzlkVar = zzqtVar.a;
        ListenableFuture listenableFutureZza = zzlkVar.zzh().zza(zzqtVar.c, "");
        xr4 xr4VarZzg = zzlkVar.zzg();
        int i2 = x1.l;
        final x1.b bVar = new x1.b(listenableFutureZza, pcc.b);
        listenableFutureZza.addListener(bVar, nd5.a(xr4VarZzg, bVar));
        ks ksVar = new ks() { // from class: rbc
            @Override // defpackage.ks
            public final /* synthetic */ ListenableFuture apply(Object obj) {
                return zzqtVar.zzc((zzqv) obj);
            }
        };
        zzlk zzlkVar2 = this.b;
        x1.p(bVar, ksVar, zzlkVar2.zzg()).addListener(new Runnable() { // from class: sac
            /* JADX WARN: Code duplicated, block: B:20:0x0039 A[Catch: CancellationException -> 0x001f, ExecutionException -> 0x0021, TryCatch #3 {CancellationException -> 0x001f, ExecutionException -> 0x0021, blocks: (B:3:0x0004, B:5:0x001a, B:18:0x002c, B:20:0x0039, B:22:0x0041, B:28:0x004f, B:30:0x0053, B:12:0x0023, B:33:0x007c, B:14:0x0026, B:17:0x002b, B:26:0x0047, B:27:0x004e), top: B:39:0x0004, inners: #1 }] */
            /* JADX WARN: Code duplicated, block: B:22:0x0041 A[Catch: CancellationException -> 0x001f, ExecutionException -> 0x0021, TRY_LEAVE, TryCatch #3 {CancellationException -> 0x001f, ExecutionException -> 0x0021, blocks: (B:3:0x0004, B:5:0x001a, B:18:0x002c, B:20:0x0039, B:22:0x0041, B:28:0x004f, B:30:0x0053, B:12:0x0023, B:33:0x007c, B:14:0x0026, B:17:0x002b, B:26:0x0047, B:27:0x004e), top: B:39:0x0004, inners: #1 }] */
            /* JADX WARN: Code duplicated, block: B:36:0x0085  */
            /* JADX WARN: Code duplicated, block: B:40:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:42:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Runnable
            public final void run() {
                scc sccVar;
                x xVar;
                x xVar2;
                zzqm zzqmVarZzj;
                final zzpg zzpgVar = this.b;
                try {
                    zzqv zzqvVar = (zzqv) en3.V(bVar);
                    scc sccVar2 = new scc(zzqvVar, new rcc(6, 2));
                    boolean z = zzpgVar.d;
                    if (z || (sccVar = zzpgVar.a) == null) {
                        synchronized (zzpgVar) {
                            if (!z) {
                                sccVar = zzpgVar.a;
                                if (sccVar != null) {
                                    xVar = sccVar.d;
                                    xVar2 = sccVar2.d;
                                    xVar.getClass();
                                    if (!q.b(xVar2, xVar)) {
                                        zzqmVarZzj = zzpgVar.b.zzj();
                                        if (zzqmVarZzj != null) {
                                            zzqmVarZzj.zza();
                                            return;
                                        }
                                        return;
                                    }
                                }
                            }
                            zzpgVar.a = sccVar2;
                            zzpgVar.f.zzb();
                        }
                    } else {
                        xVar = sccVar.d;
                        xVar2 = sccVar2.d;
                        xVar.getClass();
                        if (!q.b(xVar2, xVar)) {
                            zzqmVarZzj = zzpgVar.b.zzj();
                            if (zzqmVarZzj != null) {
                                zzqmVarZzj.zza();
                                return;
                            }
                            return;
                        }
                    }
                    if (zzpgVar.d) {
                        zzlk zzlkVar3 = zzpgVar.b;
                        ListenableFuture listenableFutureZzb = zzlkVar3.zzh().zzb(zzqvVar.zza());
                        lm3 lm3Var = new lm3() { // from class: vac
                            @Override // defpackage.lm3
                            public final /* synthetic */ Object apply(Object obj) {
                                Log.w("FlagStore", "Failed to commit to updated flags for ".concat(String.valueOf(zzpgVar.c)), (Throwable) obj);
                                return null;
                            }
                        };
                        xr4 xr4VarZzg2 = zzlkVar3.zzg();
                        int i3 = p.m;
                        p.b bVar2 = new p.b(listenableFutureZzb, Throwable.class, lm3Var);
                        listenableFutureZzb.addListener(bVar2, nd5.a(xr4VarZzg2, bVar2));
                    }
                } catch (CancellationException e) {
                    e = e;
                    if (e.getCause() instanceof SecurityException) {
                    }
                    String str = zzpgVar.c;
                    Log.w("FlagStore", kh.c(new StringBuilder(String.valueOf(str).length() + 64), "Unable to update local snapshot for ", str, ", may result in stale flags."), e);
                } catch (ExecutionException e2) {
                    e = e2;
                    if (e.getCause() instanceof SecurityException) {
                        String str2 = zzpgVar.c;
                        Log.w("FlagStore", kh.c(new StringBuilder(String.valueOf(str2).length() + 64), "Unable to update local snapshot for ", str2, ", may result in stale flags."), e);
                    }
                }
            }
        }, zzlkVar2.zzg());
    }
}
