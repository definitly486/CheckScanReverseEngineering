package androidx.paging;

import defpackage.bm3;
import defpackage.j59;
import defpackage.qm3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class AsyncPagedListDiffer$loadStateListener$1 extends qm3 implements bm3<LoadType, LoadState, j59> {
    public AsyncPagedListDiffer$loadStateListener$1(Object obj) {
        super(2, obj, PagedList.LoadStateManager.class, "setState", "setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V", 0);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LoadType loadType, LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
        ((PagedList.LoadStateManager) this.receiver).setState(loadType, loadState);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(LoadType loadType, LoadState loadState) {
        invoke2(loadType, loadState);
        return j59.a;
    }
}
