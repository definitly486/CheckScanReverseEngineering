package defpackage;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public final class c6a implements OnCompleteListener {
    public final Object b;

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public /* synthetic */ void onComplete(Task task) {
        p1b p1bVar = (p1b) this.b;
        if (task.isSuccessful()) {
            p1bVar.setResult(Status.RESULT_SUCCESS);
            return;
        }
        if (task.isCanceled()) {
            p1bVar.setFailedResult(Status.RESULT_CANCELED);
            return;
        }
        Exception exception = task.getException();
        if (exception instanceof ApiException) {
            p1bVar.setFailedResult(((ApiException) exception).getStatus());
        } else {
            p1bVar.setFailedResult(Status.RESULT_INTERNAL_ERROR);
        }
    }
}
