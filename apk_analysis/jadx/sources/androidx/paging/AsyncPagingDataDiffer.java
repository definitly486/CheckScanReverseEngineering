package androidx.paging;

import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleKt;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListUpdateCallback;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cf3;
import defpackage.cl4;
import defpackage.e02;
import defpackage.fh8;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.o22;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.px;
import defpackage.qo2;
import defpackage.r22;
import defpackage.r57;
import defpackage.tb7;
import defpackage.ud3;
import defpackage.ul2;
import defpackage.uy4;
import defpackage.xg5;
import defpackage.xs;
import defpackage.y22;
import defpackage.ys;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class AsyncPagingDataDiffer<T> {
    private final cl4 LoadStateListenerHandler$delegate;
    private final AsyncPagingDataDiffer$LoadStateListenerRunnable$1 LoadStateListenerRunnable;
    private final CopyOnWriteArrayList<nl3<CombinedLoadStates, j59>> childLoadStateListeners;
    private final DiffUtil.ItemCallback<T> diffCallback;
    private final xg5<Boolean> inGetItem;
    private final nl3<CombinedLoadStates, j59> internalLoadStateListener;
    private int lastAccessedIndex;
    private final hd3<CombinedLoadStates> loadStateFlow;
    private final o22 mainDispatcher;
    private final hd3<j59> onPagesUpdatedFlow;
    private final AtomicReference<nl3<CombinedLoadStates, j59>> parentLoadStateListener;
    private final PagingDataPresenter<T> presenter;
    private final AtomicReference<PlaceholderPaddedList<T>> previousPresenter;
    private final AtomicInteger submitDataId;
    private final ListUpdateCallback updateCallback;
    private final o22 workerDispatcher;

    /* JADX INFO: renamed from: androidx.paging.AsyncPagingDataDiffer$submitData$2, reason: invalid class name */
    @bd2(c = "androidx.paging.AsyncPagingDataDiffer$submitData$2", f = "AsyncPagingDataDiffer.kt", l = {417}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ int $id;
        final /* synthetic */ PagingData<T> $pagingData;
        int label;
        final /* synthetic */ AsyncPagingDataDiffer<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(AsyncPagingDataDiffer<T> asyncPagingDataDiffer, int i, PagingData<T> pagingData, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.this$0 = asyncPagingDataDiffer;
            this.$id = i;
            this.$pagingData = pagingData;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.this$0, this.$id, this.$pagingData, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                if (((AsyncPagingDataDiffer) this.this$0).submitDataId.get() == this.$id) {
                    PagingDataPresenter<T> presenter$paging_runtime = this.this$0.getPresenter$paging_runtime();
                    PagingData<T> pagingData = this.$pagingData;
                    this.label = 1;
                    if (presenter$paging_runtime.collectFrom(pagingData, this) == a32Var) {
                        return a32Var;
                    }
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public AsyncPagingDataDiffer(DiffUtil.ItemCallback<T> itemCallback, ListUpdateCallback listUpdateCallback, o22 o22Var, o22 o22Var2) {
        itemCallback.getClass();
        listUpdateCallback.getClass();
        o22Var.getClass();
        o22Var2.getClass();
        this.diffCallback = itemCallback;
        this.updateCallback = listUpdateCallback;
        this.mainDispatcher = o22Var;
        this.workerDispatcher = o22Var2;
        this.inGetItem = px.a(Boolean.FALSE);
        this.previousPresenter = new AtomicReference<>(null);
        AsyncPagingDataDiffer$presenter$1 asyncPagingDataDiffer$presenter$1 = new AsyncPagingDataDiffer$presenter$1(this, o22Var);
        this.presenter = asyncPagingDataDiffer$presenter$1;
        int i = 0;
        this.submitDataId = new AtomicInteger(0);
        tb7 tb7Var = new tb7(new AsyncPagingDataDiffer$special$$inlined$transform$1(ud3.a(new cf3(asyncPagingDataDiffer$presenter$1.getLoadStateFlow()), -1), null, this));
        oi2 oi2Var = qo2.a;
        this.loadStateFlow = ud3.b(tb7Var, uy4.a);
        this.onPagesUpdatedFlow = asyncPagingDataDiffer$presenter$1.getOnPagesUpdatedFlow();
        this.parentLoadStateListener = new AtomicReference<>(null);
        this.childLoadStateListeners = new CopyOnWriteArrayList<>();
        this.internalLoadStateListener = new xs(this, i);
        this.LoadStateListenerHandler$delegate = new fh8(new ys(i));
        this.LoadStateListenerRunnable = new AsyncPagingDataDiffer$LoadStateListenerRunnable$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler LoadStateListenerHandler_delegate$lambda$0() {
        return new Handler(Looper.getMainLooper());
    }

    private final Handler getLoadStateListenerHandler() {
        return (Handler) this.LoadStateListenerHandler$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 internalLoadStateListener$lambda$0(AsyncPagingDataDiffer asyncPagingDataDiffer, CombinedLoadStates combinedLoadStates) {
        combinedLoadStates.getClass();
        if (asyncPagingDataDiffer.inGetItem.getValue().booleanValue()) {
            Handler loadStateListenerHandler = asyncPagingDataDiffer.getLoadStateListenerHandler();
            loadStateListenerHandler.removeCallbacks(asyncPagingDataDiffer.LoadStateListenerRunnable);
            asyncPagingDataDiffer.LoadStateListenerRunnable.getLoadState().set(combinedLoadStates);
            loadStateListenerHandler.post(asyncPagingDataDiffer.LoadStateListenerRunnable);
        } else {
            Iterator<T> it = asyncPagingDataDiffer.childLoadStateListeners.iterator();
            while (it.hasNext()) {
                ((nl3) it.next()).invoke(combinedLoadStates);
            }
        }
        return j59.a;
    }

    public final void addLoadStateListener(nl3<? super CombinedLoadStates, j59> nl3Var) {
        nl3Var.getClass();
        if (this.parentLoadStateListener.get() == null) {
            addLoadStateListenerInternal$paging_runtime(this.internalLoadStateListener);
        }
        this.childLoadStateListeners.add(nl3Var);
    }

    public final void addLoadStateListenerInternal$paging_runtime(nl3<? super CombinedLoadStates, j59> nl3Var) {
        nl3Var.getClass();
        this.parentLoadStateListener.set(nl3Var);
        this.presenter.addLoadStateListener(nl3Var);
    }

    public final void addOnPagesUpdatedListener(ll3<j59> ll3Var) {
        ll3Var.getClass();
        this.presenter.addOnPagesUpdatedListener(ll3Var);
    }

    public final xg5<Boolean> getInGetItem$paging_runtime() {
        return this.inGetItem;
    }

    public final nl3<CombinedLoadStates, j59> getInternalLoadStateListener$paging_runtime() {
        return this.internalLoadStateListener;
    }

    public final T getItem(int i) {
        Boolean value;
        Boolean value2;
        Boolean value3;
        try {
            xg5<Boolean> xg5Var = this.inGetItem;
            do {
                value2 = xg5Var.getValue();
                value2.getClass();
            } while (!xg5Var.a(value2, Boolean.TRUE));
            this.lastAccessedIndex = i;
            PlaceholderPaddedList<T> placeholderPaddedList = this.previousPresenter.get();
            T t = placeholderPaddedList != null ? (T) AsyncPagingDataDifferKt.get(placeholderPaddedList, i) : this.presenter.get(i);
            xg5<Boolean> xg5Var2 = this.inGetItem;
            do {
                value3 = xg5Var2.getValue();
                value3.getClass();
            } while (!xg5Var2.a(value3, Boolean.FALSE));
            return t;
        } catch (Throwable th) {
            xg5<Boolean> xg5Var3 = this.inGetItem;
            do {
                value = xg5Var3.getValue();
                value.getClass();
            } while (!xg5Var3.a(value, Boolean.FALSE));
            throw th;
        }
    }

    public final int getItemCount() {
        PlaceholderPaddedList<T> placeholderPaddedList = this.previousPresenter.get();
        return placeholderPaddedList != null ? placeholderPaddedList.getSize() : this.presenter.getSize();
    }

    public final hd3<CombinedLoadStates> getLoadStateFlow() {
        return this.loadStateFlow;
    }

    public final hd3<j59> getOnPagesUpdatedFlow() {
        return this.onPagesUpdatedFlow;
    }

    public final PagingDataPresenter<T> getPresenter$paging_runtime() {
        return this.presenter;
    }

    public final T peek(int i) {
        PlaceholderPaddedList<T> placeholderPaddedList = this.previousPresenter.get();
        return placeholderPaddedList != null ? (T) AsyncPagingDataDifferKt.peek(placeholderPaddedList, i) : this.presenter.peek(i);
    }

    public final void refresh() {
        this.presenter.refresh();
    }

    public final void removeLoadStateListener(nl3<? super CombinedLoadStates, j59> nl3Var) {
        nl3<CombinedLoadStates, j59> nl3Var2;
        nl3Var.getClass();
        this.childLoadStateListeners.remove(nl3Var);
        if (!this.childLoadStateListeners.isEmpty() || (nl3Var2 = this.parentLoadStateListener.get()) == null) {
            return;
        }
        this.presenter.removeLoadStateListener(nl3Var2);
    }

    public final void removeOnPagesUpdatedListener(ll3<j59> ll3Var) {
        ll3Var.getClass();
        this.presenter.removeOnPagesUpdatedListener(ll3Var);
    }

    public final void retry() {
        this.presenter.retry();
    }

    public final ItemSnapshotList<T> snapshot() {
        ItemSnapshotList<T> itemSnapshotListSnapshot;
        PlaceholderPaddedList<T> placeholderPaddedList = this.previousPresenter.get();
        return (placeholderPaddedList == null || (itemSnapshotListSnapshot = AsyncPagingDataDifferKt.snapshot(placeholderPaddedList)) == null) ? this.presenter.snapshot() : itemSnapshotListSnapshot;
    }

    public final void submitData(Lifecycle lifecycle, PagingData<T> pagingData) {
        lifecycle.getClass();
        pagingData.getClass();
        av0.c(LifecycleKt.getCoroutineScope(lifecycle), null, null, new AnonymousClass2(this, this.submitDataId.incrementAndGet(), pagingData, null), 3);
    }

    public final Object submitData(PagingData<T> pagingData, e02<? super j59> e02Var) {
        this.submitDataId.incrementAndGet();
        Object objCollectFrom = this.presenter.collectFrom(pagingData, e02Var);
        return objCollectFrom == a32.COROUTINE_SUSPENDED ? objCollectFrom : j59.a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AsyncPagingDataDiffer(DiffUtil.ItemCallback<T> itemCallback, ListUpdateCallback listUpdateCallback, o22 o22Var) {
        this(itemCallback, listUpdateCallback, o22Var, (o22) null, 8, (jh2) null);
        itemCallback.getClass();
        listUpdateCallback.getClass();
        o22Var.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ul2
    public AsyncPagingDataDiffer(DiffUtil.ItemCallback itemCallback, ListUpdateCallback listUpdateCallback, r22 r22Var) {
        this(itemCallback, listUpdateCallback, (o22) r22Var, (o22) qo2.a);
        itemCallback.getClass();
        listUpdateCallback.getClass();
        r22Var.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AsyncPagingDataDiffer(DiffUtil.ItemCallback<T> itemCallback, ListUpdateCallback listUpdateCallback) {
        this(itemCallback, listUpdateCallback, (o22) null, (o22) null, 12, (jh2) null);
        itemCallback.getClass();
        listUpdateCallback.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AsyncPagingDataDiffer(DiffUtil.ItemCallback itemCallback, ListUpdateCallback listUpdateCallback, o22 o22Var, o22 o22Var2, int i, jh2 jh2Var) {
        if ((i & 4) != 0) {
            oi2 oi2Var = qo2.a;
            o22Var = uy4.a;
        }
        this(itemCallback, listUpdateCallback, o22Var, (i & 8) != 0 ? qo2.a : o22Var2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AsyncPagingDataDiffer(DiffUtil.ItemCallback itemCallback, ListUpdateCallback listUpdateCallback, r22 r22Var, int i, jh2 jh2Var) {
        if ((i & 4) != 0) {
            oi2 oi2Var = qo2.a;
            r22Var = uy4.a;
        }
        this(itemCallback, listUpdateCallback, r22Var);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AsyncPagingDataDiffer(DiffUtil.ItemCallback itemCallback, ListUpdateCallback listUpdateCallback, r22 r22Var, r22 r22Var2, int i, jh2 jh2Var) {
        if ((i & 4) != 0) {
            oi2 oi2Var = qo2.a;
            r22Var = uy4.a;
        }
        this(itemCallback, listUpdateCallback, r22Var, (i & 8) != 0 ? qo2.a : r22Var2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ul2
    public /* synthetic */ AsyncPagingDataDiffer(DiffUtil.ItemCallback itemCallback, ListUpdateCallback listUpdateCallback, r22 r22Var, r22 r22Var2) {
        this(itemCallback, listUpdateCallback, (o22) r22Var, (o22) r22Var2);
        itemCallback.getClass();
        listUpdateCallback.getClass();
        r22Var.getClass();
        r22Var2.getClass();
    }
}
