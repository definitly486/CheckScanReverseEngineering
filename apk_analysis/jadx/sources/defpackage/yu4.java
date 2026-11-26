package defpackage;

import android.net.Uri;
import com.google.android.gms.internal.measurement.zzui;
import com.google.android.gms.internal.measurement.zzxa;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class yu4 implements js {
    public Object b;
    public Object c;
    public Object d;
    public Object e;

    @Override // defpackage.js
    public ListenableFuture call() {
        final zzui zzuiVar = (zzui) this.b;
        ks ksVar = new ks() { // from class: uec
            @Override // defpackage.ks
            public final /* synthetic */ ListenableFuture apply(Object obj) {
                ListenableFuture listenableFuture;
                zzui zzuiVar2 = zzuiVar;
                synchronized (zzuiVar2.h) {
                    listenableFuture = zzuiVar2.j;
                }
                return listenableFuture;
            }
        };
        jn2 jn2Var = jn2.INSTANCE;
        final x1.a aVarP = x1.p((ListenableFuture) this.c, ksVar, jn2Var);
        final x1.a aVarP2 = x1.p(aVarP, (ks) this.d, (Executor) this.e);
        return x1.p(aVarP2, zzxa.zzc(new ks() { // from class: vec
            @Override // defpackage.ks
            public final ListenableFuture apply(Object obj) {
                final zzui zzuiVar2 = zzuiVar;
                x1.a aVar = aVarP;
                final x1.a aVar2 = aVarP2;
                if (en3.V(aVar).equals(en3.V(aVar2))) {
                    return en3.X(obj);
                }
                x1.a aVarP3 = x1.p(aVar2, zzxa.zzc(new ks() { // from class: wec
                    @Override // defpackage.ks
                    public final /* synthetic */ ListenableFuture apply(Object obj2) throws IOException {
                        zzui zzuiVar3 = zzuiVar2;
                        x1.a aVar3 = aVar2;
                        zzuiVar3.b((Uri) en3.V(zzuiVar3.b), obj2);
                        synchronized (zzuiVar3.h) {
                            zzuiVar3.j = aVar3;
                        }
                        return en3.X(obj2);
                    }
                }), zzuiVar2.d);
                synchronized (zzuiVar2.h) {
                }
                return aVarP3;
            }
        }), jn2Var);
    }
}
