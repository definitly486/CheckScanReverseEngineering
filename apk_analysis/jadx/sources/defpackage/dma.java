package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;
import com.google.android.gms.common.moduleinstall.internal.zay;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dma implements SuccessContinuation, RemoteCall {
    public final /* synthetic */ Object b;

    public /* synthetic */ dma(Object obj) {
        this.b = obj;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        Api.ClientKey clientKey = zzcg.a;
        ((zzec) obj).zzq((LastLocationRequest) this.b, (TaskCompletionSource) obj2);
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public /* synthetic */ Task then(Object obj) {
        Api api = zay.a;
        AtomicReference atomicReference = (AtomicReference) this.b;
        return atomicReference.get() != null ? Tasks.forResult((ModuleInstallResponse) atomicReference.get()) : Tasks.forException(new ApiException(Status.RESULT_INTERNAL_ERROR));
    }
}
