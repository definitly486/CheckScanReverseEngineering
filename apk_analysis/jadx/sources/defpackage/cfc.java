package defpackage;

import com.google.android.gms.internal.measurement.zztp;
import com.google.android.gms.internal.measurement.zzwi;
import com.google.android.gms.internal.measurement.zzxd;
import com.google.common.collect.j;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class cfc implements js {
    public List b;
    public final /* synthetic */ zztp c;

    public /* synthetic */ cfc(zztp zztpVar) {
        this.c = zztpVar;
    }

    @Override // defpackage.js
    public final ListenableFuture call() {
        zztp zztpVar = this.c;
        zzwi zzwiVarZza = zztpVar.h.zza("Initialize ".concat(String.valueOf(zztpVar.a)), zzxd.zza);
        try {
            synchronized (zztpVar.g) {
                try {
                    if (this.b == null) {
                        this.b = zztpVar.i;
                        zztpVar.i = Collections.EMPTY_LIST;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            ArrayList arrayList = new ArrayList(this.b.size());
            hfc hfcVar = new hfc(this.c);
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                try {
                    arrayList.add(((ks) it.next()).apply(hfcVar));
                } catch (Exception e) {
                    arrayList.add(en3.W(e));
                }
            }
            j jVarN = j.n(arrayList);
            Callable callable = new Callable() { // from class: bfc
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    cfc cfcVar = this.b;
                    synchronized (cfcVar.c.g) {
                        cfcVar.b = null;
                    }
                    return null;
                }
            };
            jn2 jn2Var = jn2.INSTANCE;
            go1 go1Var = new go1(jVarN, true);
            go1Var.p = new go1.b(callable, jn2Var);
            go1Var.s();
            zzwiVarZza.zza(go1Var);
            zzwiVarZza.close();
            return go1Var;
        } catch (Throwable th2) {
            try {
                zzwiVarZza.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
