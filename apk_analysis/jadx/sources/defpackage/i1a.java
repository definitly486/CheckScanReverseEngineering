package defpackage;

import com.google.android.gms.internal.measurement.zzxa;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class i1a implements js {
    public Object b;
    public Object c;
    public Object d;
    public Object e;

    @Override // defpackage.js
    public ListenableFuture call() {
        final ifc ifcVar = (ifc) this.b;
        final ks ksVar = (ks) this.d;
        final Executor executor = (Executor) this.e;
        return x1.p((ListenableFuture) this.c, zzxa.zzc(new ks() { // from class: efc
            @Override // defpackage.ks
            public final /* synthetic */ ListenableFuture apply(Object obj) {
                return ifcVar.c.zzb(ksVar, executor, null);
            }
        }), jn2.INSTANCE);
    }
}
