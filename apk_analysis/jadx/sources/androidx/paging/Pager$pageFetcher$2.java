package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: Add missing generic type declarations: [Value, Key] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.Pager$pageFetcher$2", f = "Pager.kt", l = {}, m = "invokeSuspend", v = 1)
public final class Pager$pageFetcher$2<Key, Value> extends pg8 implements nl3<e02<? super PagingSource<Key, Value>>, Object> {
    final /* synthetic */ ll3<PagingSource<Key, Value>> $pagingSourceFactory;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Pager$pageFetcher$2(ll3<? extends PagingSource<Key, Value>> ll3Var, e02<? super Pager$pageFetcher$2> e02Var) {
        super(1, e02Var);
        this.$pagingSourceFactory = ll3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new Pager$pageFetcher$2(this.$pagingSourceFactory, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super PagingSource<Key, Value>> e02Var) {
        return ((Pager$pageFetcher$2) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return this.$pagingSourceFactory.invoke();
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
