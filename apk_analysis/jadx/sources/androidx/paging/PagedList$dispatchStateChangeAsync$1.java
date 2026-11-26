package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nn1;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.PagedList$dispatchStateChangeAsync$1", f = "PagedList.kt", l = {}, m = "invokeSuspend", v = 1)
public final class PagedList$dispatchStateChangeAsync$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ LoadState $state;
    final /* synthetic */ LoadType $type;
    int label;
    final /* synthetic */ PagedList<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagedList$dispatchStateChangeAsync$1(PagedList<T> pagedList, LoadType loadType, LoadState loadState, e02<? super PagedList$dispatchStateChangeAsync$1> e02Var) {
        super(2, e02Var);
        this.this$0 = pagedList;
        this.$type = loadType;
        this.$state = loadState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invokeSuspend$lambda$0(WeakReference weakReference) {
        return weakReference.get() == null;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new PagedList$dispatchStateChangeAsync$1(this.this$0, this.$type, this.$state, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((PagedList$dispatchStateChangeAsync$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        nn1.y(new g(), ((PagedList) this.this$0).loadStateListeners);
        List list = ((PagedList) this.this$0).loadStateListeners;
        LoadType loadType = this.$type;
        LoadState loadState = this.$state;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            bm3 bm3Var = (bm3) ((WeakReference) it.next()).get();
            if (bm3Var != null) {
                bm3Var.invoke(loadType, loadState);
            }
        }
        return j59.a;
    }
}
