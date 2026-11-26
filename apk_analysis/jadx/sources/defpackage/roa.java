package defpackage;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.p001authapiphone.zzab;
import com.google.android.gms.internal.p001authapiphone.zzah;
import com.google.android.gms.internal.p001authapiphone.zzk;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class roa implements RemoteCall, OnCompleteListener {
    public final /* synthetic */ Object b;

    public /* synthetic */ roa(Object obj) {
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zzk) ((zzah) obj).getService()).zze(new kfc((zzab) this.b, (TaskCompletionSource) obj2));
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public /* synthetic */ void onComplete(Task task) {
        mwa mwaVar = (mwa) this.b;
        if (task.isSuccessful()) {
            mwaVar.setResult(Status.RESULT_SUCCESS);
            return;
        }
        if (task.isCanceled()) {
            mwaVar.setFailedResult(Status.RESULT_CANCELED);
            return;
        }
        Exception exception = task.getException();
        if (exception instanceof ApiException) {
            mwaVar.setFailedResult(((ApiException) exception).getStatus());
        } else {
            mwaVar.setFailedResult(Status.RESULT_INTERNAL_ERROR);
        }
    }
}
