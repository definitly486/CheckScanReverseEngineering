package androidx.paging;

import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.paging.AsyncPagedListDiffer;
import androidx.recyclerview.widget.AdapterListUpdateCallback;
import androidx.recyclerview.widget.AsyncDifferConfig;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListUpdateCallback;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bm3;
import defpackage.j59;
import defpackage.kx6;
import defpackage.nn1;
import defpackage.qe4;
import defpackage.ul2;
import defpackage.us;
import defpackage.yq;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
@ul2
public class AsyncPagedListDiffer<T> {
    private final AsyncDifferConfig<T> config;
    private final CopyOnWriteArrayList<PagedListListener<T>> listeners;
    private final qe4<j59> loadStateListener;
    private final List<bm3<LoadType, LoadState, j59>> loadStateListeners;
    private final PagedList.LoadStateManager loadStateManager;
    private Executor mainThreadExecutor;
    private int maxScheduledGeneration;
    private PagedList<T> pagedList;
    private final PagedList.Callback pagedListCallback;
    private PagedList<T> snapshot;
    public ListUpdateCallback updateCallback;

    public static final class OnCurrentListChangedWrapper<T> implements PagedListListener<T> {
        private final bm3<PagedList<T>, PagedList<T>, j59> callback;

        /* JADX WARN: Multi-variable type inference failed */
        public OnCurrentListChangedWrapper(bm3<? super PagedList<T>, ? super PagedList<T>, j59> bm3Var) {
            bm3Var.getClass();
            this.callback = bm3Var;
        }

        public final bm3<PagedList<T>, PagedList<T>, j59> getCallback() {
            return this.callback;
        }

        @Override // androidx.paging.AsyncPagedListDiffer.PagedListListener
        public void onCurrentListChanged(PagedList<T> pagedList, PagedList<T> pagedList2) {
            this.callback.invoke(pagedList, pagedList2);
        }
    }

    @ul2
    public interface PagedListListener<T> {
        void onCurrentListChanged(PagedList<T> pagedList, PagedList<T> pagedList2);
    }

    @ul2
    public AsyncPagedListDiffer(RecyclerView.Adapter<?> adapter, DiffUtil.ItemCallback<T> itemCallback) {
        adapter.getClass();
        itemCallback.getClass();
        Executor mainThreadExecutor = ArchTaskExecutor.getMainThreadExecutor();
        mainThreadExecutor.getClass();
        this.mainThreadExecutor = mainThreadExecutor;
        this.listeners = new CopyOnWriteArrayList<>();
        PagedList.LoadStateManager loadStateManager = new PagedList.LoadStateManager(this) { // from class: androidx.paging.AsyncPagedListDiffer$loadStateManager$1
            final /* synthetic */ AsyncPagedListDiffer<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.paging.PagedList.LoadStateManager
            public void onStateChanged(LoadType loadType, LoadState loadState) {
                loadType.getClass();
                loadState.getClass();
                Iterator<T> it = this.this$0.getLoadStateListeners$paging_runtime().iterator();
                while (it.hasNext()) {
                    ((bm3) it.next()).invoke(loadType, loadState);
                }
            }
        };
        this.loadStateManager = loadStateManager;
        this.loadStateListener = new AsyncPagedListDiffer$loadStateListener$1(loadStateManager);
        this.loadStateListeners = new CopyOnWriteArrayList();
        this.pagedListCallback = new PagedList.Callback(this) { // from class: androidx.paging.AsyncPagedListDiffer$pagedListCallback$1
            final /* synthetic */ AsyncPagedListDiffer<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.paging.PagedList.Callback
            public void onChanged(int i, int i2) {
                this.this$0.getUpdateCallback$paging_runtime().onChanged(i, i2, null);
            }

            @Override // androidx.paging.PagedList.Callback
            public void onInserted(int i, int i2) {
                this.this$0.getUpdateCallback$paging_runtime().onInserted(i, i2);
            }

            @Override // androidx.paging.PagedList.Callback
            public void onRemoved(int i, int i2) {
                this.this$0.getUpdateCallback$paging_runtime().onRemoved(i, i2);
            }
        };
        setUpdateCallback$paging_runtime(new AdapterListUpdateCallback(adapter));
        AsyncDifferConfig<T> asyncDifferConfigBuild = new AsyncDifferConfig.Builder(itemCallback).build();
        asyncDifferConfigBuild.getClass();
        this.config = asyncDifferConfigBuild;
    }

    public static /* synthetic */ void getConfig$paging_runtime$annotations() {
    }

