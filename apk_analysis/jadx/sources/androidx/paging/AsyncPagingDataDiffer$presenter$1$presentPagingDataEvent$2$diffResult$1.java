package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1", f = "AsyncPagingDataDiffer.kt", l = {}, m = "invokeSuspend", v = 1)
public final class AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1 extends pg8 implements bm3<y22, e02<? super PlaceholderPaddedDiffResult>, Object> {
    final /* synthetic */ PagingDataEvent.Refresh<T> $this_apply;
    int label;
    final /* synthetic */ AsyncPagingDataDiffer<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1(PagingDataEvent.Refresh<T> refresh, AsyncPagingDataDiffer<T> asyncPagingDataDiffer, e02<? super AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1> e02Var) {
        super(2, e02Var);
        this.$this_apply = refresh;
        this.this$0 = asyncPagingDataDiffer;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1(this.$this_apply, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super PlaceholderPaddedDiffResult> e02Var) {
        return ((AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return PlaceholderPaddedListDiffHelperKt.computeDiff(this.$this_apply.getPreviousList(), this.$this_apply.getNewList(), ((AsyncPagingDataDiffer) this.this$0).diffCallback);
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
