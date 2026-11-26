package androidx.lifecycle;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gx2;
import defpackage.j59;
import defpackage.nl3;
import defpackage.o22;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.qo2;
import defpackage.r57;
import defpackage.uy4;
import defpackage.y22;
import java.time.Duration;

/* JADX INFO: loaded from: classes3.dex */
public final class CoroutineLiveDataKt {
    public static final long DEFAULT_TIMEOUT = 5000;

    /* JADX INFO: renamed from: androidx.lifecycle.CoroutineLiveDataKt$addDisposableSource$2, reason: invalid class name */
    @bd2(c = "androidx.lifecycle.CoroutineLiveDataKt$addDisposableSource$2", f = "CoroutineLiveData.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super EmittedSource>, Object> {
        final /* synthetic */ LiveData<T> $source;
        final /* synthetic */ MediatorLiveData<T> $this_addDisposableSource;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(MediatorLiveData<T> mediatorLiveData, LiveData<T> liveData, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$this_addDisposableSource = mediatorLiveData;
            this.$source = liveData;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(MediatorLiveData mediatorLiveData, Object obj) {
            mediatorLiveData.setValue(obj);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$this_addDisposableSource, this.$source, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super EmittedSource> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            final MediatorLiveData<T> mediatorLiveData = this.$this_addDisposableSource;
            mediatorLiveData.addSource(this.$source, new CoroutineLiveDataKt$sam$androidx_lifecycle_Observer$0(new nl3() { // from class: androidx.lifecycle.a
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return CoroutineLiveDataKt.AnonymousClass2.invokeSuspend$lambda$0(mediatorLiveData, obj2);
                }
            }));
            return new EmittedSource(this.$source, this.$this_addDisposableSource);
        }
    }

    public static final <T> Object addDisposableSource(MediatorLiveData<T> mediatorLiveData, LiveData<T> liveData, e02<? super EmittedSource> e02Var) {
        oi2 oi2Var = qo2.a;
        return av0.d(uy4.a.k0(), new AnonymousClass2(mediatorLiveData, liveData, null), e02Var);
    }

    public static final <T> LiveData<T> liveData(Duration duration, o22 o22Var, bm3<? super LiveDataScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var) {
        duration.getClass();
        o22Var.getClass();
        bm3Var.getClass();
        return new CoroutineLiveData(o22Var, Api26Impl.INSTANCE.toMillis(duration), bm3Var);
    }

    public static /* synthetic */ LiveData liveData$default(o22 o22Var, long j, bm3 bm3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            o22Var = gx2.b;
        }
        if ((i & 2) != 0) {
            j = 5000;
        }
        return liveData(o22Var, j, bm3Var);
    }

    public static /* synthetic */ LiveData liveData$default(Duration duration, o22 o22Var, bm3 bm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            o22Var = gx2.b;
        }
        return liveData(duration, o22Var, bm3Var);
    }

    public static final <T> LiveData<T> liveData(bm3<? super LiveDataScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var) {
        bm3Var.getClass();
        return liveData$default((o22) null, 0L, bm3Var, 3, (Object) null);
    }

    public static final <T> LiveData<T> liveData(Duration duration, bm3<? super LiveDataScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var) {
        duration.getClass();
        bm3Var.getClass();
        return liveData$default(duration, (o22) null, bm3Var, 2, (Object) null);
    }

    public static final <T> LiveData<T> liveData(o22 o22Var, long j, bm3<? super LiveDataScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var) {
        o22Var.getClass();
        bm3Var.getClass();
        return new CoroutineLiveData(o22Var, j, bm3Var);
    }

    public static final <T> LiveData<T> liveData(o22 o22Var, bm3<? super LiveDataScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var) {
        o22Var.getClass();
        bm3Var.getClass();
        return liveData$default(o22Var, 0L, bm3Var, 2, (Object) null);
    }
}
