package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.CachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1", f = "CachedPagingData.kt", l = {91}, m = "invokeSuspend", v = 1)
public final class CachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1<T> extends pg8 implements dm3<id3<? super MulticastedPagingData<T>>, PagingData<T>, e02<? super j59>, Object> {
    final /* synthetic */ y22 $scope$inlined;
    final /* synthetic */ ActiveFlowTracker $tracker$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1(e02 e02Var, y22 y22Var, ActiveFlowTracker activeFlowTracker) {
        super(3, e02Var);
        this.$scope$inlined = y22Var;
        this.$tracker$inlined = activeFlowTracker;
    }

    @Override // defpackage.dm3
    public final Object invoke(id3<? super MulticastedPagingData<T>> id3Var, PagingData<T> pagingData, e02<? super j59> e02Var) {
        CachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1 cachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1 = new CachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1(e02Var, this.$scope$inlined, this.$tracker$inlined);
        cachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1.L$0 = id3Var;
        cachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1.L$1 = pagingData;
        return cachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            id3 id3Var = (id3) this.L$0;
            MulticastedPagingData multicastedPagingData = new MulticastedPagingData(this.$scope$inlined, (PagingData) this.L$1, this.$tracker$inlined);
            this.label = 1;
            if (id3Var.emit(multicastedPagingData, this) == a32Var) {
                return a32Var;
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
