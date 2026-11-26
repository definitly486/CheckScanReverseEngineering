package defpackage;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class ebc<TResult, TContinuationResult> implements OnSuccessListener<TContinuationResult>, OnFailureListener, OnCanceledListener, ecc {
    public final Executor b;
    public final SuccessContinuation c;
    public final lgc d;

    public ebc(Executor executor, SuccessContinuation successContinuation, lgc lgcVar) {
        this.b = executor;
        this.c = successContinuation;
        this.d = lgcVar;
    }

    @Override // defpackage.ecc
    public final void a(Task task) {
        this.b.execute(new gab(this, task));
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        this.d.d();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.d.c(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.d.a(tcontinuationresult);
    }

    @Override // defpackage.ecc
    public final void zzb() {
        throw new UnsupportedOperationException();
    }
}
