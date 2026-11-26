package androidx.lifecycle;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.loader.app.LoaderManagerImpl;
import androidx.media3.container.MdtaMetadataEntry;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.eo5;
import defpackage.gu3;
import defpackage.gx2;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.o22;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.qo2;
import defpackage.r57;
import defpackage.s0;
import defpackage.ud3;
import defpackage.ug6;
import defpackage.uy4;
import defpackage.y22;
import defpackage.y68;
import defpackage.yk2;
import java.time.Duration;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes3.dex */
public final class FlowLiveDataConversions {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1, reason: invalid class name */
    @bd2(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1", f = "FlowLiveData.kt", l = {105, 106, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1<T> extends pg8 implements bm3<ug6<? super T>, e02<? super j59>, Object> {
        final /* synthetic */ LiveData<T> $this_asFlow;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend", v = 1)
        public static final class C00891 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ Observer<T> $observer;
            final /* synthetic */ LiveData<T> $this_asFlow;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00891(LiveData<T> liveData, Observer<T> observer, e02<? super C00891> e02Var) {
                super(2, e02Var);
                this.$this_asFlow = liveData;
                this.$observer = observer;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00891(this.$this_asFlow, this.$observer, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C00891) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                if (this.label != 0) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                this.$this_asFlow.observeForever((Observer<? super T>) this.$observer);
                return j59.a;
            }
        }

