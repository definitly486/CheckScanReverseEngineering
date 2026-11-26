package defpackage;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.internal.measurement.zztg;
import com.google.android.gms.internal.measurement.zzui;
import com.google.android.gms.internal.measurement.zzxa;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class vl9 implements zztg {
    public final Object a;

    public vl9(Context context) {
        this.a = context.getSharedPreferences("metrics_sdk_sp", 0);
    }

    @Override // com.google.android.gms.internal.measurement.zztg
    public ListenableFuture zza(ListenableFuture listenableFuture) {
        final zzui zzuiVar = (zzui) this.a;
        return x1.p(listenableFuture, zzxa.zzc(new ks() { // from class: yec
            @Override // defpackage.ks
            public final ListenableFuture apply(Object obj) throws IOException {
                zzui zzuiVar2 = zzuiVar;
                zzuiVar2.b((Uri) en3.V(zzuiVar2.b), obj);
                return u24.c;
            }
        }), zzuiVar.d);
    }

    public /* synthetic */ vl9(zzui zzuiVar) {
        this.a = zzuiVar;
    }
}
