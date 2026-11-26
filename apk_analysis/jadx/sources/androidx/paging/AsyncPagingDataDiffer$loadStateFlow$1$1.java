package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.AsyncPagingDataDiffer$loadStateFlow$1$1", f = "AsyncPagingDataDiffer.kt", l = {}, m = "invokeSuspend", v = 1)
public final class AsyncPagingDataDiffer$loadStateFlow$1$1 extends pg8 implements bm3<Boolean, e02<? super Boolean>, Object> {
    /* synthetic */ boolean Z$0;
    int label;

    public AsyncPagingDataDiffer$loadStateFlow$1$1(e02<? super AsyncPagingDataDiffer$loadStateFlow$1$1> e02Var) {
        super(2, e02Var);
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        AsyncPagingDataDiffer$loadStateFlow$1$1 asyncPagingDataDiffer$loadStateFlow$1$1 = new AsyncPagingDataDiffer$loadStateFlow$1$1(e02Var);
        asyncPagingDataDiffer$loadStateFlow$1$1.Z$0 = ((Boolean) obj).booleanValue();
        return asyncPagingDataDiffer$loadStateFlow$1$1;
    }

    public final Object invoke(boolean z, e02<? super Boolean> e02Var) {
        return ((AsyncPagingDataDiffer$loadStateFlow$1$1) create(Boolean.valueOf(z), e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return Boolean.valueOf(!this.Z$0);
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, e02<? super Boolean> e02Var) {
        return invoke(bool.booleanValue(), e02Var);
    }
}