    public static /* synthetic */ void getCurrentList$annotations() {
    }

    public static /* synthetic */ void getListeners$paging_runtime$annotations() {
    }

    private static /* synthetic */ void getLoadStateManager$annotations() {
    }

    public static /* synthetic */ void getMaxScheduledGeneration$paging_runtime$annotations() {
    }

    private static /* synthetic */ void getPagedList$annotations() {
    }

    private static /* synthetic */ void getPagedListCallback$annotations() {
    }

    private static /* synthetic */ void getSnapshot$annotations() {
    }

    private final void onCurrentListChanged(PagedList<T> pagedList, PagedList<T> pagedList2, Runnable runnable) {
        Iterator<T> it = this.listeners.iterator();
        while (it.hasNext()) {
            ((PagedListListener) it.next()).onCurrentListChanged(pagedList, pagedList2);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removePagedListListener$lambda$0(bm3 bm3Var, PagedListListener pagedListListener) {
        return (pagedListListener instanceof OnCurrentListChangedWrapper) && ((OnCurrentListChangedWrapper) pagedListListener).getCallback() == bm3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void submitList$lambda$1(final PagedList pagedList, final PagedList pagedList2, final AsyncPagedListDiffer asyncPagedListDiffer, final int i, final PagedList pagedList3, final RecordingCallback recordingCallback, final Runnable runnable) {
        PlaceholderPaddedList<T> placeholderPaddedList = pagedList.getPlaceholderPaddedList();
        PlaceholderPaddedList<T> placeholderPaddedList2 = pagedList2.getPlaceholderPaddedList();
        DiffUtil.ItemCallback<T> diffCallback = asyncPagedListDiffer.config.getDiffCallback();
        diffCallback.getClass();
        final PlaceholderPaddedDiffResult placeholderPaddedDiffResultComputeDiff = PlaceholderPaddedListDiffHelperKt.computeDiff(placeholderPaddedList, placeholderPaddedList2, diffCallback);
        asyncPagedListDiffer.mainThreadExecutor.execute(new Runnable() { // from class: vs
            @Override // java.lang.Runnable
            public final void run() {
                AsyncPagedListDiffer.submitList$lambda$1$0(this.b, i, pagedList3, pagedList2, placeholderPaddedDiffResultComputeDiff, recordingCallback, pagedList, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void submitList$lambda$1$0(AsyncPagedListDiffer asyncPagedListDiffer, int i, PagedList pagedList, PagedList pagedList2, PlaceholderPaddedDiffResult placeholderPaddedDiffResult, RecordingCallback recordingCallback, PagedList pagedList3, Runnable runnable) {
        if (asyncPagedListDiffer.maxScheduledGeneration == i) {
            asyncPagedListDiffer.latchPagedList$paging_runtime(pagedList, pagedList2, placeholderPaddedDiffResult, recordingCallback, pagedList3.lastLoad(), runnable);
        }
    }

    public void addLoadStateListener(bm3<? super LoadType, ? super LoadState, j59> bm3Var) {
        bm3Var.getClass();
        PagedList<T> pagedList = this.pagedList;
        if (pagedList != null) {
            pagedList.addWeakLoadStateListener(bm3Var);
        } else {
            this.loadStateManager.dispatchCurrentLoadState(bm3Var);
        }
        this.loadStateListeners.add(bm3Var);
    }

    public final void addPagedListListener(bm3<? super PagedList<T>, ? super PagedList<T>, j59> bm3Var) {
        bm3Var.getClass();
        this.listeners.add(new OnCurrentListChangedWrapper(bm3Var));
    }

    public final AsyncDifferConfig<T> getConfig$paging_runtime() {
        return this.config;
    }

    public PagedList<T> getCurrentList() {
        PagedList<T> pagedList = this.snapshot;
        return pagedList == null ? this.pagedList : pagedList;
    }

    public T getItem(int i) {
        PagedList<T> pagedList = this.snapshot;
        PagedList<T> pagedList2 = this.pagedList;
        if (pagedList != null) {
            return pagedList.get(i);
        }
        if (pagedList2 != null) {
            pagedList2.loadAround(i);
            return pagedList2.get(i);
        }
        yq.d("Item count is zero, getItem() call is invalid");
        return null;
    }

    public int getItemCount() {
        PagedList<T> currentList = getCurrentList();
        if (currentList != null) {
            return currentList.size();
        }
        return 0;
    }

    public final CopyOnWriteArrayList<PagedListListener<T>> getListeners$paging_runtime() {
        return this.listeners;
    }

    public final List<bm3<LoadType, LoadState, j59>> getLoadStateListeners$paging_runtime() {
        return this.loadStateListeners;
    }

    public final Executor getMainThreadExecutor$paging_runtime() {
        return this.mainThreadExecutor;
    }

    public final int getMaxScheduledGeneration$paging_runtime() {
        return this.maxScheduledGeneration;
    }

    public final ListUpdateCallback getUpdateCallback$paging_runtime() {
        ListUpdateCallback listUpdateCallback = this.updateCallback;
        if (listUpdateCallback != null) {
            return listUpdateCallback;
        }
        aa4.j("updateCallback");
        throw null;
    }

    public final void latchPagedList$paging_runtime(PagedList<T> pagedList, PagedList<T> pagedList2, PlaceholderPaddedDiffResult placeholderPaddedDiffResult, RecordingCallback recordingCallback, int i, Runnable runnable) {
        pagedList.getClass();
        pagedList2.getClass();
        placeholderPaddedDiffResult.getClass();
        recordingCallback.getClass();
        PagedList<T> pagedList3 = this.snapshot;
        if (pagedList3 == null || this.pagedList != null) {
            ah.f("must be in snapshot state to apply diff");
            return;
        }
        this.pagedList = pagedList;
        pagedList.addWeakLoadStateListener((bm3) this.loadStateListener);
        this.snapshot = null;
        PlaceholderPaddedListDiffHelperKt.dispatchDiff(pagedList3.getPlaceholderPaddedList(), getUpdateCallback$paging_runtime(), pagedList2.getPlaceholderPaddedList(), placeholderPaddedDiffResult);
        recordingCallback.dispatchRecordingTo(this.pagedListCallback);
        pagedList.addWeakCallback(this.pagedListCallback);
        if (!pagedList.isEmpty()) {
            pagedList.loadAround(kx6.f(PlaceholderPaddedListDiffHelperKt.transformAnchorIndex(pagedList3.getPlaceholderPaddedList(), placeholderPaddedDiffResult, pagedList2.getPlaceholderPaddedList(), i), 0, pagedList.size() - 1));
        }
        onCurrentListChanged(pagedList3, this.pagedList, runnable);
    }

    public void removeLoadStateListener(bm3<? super LoadType, ? super LoadState, j59> bm3Var) {
        bm3Var.getClass();
        this.loadStateListeners.remove(bm3Var);
        PagedList<T> pagedList = this.pagedList;
        if (pagedList != null) {
            pagedList.removeWeakLoadStateListener(bm3Var);
        }
    }

    public final void removePagedListListener(bm3<? super PagedList<T>, ? super PagedList<T>, j59> bm3Var) {
        bm3Var.getClass();
        nn1.y(new us(bm3Var, 0), this.listeners);
    }

    public final void setMainThreadExecutor$paging_runtime(Executor executor) {
        executor.getClass();
        this.mainThreadExecutor = executor;
    }

    public final void setMaxScheduledGeneration$paging_runtime(int i) {
        this.maxScheduledGeneration = i;
    }

    public final void setUpdateCallback$paging_runtime(ListUpdateCallback listUpdateCallback) {
        listUpdateCallback.getClass();
        this.updateCallback = listUpdateCallback;
    }

    public void submitList(final PagedList<T> pagedList, final Runnable runnable) {
        final int i = this.maxScheduledGeneration + 1;
        this.maxScheduledGeneration = i;
        PagedList<T> pagedList2 = this.pagedList;
        if (pagedList == pagedList2) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        if (pagedList2 != null && (pagedList instanceof InitialPagedList)) {
            pagedList2.removeWeakCallback(this.pagedListCallback);
            pagedList2.removeWeakLoadStateListener((bm3) this.loadStateListener);
            this.loadStateManager.setState(LoadType.REFRESH, LoadState.Loading.INSTANCE);
            this.loadStateManager.setState(LoadType.PREPEND, new LoadState.NotLoading(false));
            this.loadStateManager.setState(LoadType.APPEND, new LoadState.NotLoading(false));
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        PagedList<T> currentList = getCurrentList();
        PagedList<T> pagedList3 = null;
        if (pagedList == null) {
            int itemCount = getItemCount();
            if (pagedList2 != null) {
                pagedList2.removeWeakCallback(this.pagedListCallback);
                pagedList2.removeWeakLoadStateListener((bm3) this.loadStateListener);
                this.pagedList = null;
            } else if (this.snapshot != null) {
                this.snapshot = null;
            }
            getUpdateCallback$paging_runtime().onRemoved(0, itemCount);
            onCurrentListChanged(currentList, null, runnable);
            return;
        }
        if (getCurrentList() == null) {
            this.pagedList = pagedList;
            pagedList.addWeakLoadStateListener((bm3) this.loadStateListener);
            pagedList.addWeakCallback(this.pagedListCallback);
            getUpdateCallback$paging_runtime().onInserted(0, pagedList.size());
            onCurrentListChanged(null, pagedList, runnable);
            return;
        }
        PagedList<T> pagedList4 = this.pagedList;
        if (pagedList4 != null) {
            pagedList4.removeWeakCallback(this.pagedListCallback);
            pagedList4.removeWeakLoadStateListener((bm3) this.loadStateListener);
            List<T> listSnapshot = pagedList4.snapshot();
            listSnapshot.getClass();
            this.snapshot = (PagedList) listSnapshot;
            this.pagedList = null;
        } else {
            pagedList3 = pagedList4;
        }
        final PagedList<T> pagedList5 = this.snapshot;
        if (pagedList5 == null || pagedList3 != null) {
            ah.f("must be in snapshot state to diff");
            return;
        }
        List<T> listSnapshot2 = pagedList.snapshot();
        listSnapshot2.getClass();
        final PagedList pagedList6 = (PagedList) listSnapshot2;
        final RecordingCallback recordingCallback = new RecordingCallback();
        pagedList.addWeakCallback(recordingCallback);
        this.config.getBackgroundThreadExecutor().execute(new Runnable() { // from class: ws
            @Override // java.lang.Runnable
            public final void run() {
                AsyncPagedListDiffer.submitList$lambda$1(pagedList5, pagedList6, this, i, pagedList, recordingCallback, runnable);
            }
        });
    }

    public void addPagedListListener(PagedListListener<T> pagedListListener) {
        pagedListListener.getClass();
        this.listeners.add(pagedListListener);
    }

    public void removePagedListListener(PagedListListener<T> pagedListListener) {
        pagedListListener.getClass();
        this.listeners.remove(pagedListListener);
    }

    @ul2
    public AsyncPagedListDiffer(ListUpdateCallback listUpdateCallback, AsyncDifferConfig<T> asyncDifferConfig) {
        listUpdateCallback.getClass();
        asyncDifferConfig.getClass();
        Executor mainThreadExecutor = ArchTaskExecutor.getMainThreadExecutor();
        mainThreadExecutor.getClass();
        this.mainThreadExecutor = mainThreadExecutor;
        this.listeners = new CopyOnWriteArrayList<>();
        PagedList.LoadStateManager loadStateManager = new PagedList.LoadStateManager(this) { // from class: androidx.paging.AsyncPagedListDiffer$loadStateManager$1
            final /* synthetic */ AsyncPagedListDiffer<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.paging.PagedList.LoadStateManager
            public void onStateChanged(LoadType loadType, LoadState loadState) {
                loadType.getClass();
                loadState.getClass();
                Iterator<T> it = this.this$0.getLoadStateListeners$paging_runtime().iterator();
                while (it.hasNext()) {
                    ((bm3) it.next()).invoke(loadType, loadState);
                }
            }
        };
        this.loadStateManager = loadStateManager;
        this.loadStateListener = new AsyncPagedListDiffer$loadStateListener$1(loadStateManager);
        this.loadStateListeners = new CopyOnWriteArrayList();
        this.pagedListCallback = new PagedList.Callback(this) { // from class: androidx.paging.AsyncPagedListDiffer$pagedListCallback$1
            final /* synthetic */ AsyncPagedListDiffer<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.paging.PagedList.Callback
            public void onChanged(int i, int i2) {
                this.this$0.getUpdateCallback$paging_runtime().onChanged(i, i2, null);
            }

            @Override // androidx.paging.PagedList.Callback
            public void onInserted(int i, int i2) {
                this.this$0.getUpdateCallback$paging_runtime().onInserted(i, i2);
            }

            @Override // androidx.paging.PagedList.Callback
            public void onRemoved(int i, int i2) {
                this.this$0.getUpdateCallback$paging_runtime().onRemoved(i, i2);
            }
        };
        setUpdateCallback$paging_runtime(listUpdateCallback);
        this.config = asyncDifferConfig;
    }

    public void submitList(PagedList<T> pagedList) {
        submitList(pagedList, null);
    }
}