        /* JADX INFO: renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2, reason: invalid class name */
        @bd2(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ Observer<T> $observer;
            final /* synthetic */ LiveData<T> $this_asFlow;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(LiveData<T> liveData, Observer<T> observer, e02<? super AnonymousClass2> e02Var) {
                super(2, e02Var);
                this.$this_asFlow = liveData;
                this.$observer = observer;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass2(this.$this_asFlow, this.$observer, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                if (this.label != 0) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                this.$this_asFlow.removeObserver((Observer<? super T>) this.$observer);
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LiveData<T> liveData, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$this_asFlow = liveData;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_asFlow, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super T> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.lifecycle.Observer] */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v9 */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            Observer observer;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            ?? r1 = this.label;
            try {
                if (r1 == 0) {
                    r57.b(obj);
                    final ug6 ug6Var = (ug6) this.L$0;
                    Observer observer2 = new Observer() { // from class: androidx.lifecycle.b
                        @Override // androidx.lifecycle.Observer
                        public final void onChanged(Object obj2) {
                            ug6Var.mo0trySendJP2dKIU(obj2);
                        }
                    };
                    oi2 oi2Var = qo2.a;
                    gu3 gu3VarK0 = uy4.a.k0();
                    C00891 c00891 = new C00891(this.$this_asFlow, observer2, null);
                    this.L$0 = observer2;
                    this.label = 1;
                    observer = observer2;
                    if (av0.d(gu3VarK0, c00891, this) == a32Var) {
                    }
                    return a32Var;
                }
                if (r1 == 1) {
                    Observer observer3 = (Observer) this.L$0;
                    r57.b(obj);
                    observer = observer3;
                } else {
                    if (r1 != 2) {
                        if (r1 != 3) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        Throwable th = (Throwable) this.L$0;
                        r57.b(obj);
                        throw th;
                    }
                    Observer observer4 = (Observer) this.L$0;
                    r57.b(obj);
                    r1 = observer4;
                }
                throw new KotlinNothingValueException();
                this.L$0 = observer;
                this.label = 2;
                r1 = observer;
                if (yk2.a(this) == a32Var) {
                    return a32Var;
                }
                throw new KotlinNothingValueException();
            } catch (Throwable th2) {
                oi2 oi2Var2 = qo2.a;
                o22 o22VarPlus = uy4.a.k0().plus(eo5.c);
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_asFlow, r1, null);
                this.L$0 = th2;
                this.label = 3;
                if (av0.d(o22VarPlus, anonymousClass2, this) != a32Var) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.lifecycle.FlowLiveDataConversions$asLiveData$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.lifecycle.FlowLiveDataConversions$asLiveData$1", f = "FlowLiveData.kt", l = {MdtaMetadataEntry.TYPE_INDICATOR_UNSIGNED_INT64}, m = "invokeSuspend", v = 1)
    public static final class C06931<T> extends pg8 implements bm3<LiveDataScope<T>, e02<? super j59>, Object> {
        final /* synthetic */ hd3<T> $this_asLiveData;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06931(hd3<? extends T> hd3Var, e02<? super C06931> e02Var) {
            super(2, e02Var);
            this.$this_asLiveData = hd3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C06931 c06931 = new C06931(this.$this_asLiveData, e02Var);
            c06931.L$0 = obj;
            return c06931;
        }

        @Override // defpackage.bm3
        public final Object invoke(LiveDataScope<T> liveDataScope, e02<? super j59> e02Var) {
            return ((C06931) create(liveDataScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final LiveDataScope liveDataScope = (LiveDataScope) this.L$0;
                hd3<T> hd3Var = this.$this_asLiveData;
                id3<? super T> id3Var = new id3() { // from class: androidx.lifecycle.FlowLiveDataConversions.asLiveData.1.1
                    @Override // defpackage.id3
                    public final Object emit(T t, e02<? super j59> e02Var) {
                        Object objEmit = liveDataScope.emit(t, e02Var);
                        return objEmit == a32.COROUTINE_SUSPENDED ? objEmit : j59.a;
                    }
                };
                this.label = 1;
                if (hd3Var.collect(id3Var, this) == a32Var) {
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

    public static final <T> hd3<T> asFlow(LiveData<T> liveData) {
        liveData.getClass();
        return ud3.a(s0.a(new AnonymousClass1(liveData, null)), -1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> LiveData<T> asLiveData(hd3<? extends T> hd3Var, o22 o22Var, long j) {
        hd3Var.getClass();
        o22Var.getClass();
        LoaderManagerImpl.LoaderInfo loaderInfo = (LiveData<T>) CoroutineLiveDataKt.liveData(o22Var, j, new C06931(hd3Var, null));
        if (hd3Var instanceof y68) {
            if (ArchTaskExecutor.getInstance().isMainThread()) {
                loaderInfo.setValue(((y68) hd3Var).getValue());
                return loaderInfo;
            }
            loaderInfo.postValue(((y68) hd3Var).getValue());
        }
        return loaderInfo;
    }

    public static /* synthetic */ LiveData asLiveData$default(hd3 hd3Var, o22 o22Var, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            o22Var = gx2.b;
        }
        if ((i & 2) != 0) {
            j = 5000;
        }
        return asLiveData(hd3Var, o22Var, j);
    }

    public static /* synthetic */ LiveData asLiveData$default(hd3 hd3Var, Duration duration, o22 o22Var, int i, Object obj) {
        if ((i & 2) != 0) {
            o22Var = gx2.b;
        }
        return asLiveData(hd3Var, duration, o22Var);
    }

    public static final <T> LiveData<T> asLiveData(hd3<? extends T> hd3Var, o22 o22Var) {
        hd3Var.getClass();
        o22Var.getClass();
        return asLiveData$default(hd3Var, o22Var, 0L, 2, (Object) null);
    }

    public static final <T> LiveData<T> asLiveData(hd3<? extends T> hd3Var) {
        hd3Var.getClass();
        return asLiveData$default(hd3Var, (o22) null, 0L, 3, (Object) null);
    }

    public static final <T> LiveData<T> asLiveData(hd3<? extends T> hd3Var, Duration duration, o22 o22Var) {
        hd3Var.getClass();
        duration.getClass();
        o22Var.getClass();
        return asLiveData(hd3Var, o22Var, Api26Impl.INSTANCE.toMillis(duration));
    }
}
