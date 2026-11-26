package defpackage;

import android.net.Uri;
import com.google.android.gms.internal.measurement.zzru;
import com.google.android.gms.internal.measurement.zztp;
import com.google.android.gms.internal.measurement.zzui;
import com.google.android.gms.internal.measurement.zzuv;
import com.google.android.gms.internal.measurement.zzuy;
import com.google.android.gms.internal.measurement.zzuz;
import com.google.android.gms.internal.measurement.zzvm;
import com.google.android.gms.internal.measurement.zzwb;
import com.google.android.gms.internal.measurement.zzwi;
import com.google.android.gms.internal.measurement.zzxa;
import com.google.android.gms.internal.measurement.zzxd;
import com.google.android.gms.internal.measurement.zzxh;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class ifc {
    public final String a;
    public final x1.a b;
    public final zzuv c;
    public final t13 d;
    public final zzvm e;
    public final zzvm f;
    public final Object g;
    public final zzwb h;
    public List i;

    public ifc(zzuv zzuvVar, x1.a aVar) {
        final zztp zztpVar = (zztp) this;
        cfc cfcVar = new cfc(zztpVar);
        jn2 jn2Var = jn2.INSTANCE;
        this.f = new zzvm(cfcVar, jn2Var);
        this.g = new Object();
        this.i = new ArrayList();
        this.c = zzuvVar;
        this.b = aVar;
        this.a = zzuvVar.zzc();
        final zzui zzuiVar = (zzui) zzuvVar;
        this.e = new zzvm(new js() { // from class: afc
            @Override // defpackage.js
            public final ListenableFuture call() {
                final zzui zzuiVar2 = zzuiVar;
                zzuiVar2.getClass();
                return en3.Y(x1.p(zzuiVar2.b, zzxa.zzc(new ks() { // from class: zec
                    @Override // defpackage.ks
                    public final ListenableFuture apply(Object obj) {
                        Uri uri = (Uri) obj;
                        zzui zzuiVar3 = zzuiVar2;
                        zzuiVar3.getClass();
                        Uri uriZza = zzuz.zza(uri, ".bak");
                        try {
                            zzru zzruVar = zzuiVar3.e;
                            if (zzruVar.zzc(uriZza)) {
                                zzruVar.zzd(uriZza, uri);
                            }
                            return u24.c;
                        } catch (IOException e) {
                            return en3.W(e);
                        }
                    }
                }), zzuiVar2.d));
            }
        }, jn2Var);
        this.d = new t13();
        this.h = zzwb.zzb();
        zza(new ks() { // from class: ffc
            @Override // defpackage.ks
            public final /* synthetic */ ListenableFuture apply(Object obj) {
                return zztpVar.e.zza();
            }
        });
    }

    public final void zza(ks ksVar) {
        synchronized (this.g) {
            this.i.add(ksVar);
        }
    }

    public final ListenableFuture zzb(final lm3 lm3Var, Executor executor) {
        ks ksVarZzc = zzxa.zzc(new ks() { // from class: dfc
            @Override // defpackage.ks
            public final /* synthetic */ ListenableFuture apply(Object obj) {
                return en3.X(lm3Var.apply(obj));
            }
        });
        du8 du8VarZza = zzxh.zza();
        o8.l(du8VarZza, "ticker");
        du8VarZza.a();
        zzwi zzwiVarZza = this.h.zza("Update ".concat(String.valueOf(this.a)), zzxd.zza);
        try {
            ListenableFuture listenableFutureZza = this.f.zza();
            t13 t13Var = this.d;
            jr7 jr7Var = new jr7(listenableFutureZza);
            jn2 jn2Var = jn2.INSTANCE;
            t13Var.a(jr7Var, jn2Var);
            i1a i1aVar = new i1a();
            i1aVar.b = this;
            i1aVar.c = listenableFutureZza;
            i1aVar.d = ksVarZzc;
            i1aVar.e = executor;
            ListenableFuture listenableFutureA = t13Var.a(zzxa.zzb(i1aVar), jn2Var);
            en3.propagateCancellation(listenableFutureA, listenableFutureZza);
            en3.Y(this.b);
            ListenableFuture listenableFutureZza2 = zzuy.zza(listenableFutureA);
            zzwiVarZza.zza(listenableFutureZza2);
            zzwiVarZza.close();
            return listenableFutureZza2;
        } catch (Throwable th) {
            try {
                zzwiVarZza.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
