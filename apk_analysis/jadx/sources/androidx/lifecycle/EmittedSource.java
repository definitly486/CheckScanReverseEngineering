package androidx.lifecycle;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hp2;
import defpackage.j59;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.qo2;
import defpackage.r57;
import defpackage.uy4;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes3.dex */
public final class EmittedSource implements hp2 {
    private boolean disposed;
    private final MediatorLiveData<?> mediator;
    private final LiveData<?> source;

    /* JADX INFO: renamed from: androidx.lifecycle.EmittedSource$dispose$1, reason: invalid class name */
    @bd2(c = "androidx.lifecycle.EmittedSource$dispose$1", f = "CoroutineLiveData.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return EmittedSource.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            EmittedSource.this.removeSource();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.EmittedSource$disposeNow$2, reason: invalid class name */
    @bd2(c = "androidx.lifecycle.EmittedSource$disposeNow$2", f = "CoroutineLiveData.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return EmittedSource.this.new AnonymousClass2(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            EmittedSource.this.removeSource();
            return j59.a;
        }
    }

    public EmittedSource(LiveData<?> liveData, MediatorLiveData<?> mediatorLiveData) {
        liveData.getClass();
        mediatorLiveData.getClass();
        this.source = liveData;
        this.mediator = mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeSource() {
        if (this.disposed) {
            return;
        }
        this.mediator.removeSource(this.source);
        this.disposed = true;
    }

    @Override // defpackage.hp2
    public void dispose() {
        oi2 oi2Var = qo2.a;
        av0.c(z22.a(uy4.a.k0()), null, null, new AnonymousClass1(null), 3);
    }

    public final Object disposeNow(e02<? super j59> e02Var) throws Throwable {
        oi2 oi2Var = qo2.a;
        Object objD = av0.d(uy4.a.k0(), new AnonymousClass2(null), e02Var);
        return objD == a32.COROUTINE_SUSPENDED ? objD : j59.a;
    }
}
