package androidx.paging;

import androidx.paging.LoadState;
import androidx.paging.LoadType;
import androidx.paging.PagedList;
import androidx.paging.PagedListAdapter;
import androidx.recyclerview.widget.AdapterListUpdateCallback;
import androidx.recyclerview.widget.AsyncDifferConfig;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nt0;
import defpackage.ul2;
import defpackage.wy2;

/* JADX INFO: loaded from: classes3.dex */
@ul2
public abstract class PagedListAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {
    private final AsyncPagedListDiffer<T> differ;
    private final bm3<PagedList<T>, PagedList<T>, j59> listener;

    public PagedListAdapter(AsyncDifferConfig<T> asyncDifferConfig) {
        asyncDifferConfig.getClass();
        bm3<PagedList<T>, PagedList<T>, j59> bm3Var = new bm3() { // from class: r16
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return PagedListAdapter.listener$lambda$0(this.b, (PagedList) obj, (PagedList) obj2);
            }
        };
        this.listener = bm3Var;
        AsyncPagedListDiffer<T> asyncPagedListDiffer = new AsyncPagedListDiffer<>(new AdapterListUpdateCallback(this), asyncDifferConfig);
        this.differ = asyncPagedListDiffer;
        asyncPagedListDiffer.addPagedListListener(bm3Var);
    }

    public static /* synthetic */ void getCurrentList$annotations() {
    }

    public static /* synthetic */ void getDiffer$paging_runtime$annotations() {
    }

    private static /* synthetic */ void getListener$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 listener$lambda$0(PagedListAdapter pagedListAdapter, PagedList pagedList, PagedList pagedList2) {
        pagedListAdapter.onCurrentListChanged(pagedList2);
        pagedListAdapter.onCurrentListChanged(pagedList, pagedList2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 withLoadStateFooter$lambda$0(LoadStateAdapter loadStateAdapter, LoadType loadType, LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
        if (loadType == LoadType.APPEND) {
            loadStateAdapter.setLoadState(loadState);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 withLoadStateHeader$lambda$0(LoadStateAdapter loadStateAdapter, LoadType loadType, LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
        if (loadType == LoadType.PREPEND) {
            loadStateAdapter.setLoadState(loadState);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 withLoadStateHeaderAndFooter$lambda$0(LoadStateAdapter loadStateAdapter, LoadStateAdapter loadStateAdapter2, LoadType loadType, LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
        if (loadType == LoadType.PREPEND) {
            loadStateAdapter.setLoadState(loadState);
        } else if (loadType == LoadType.APPEND) {
            loadStateAdapter2.setLoadState(loadState);
        }
        return j59.a;
    }

    public void addLoadStateListener(bm3<? super LoadType, ? super LoadState, j59> bm3Var) {
        bm3Var.getClass();
        this.differ.addLoadStateListener(bm3Var);
    }

    public PagedList<T> getCurrentList() {
        return this.differ.getCurrentList();
    }

    public final AsyncPagedListDiffer<T> getDiffer$paging_runtime() {
        return this.differ;
    }

    public T getItem(int i) {
        return this.differ.getItem(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.differ.getItemCount();
    }

    @ul2
    public void onCurrentListChanged(PagedList<T> pagedList) {
    }

    public void onCurrentListChanged(PagedList<T> pagedList, PagedList<T> pagedList2) {
    }

    public void removeLoadStateListener(bm3<? super LoadType, ? super LoadState, j59> bm3Var) {
        bm3Var.getClass();
        this.differ.removeLoadStateListener(bm3Var);
    }

    public void submitList(PagedList<T> pagedList) {
        this.differ.submitList(pagedList);
    }

    public final ConcatAdapter withLoadStateFooter(LoadStateAdapter<?> loadStateAdapter) {
        loadStateAdapter.getClass();
        addLoadStateListener(new wy2(loadStateAdapter, 1));
        return new ConcatAdapter((RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[]{this, loadStateAdapter});
    }

    public final ConcatAdapter withLoadStateHeader(final LoadStateAdapter<?> loadStateAdapter) {
        loadStateAdapter.getClass();
        addLoadStateListener(new bm3() { // from class: s16
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return PagedListAdapter.withLoadStateHeader$lambda$0(loadStateAdapter, (LoadType) obj, (LoadState) obj2);
            }
        });
        return new ConcatAdapter((RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[]{loadStateAdapter, this});
    }

    public final ConcatAdapter withLoadStateHeaderAndFooter(LoadStateAdapter<?> loadStateAdapter, LoadStateAdapter<?> loadStateAdapter2) {
        loadStateAdapter.getClass();
        loadStateAdapter2.getClass();
        addLoadStateListener(new nt0(1, loadStateAdapter, loadStateAdapter2));
        return new ConcatAdapter((RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[]{loadStateAdapter, this, loadStateAdapter2});
    }

    public void submitList(PagedList<T> pagedList, Runnable runnable) {
        this.differ.submitList(pagedList, runnable);
    }

    public PagedListAdapter(DiffUtil.ItemCallback<T> itemCallback) {
        itemCallback.getClass();
        bm3<PagedList<T>, PagedList<T>, j59> bm3Var = new bm3() { // from class: r16
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return PagedListAdapter.listener$lambda$0(this.b, (PagedList) obj, (PagedList) obj2);
            }
        };
        this.listener = bm3Var;
        AsyncPagedListDiffer<T> asyncPagedListDiffer = new AsyncPagedListDiffer<>(this, itemCallback);
        this.differ = asyncPagedListDiffer;
        asyncPagedListDiffer.addPagedListListener(bm3Var);
    }
}
