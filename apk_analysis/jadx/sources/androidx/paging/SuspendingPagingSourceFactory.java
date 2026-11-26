package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.pg8;
import defpackage.r22;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public final class SuspendingPagingSourceFactory<Key, Value> implements ll3<PagingSource<Key, Value>> {
    private final ll3<PagingSource<Key, Value>> delegate;
    private final r22 dispatcher;

    /* JADX INFO: renamed from: androidx.paging.SuspendingPagingSourceFactory$create$2, reason: invalid class name */
    @bd2(c = "androidx.paging.SuspendingPagingSourceFactory$create$2", f = "SuspendingPagingSourceFactory.jvmAndAndroid.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super PagingSource<Key, Value>>, Object> {
        int label;
        final /* synthetic */ SuspendingPagingSourceFactory<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(SuspendingPagingSourceFactory<Key, Value> suspendingPagingSourceFactory, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.this$0 = suspendingPagingSourceFactory;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super PagingSource<Key, Value>> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return ((SuspendingPagingSourceFactory) this.this$0).delegate.invoke();
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SuspendingPagingSourceFactory(r22 r22Var, ll3<? extends PagingSource<Key, Value>> ll3Var) {
        r22Var.getClass();
        ll3Var.getClass();
        this.dispatcher = r22Var;
        this.delegate = ll3Var;
    }

    public final Object create(e02<? super PagingSource<Key, Value>> e02Var) {
        return av0.d(this.dispatcher, new AnonymousClass2(this, null), e02Var);
    }

    @Override // defpackage.ll3
    public PagingSource<Key, Value> invoke() {
        return this.delegate.invoke();
    }
}
