package androidx.paging;

import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes3.dex */
public final class SnapshotPagedList<T> extends PagedList<T> {
    private final boolean isDetached;
    private final boolean isImmutable;
    private final PagedList<T> pagedList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapshotPagedList(PagedList<T> pagedList) {
        super(pagedList.getPagingSource(), pagedList.getCoroutineScope$paging_common(), pagedList.getNotifyDispatcher$paging_common(), pagedList.getStorage$paging_common().snapshot(), pagedList.getConfig());
        pagedList.getClass();
        this.pagedList = pagedList;
        this.isImmutable = true;
        this.isDetached = true;
    }

    @Override // androidx.paging.PagedList
    public void detach() {
    }

    @Override // androidx.paging.PagedList
    public void dispatchCurrentLoadState(bm3<? super LoadType, ? super LoadState, j59> bm3Var) {
        bm3Var.getClass();
    }

    @Override // androidx.paging.PagedList
    public Object getLastKey() {
        return this.pagedList.getLastKey();
    }

    @Override // androidx.paging.PagedList
    public boolean isDetached() {
        return this.isDetached;
    }

    @Override // androidx.paging.PagedList
    public boolean isImmutable() {
        return this.isImmutable;
    }

    @Override // androidx.paging.PagedList
    public void loadAroundInternal(int i) {
    }
}
