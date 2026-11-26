package androidx.work;

import androidx.lifecycle.LiveData;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes3.dex */
final class OperationImpl implements Operation {
    private final ListenableFuture<Operation.State.SUCCESS> future;
    private final LiveData<Operation.State> state;

    public OperationImpl(LiveData<Operation.State> liveData, ListenableFuture<Operation.State.SUCCESS> listenableFuture) {
        liveData.getClass();
        listenableFuture.getClass();
        this.state = liveData;
        this.future = listenableFuture;
    }

    @Override // androidx.work.Operation
    public ListenableFuture<Operation.State.SUCCESS> getResult() {
        return this.future;
    }

    @Override // androidx.work.Operation
    public LiveData<Operation.State> getState() {
        return this.state;
    }
}
