package androidx.paging;

import defpackage.nl3;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class AsyncPagingDataDiffer$LoadStateListenerRunnable$1 implements Runnable {
    private AtomicReference<CombinedLoadStates> loadState = new AtomicReference<>(null);
    final /* synthetic */ AsyncPagingDataDiffer<T> this$0;

    public AsyncPagingDataDiffer$LoadStateListenerRunnable$1(AsyncPagingDataDiffer<T> asyncPagingDataDiffer) {
        this.this$0 = asyncPagingDataDiffer;
    }

    public final AtomicReference<CombinedLoadStates> getLoadState() {
        return this.loadState;
    }

    @Override // java.lang.Runnable
    public void run() {
        CombinedLoadStates combinedLoadStates = this.loadState.get();
        if (combinedLoadStates != null) {
            Iterator it = ((AsyncPagingDataDiffer) this.this$0).childLoadStateListeners.iterator();
            while (it.hasNext()) {
                ((nl3) it.next()).invoke(combinedLoadStates);
            }
        }
    }

    public final void setLoadState(AtomicReference<CombinedLoadStates> atomicReference) {
        atomicReference.getClass();
        this.loadState = atomicReference;
    }
}
