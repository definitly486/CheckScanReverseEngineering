package androidx.lifecycle;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hp2;
import defpackage.j59;
import defpackage.o22;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.qo2;
import defpackage.r57;
import defpackage.uy4;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveDataScopeImpl<T> implements LiveDataScope<T> {
    private final o22 coroutineContext;
    private CoroutineLiveData<T> target;

    /* JADX INFO: renamed from: androidx.lifecycle.LiveDataScopeImpl$emit$2, reason: invalid class name */
    @bd2(c = "androidx.lifecycle.LiveDataScopeImpl$emit$2", f = "CoroutineLiveData.kt", l = {100}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ T $value;
        int label;
        final /* synthetic */ LiveDataScopeImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(LiveDataScopeImpl<T> liveDataScopeImpl, T t, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.this$0 = liveDataScopeImpl;
            this.$value = t;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.this$0, this.$value, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                CoroutineLiveData<T> target$lifecycle_livedata = this.this$0.getTarget$lifecycle_livedata();
                this.label = 1;
                if (target$lifecycle_livedata.clearSource$lifecycle_livedata(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            this.this$0.getTarget$lifecycle_livedata().setValue(this.$value);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.LiveDataScopeImpl$emitSource$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.lifecycle.LiveDataScopeImpl$emitSource$2", f = "CoroutineLiveData.kt", l = {94}, m = "invokeSuspend", v = 1)
    public static final class C06962 extends pg8 implements bm3<y22, e02<? super hp2>, Object> {
        final /* synthetic */ LiveData<T> $source;
        int label;
        final /* synthetic */ LiveDataScopeImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06962(LiveDataScopeImpl<T> liveDataScopeImpl, LiveData<T> liveData, e02<? super C06962> e02Var) {
            super(2, e02Var);
            this.this$0 = liveDataScopeImpl;
            this.$source = liveData;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C06962(this.this$0, this.$source, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super hp2> e02Var) {
            return ((C06962) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            CoroutineLiveData<T> target$lifecycle_livedata = this.this$0.getTarget$lifecycle_livedata();
            LiveData<T> liveData = this.$source;
            this.label = 1;
            Object objEmitSource$lifecycle_livedata = target$lifecycle_livedata.emitSource$lifecycle_livedata(liveData, this);
            return objEmitSource$lifecycle_livedata == a32Var ? a32Var : objEmitSource$lifecycle_livedata;
        }
    }

    public LiveDataScopeImpl(CoroutineLiveData<T> coroutineLiveData, o22 o22Var) {
        coroutineLiveData.getClass();
        o22Var.getClass();
        this.target = coroutineLiveData;
        oi2 oi2Var = qo2.a;
        this.coroutineContext = o22Var.plus(uy4.a.k0());
    }

    @Override // androidx.lifecycle.LiveDataScope
    public Object emit(T t, e02<? super j59> e02Var) throws Throwable {
        Object objD = av0.d(this.coroutineContext, new AnonymousClass2(this, t, null), e02Var);
        return objD == a32.COROUTINE_SUSPENDED ? objD : j59.a;
    }

    @Override // androidx.lifecycle.LiveDataScope
    public Object emitSource(LiveData<T> liveData, e02<? super hp2> e02Var) {
        return av0.d(this.coroutineContext, new C06962(this, liveData, null), e02Var);
    }

    @Override // androidx.lifecycle.LiveDataScope
    public T getLatestValue() {
        return this.target.getValue();
    }

    public final CoroutineLiveData<T> getTarget$lifecycle_livedata() {
        return this.target;
    }

    public final void setTarget$lifecycle_livedata(CoroutineLiveData<T> coroutineLiveData) {
        coroutineLiveData.getClass();
        this.target = coroutineLiveData;
    }
}
