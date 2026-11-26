package defpackage;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.measurement.zzkk;
import com.google.android.gms.internal.measurement.zzkt;
import com.google.android.gms.internal.measurement.zzku;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class ja5 implements OnFailureListener, RemoteCall {
    public final /* synthetic */ Object b;

    public /* synthetic */ ja5(Object obj) {
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        int i = zzkk.zza;
        ((zzkt) ((zzku) obj).getService()).zzf(new pzb((TaskCompletionSource) obj2), (String) this.b, "", null);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        exc.getClass();
        c31 c31Var = (c31) this.b;
        if (c31Var.t() instanceof no5) {
            c31Var.resumeWith(null);
        }
    }
}
