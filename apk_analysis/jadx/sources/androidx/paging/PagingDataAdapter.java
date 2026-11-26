package androidx.paging;

import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.AdapterListUpdateCallback;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import defpackage.a32;
import defpackage.e02;
import defpackage.hd3;
import defpackage.im1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.o22;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.r22;
import defpackage.rf0;
import defpackage.ul2;
import defpackage.uy4;
import defpackage.x26;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PagingDataAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {
    private final AsyncPagingDataDiffer<T> differ;
    private final hd3<CombinedLoadStates> loadStateFlow;
    private final hd3<j59> onPagesUpdatedFlow;
    private boolean userSetRestorationPolicy;

    public PagingDataAdapter(DiffUtil.ItemCallback<T> itemCallback, o22 o22Var, o22 o22Var2) {
        itemCallback.getClass();
        o22Var.getClass();
        o22Var2.getClass();
        AsyncPagingDataDiffer<T> asyncPagingDataDiffer = new AsyncPagingDataDiffer<>(itemCallback, new AdapterListUpdateCallback(this), o22Var, o22Var2);
        this.differ = asyncPagingDataDiffer;
        super.setStateRestorationPolicy(RecyclerView.Adapter.StateRestorationPolicy.PREVENT);
        registerAdapterDataObserver(new RecyclerView.AdapterDataObserver(this) { // from class: androidx.paging.PagingDataAdapter.1
            final /* synthetic */ PagingDataAdapter<T, VH> this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i, int i2) {
                PagingDataAdapter._init_$considerAllowingStateRestoration(this.this$0);
                this.this$0.unregisterAdapterDataObserver(this);
                super.onItemRangeInserted(i, i2);
            }
        });
        addLoadStateListener(new nl3<CombinedLoadStates, j59>(this) { // from class: androidx.paging.PagingDataAdapter.2
            private boolean ignoreNextEvent = true;
            final /* synthetic */ PagingDataAdapter<T, VH> this$0;

            {
                this.this$0 = this;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public void invoke2(CombinedLoadStates combinedLoadStates) {
                combinedLoadStates.getClass();
                if (this.ignoreNextEvent) {
                    this.ignoreNextEvent = false;
                } else if (combinedLoadStates.getSource().getRefresh() instanceof LoadState.NotLoading) {
                    PagingDataAdapter._init_$considerAllowingStateRestoration(this.this$0);
                    this.this$0.removeLoadStateListener(this);
                }
            }

            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ j59 invoke(CombinedLoadStates combinedLoadStates) {
                invoke2(combinedLoadStates);
                return j59.a;
            }
        });
        this.loadStateFlow = asyncPagingDataDiffer.getLoadStateFlow();
        this.onPagesUpdatedFlow = asyncPagingDataDiffer.getOnPagesUpdatedFlow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T, VH extends RecyclerView.ViewHolder> void _init_$considerAllowingStateRestoration(PagingDataAdapter<T, VH> pagingDataAdapter) {
        if (pagingDataAdapter.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT || ((PagingDataAdapter) pagingDataAdapter).userSetRestorationPolicy) {
            return;
        }
        pagingDataAdapter.setStateRestorationPolicy(RecyclerView.Adapter.StateRestorationPolicy.ALLOW);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 withLoadStateFooter$lambda$0(LoadStateAdapter loadStateAdapter, CombinedLoadStates combinedLoadStates) {
        combinedLoadStates.getClass();
        loadStateAdapter.setLoadState(combinedLoadStates.getAppend());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 withLoadStateHeader$lambda$0(LoadStateAdapter loadStateAdapter, CombinedLoadStates combinedLoadStates) {
        combinedLoadStates.getClass();
        loadStateAdapter.setLoadState(combinedLoadStates.getPrepend());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 withLoadStateHeaderAndFooter$lambda$0(LoadStateAdapter loadStateAdapter, LoadStateAdapter loadStateAdapter2, CombinedLoadStates combinedLoadStates) {
        combinedLoadStates.getClass();
        loadStateAdapter.setLoadState(combinedLoadStates.getPrepend());
        loadStateAdapter2.setLoadState(combinedLoadStates.getAppend());
        return j59.a;
    }

    public final void addLoadStateListener(nl3<? super CombinedLoadStates, j59> nl3Var) {
        nl3Var.getClass();
        this.differ.addLoadStateListener(nl3Var);
    }

    public final void addOnPagesUpdatedListener(ll3<j59> ll3Var) {
        ll3Var.getClass();
        this.differ.addOnPagesUpdatedListener(ll3Var);
    }

    public final T getItem(int i) {
        return this.differ.getItem(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.differ.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return super.getItemId(i);
    }

    public final hd3<CombinedLoadStates> getLoadStateFlow() {
        return this.loadStateFlow;
    }

    public final hd3<j59> getOnPagesUpdatedFlow() {
        return this.onPagesUpdatedFlow;
    }

    public final T peek(int i) {
        return this.differ.peek(i);
    }

    public final void refresh() {
        this.differ.refresh();
    }

    public final void removeLoadStateListener(nl3<? super CombinedLoadStates, j59> nl3Var) {
        nl3Var.getClass();
        this.differ.removeLoadStateListener(nl3Var);
    }

    public final void removeOnPagesUpdatedListener(ll3<j59> ll3Var) {
        ll3Var.getClass();
        this.differ.removeOnPagesUpdatedListener(ll3Var);
    }

    public final void retry() {
        this.differ.retry();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void setHasStableIds(boolean z) {
        throw new UnsupportedOperationException("Stable ids are unsupported on PagingDataAdapter.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setStateRestorationPolicy(RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy) {
        stateRestorationPolicy.getClass();
        this.userSetRestorationPolicy = true;
        super.setStateRestorationPolicy(stateRestorationPolicy);
    }

    public final ItemSnapshotList<T> snapshot() {
        return this.differ.snapshot();
    }

    public final Object submitData(PagingData<T> pagingData, e02<? super j59> e02Var) {
        Object objSubmitData = this.differ.submitData(pagingData, e02Var);
        return objSubmitData == a32.COROUTINE_SUSPENDED ? objSubmitData : j59.a;
    }

    public final ConcatAdapter withLoadStateFooter(LoadStateAdapter<?> loadStateAdapter) {
        loadStateAdapter.getClass();
        addLoadStateListener(new im1(loadStateAdapter, 1));
        return new ConcatAdapter((RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[]{this, loadStateAdapter});
    }

    public final ConcatAdapter withLoadStateHeader(LoadStateAdapter<?> loadStateAdapter) {
        loadStateAdapter.getClass();
        addLoadStateListener(new rf0(loadStateAdapter, 3));
        return new ConcatAdapter((RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[]{loadStateAdapter, this});
    }

    public final ConcatAdapter withLoadStateHeaderAndFooter(LoadStateAdapter<?> loadStateAdapter, LoadStateAdapter<?> loadStateAdapter2) {
        loadStateAdapter.getClass();
        loadStateAdapter2.getClass();
        addLoadStateListener(new x26(0, loadStateAdapter, loadStateAdapter2));
        return new ConcatAdapter((RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[]{loadStateAdapter, this, loadStateAdapter2});
    }

    public final void submitData(Lifecycle lifecycle, PagingData<T> pagingData) {
        lifecycle.getClass();
        pagingData.getClass();
        this.differ.submitData(lifecycle, pagingData);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PagingDataAdapter(DiffUtil.ItemCallback<T> itemCallback, o22 o22Var) {
        this(itemCallback, o22Var, (o22) null, 4, (jh2) null);
        itemCallback.getClass();
        o22Var.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ul2
    public PagingDataAdapter(DiffUtil.ItemCallback itemCallback, r22 r22Var) {
        this(itemCallback, (o22) r22Var, (o22) qo2.a);
        itemCallback.getClass();
        r22Var.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PagingDataAdapter(DiffUtil.ItemCallback<T> itemCallback) {
        this(itemCallback, (o22) null, (o22) null, 6, (jh2) null);
        itemCallback.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PagingDataAdapter(DiffUtil.ItemCallback itemCallback, o22 o22Var, o22 o22Var2, int i, jh2 jh2Var) {
        if ((i & 2) != 0) {
            oi2 oi2Var = qo2.a;
            o22Var = uy4.a;
        }
        this(itemCallback, o22Var, (i & 4) != 0 ? qo2.a : o22Var2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PagingDataAdapter(DiffUtil.ItemCallback itemCallback, r22 r22Var, int i, jh2 jh2Var) {
        if ((i & 2) != 0) {
            oi2 oi2Var = qo2.a;
            r22Var = uy4.a;
        }
        this(itemCallback, r22Var);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PagingDataAdapter(DiffUtil.ItemCallback itemCallback, r22 r22Var, r22 r22Var2, int i, jh2 jh2Var) {
        if ((i & 2) != 0) {
            oi2 oi2Var = qo2.a;
            r22Var = uy4.a;
        }
        this(itemCallback, r22Var, (i & 4) != 0 ? qo2.a : r22Var2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ul2
    public /* synthetic */ PagingDataAdapter(DiffUtil.ItemCallback itemCallback, r22 r22Var, r22 r22Var2) {
        this(itemCallback, (o22) r22Var, (o22) r22Var2);
        itemCallback.getClass();
        r22Var.getClass();
        r22Var2.getClass();
    }
}
