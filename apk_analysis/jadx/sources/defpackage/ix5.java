package defpackage;

import android.net.Uri;
import com.google.android.gms.internal.measurement.zzsg;
import com.google.android.gms.internal.measurement.zztf;
import com.google.android.gms.internal.measurement.zzui;
import com.google.android.gms.internal.measurement.zzxa;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class ix5 implements ep2, js {
    public final Object b;

    public /* synthetic */ ix5(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.ep2
    public mk2 a() {
        return (nk2) this.b;
    }

    @Override // defpackage.js
    public ListenableFuture call() {
        final zzui zzuiVar = (zzui) this.b;
        try {
            return en3.X(zzuiVar.a((Uri) en3.V(zzuiVar.b)));
        } catch (IOException e) {
            vl9 vl9Var = new vl9(zzuiVar);
            rz5 rz5Var = zzuiVar.f;
            if (rz5Var.b()) {
                return ((e instanceof zzsg) || (e.getCause() instanceof zzsg)) ? en3.W(e) : x1.p(((zztf) rz5Var.a()).zza(e, vl9Var), zzxa.zzc(new ks() { // from class: xec
                    @Override // defpackage.ks
                    public final /* synthetic */ ListenableFuture apply(Object obj) {
                        zzui zzuiVar2 = zzuiVar;
                        return en3.X(zzuiVar2.a((Uri) en3.V(zzuiVar2.b)));
                    }
                }), zzuiVar.d);
            }
            return en3.W(e);
        }
    }
}
