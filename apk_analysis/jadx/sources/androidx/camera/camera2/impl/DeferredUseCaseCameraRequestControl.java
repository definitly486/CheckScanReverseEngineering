package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.config.UseCaseCameraScope;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ws6;
import defpackage.y22;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
@UseCaseCameraScope
public final class DeferredUseCaseCameraRequestControl implements UseCaseCameraRequestControl {
    private volatile UseCaseCameraRequestControlImpl impl;
    private final ws6<UseCaseCameraRequestControlImpl> implProvider;
    private final AtomicBoolean isClosed;
    private final UseCaseThreads threads;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$runOnSequential$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$runOnSequential$2", f = "DeferredUseCaseCameraRequestControl.kt", l = {90}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ nl3<UseCaseCameraRequestControl, mk2<T>> $action;
        int label;
        final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(nl3<? super UseCaseCameraRequestControl, ? extends mk2<? extends T>> nl3Var, DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$action = nl3Var;
            this.this$0 = deferredUseCaseCameraRequestControl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$action, this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
            mk2<T> mk2VarInvoke = this.$action.invoke(this.this$0.getOrCreateImpl());
            this.label = 1;
            Object objZ = mk2VarInvoke.Z(this);
            return objZ == a32Var ? a32Var : objZ;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            return this.$action.invoke(this.this$0.getOrCreateImpl()).Z(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$runOnSequentialSuspend$3, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$runOnSequentialSuspend$3", f = "DeferredUseCaseCameraRequestControl.kt", l = {132}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ bm3<UseCaseCameraRequestControl, e02<? super T>, Object> $action;
        int label;
        final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(bm3<? super UseCaseCameraRequestControl, ? super e02<? super T>, ? extends Object> bm3Var, DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.$action = bm3Var;
            this.this$0 = deferredUseCaseCameraRequestControl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass3(this.$action, this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
            bm3<UseCaseCameraRequestControl, e02<? super T>, Object> bm3Var = this.$action;
            UseCaseCameraRequestControlImpl orCreateImpl = this.this$0.getOrCreateImpl();
            this.label = 1;
            Object objInvoke = bm3Var.invoke(orCreateImpl, this);
            return objInvoke == a32Var ? a32Var : objInvoke;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            return this.$action.invoke(this.this$0.getOrCreateImpl(), this);
        }
    }

    public DeferredUseCaseCameraRequestControl(ws6<UseCaseCameraRequestControlImpl> ws6Var, UseCaseThreads useCaseThreads) {
        ws6Var.getClass();
        useCaseThreads.getClass();
        this.implProvider = ws6Var;
        this.threads = useCaseThreads;
        this.isClosed = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UseCaseCameraRequestControlImpl getOrCreateImpl() {
        if (this.isClosed.get()) {
            throw new CancellationException("UseCaseCameraRequestControl is closed");
        }
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl != null) {
            return useCaseCameraRequestControlImpl;
        }
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl2 = this.implProvider.get();
        if (this.isClosed.get()) {
            useCaseCameraRequestControlImpl2.close();
            throw new CancellationException("UseCaseCameraRequestControl closed during initialization");
        }
        this.impl = useCaseCameraRequestControlImpl2;
        useCaseCameraRequestControlImpl2.getClass();
        return useCaseCameraRequestControlImpl2;
    }

    private final <T> mk2<T> runOnSequential(nl3<? super UseCaseCameraRequestControl, ? extends mk2<? extends T>> nl3Var) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? nl3Var.invoke(useCaseCameraRequestControlImpl) : av0.a(this.threads.getSequentialScope(), null, null, new AnonymousClass2(nl3Var, this, null), 3);
    }

    private final <T> List<mk2<T>> runOnSequentialList(int i, nl3<? super UseCaseCameraRequestControl, ? extends List<? extends mk2<? extends T>>> nl3Var) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl != null) {
            return nl3Var.invoke(useCaseCameraRequestControlImpl);
        }
        nk2 nk2VarA = av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$runOnSequentialList$submissionJob$1(nl3Var, this, null), 3);
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1(nk2VarA, i2, null), 3));
        }
        return arrayList;
    }

    private final <T> Object runOnSequentialSuspend(bm3<? super UseCaseCameraRequestControl, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? bm3Var.invoke(useCaseCameraRequestControlImpl, null) : av0.d(aq5.x(this.threads.getSequentialExecutor()), new AnonymousClass3(bm3Var, this, null), e02Var);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Object awaitSurfaceSetup(e02<? super Boolean> e02Var) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.awaitSurfaceSetup(e02Var) : av0.d(aq5.x(this.threads.getSequentialExecutor()), new DeferredUseCaseCameraRequestControl$awaitSurfaceSetup$$inlined$runOnSequentialSuspend$1(this, null), e02Var);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<Result3A> cancelFocusAndMeteringAsync() {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.cancelFocusAndMeteringAsync() : av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$cancelFocusAndMeteringAsync$$inlined$runOnSequential$1(this, null), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public void close() {
        if (this.isClosed.getAndSet(true)) {
            return;
        }
        av0.c(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1(null, this), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public List<mk2<Void>> issueSingleCaptureAsync(List<CaptureConfig> list, int i, int i2, int i3) {
        list.getClass();
        int size = list.size();
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl != null) {
            return useCaseCameraRequestControlImpl.issueSingleCaptureAsync(list, i, i2, i3);
        }
        nk2 nk2VarA = av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1(this, null, list, i, i2, i3), 3);
        ArrayList arrayList = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            arrayList.add(av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1(nk2VarA, i4, null), 3));
        }
        return arrayList;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<j59> removeParametersAsync(List<? extends CaptureRequest.Key<?>> list, UseCaseCameraRequestControl.Type type) {
        list.getClass();
        type.getClass();
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.removeParametersAsync(list, type) : av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$removeParametersAsync$$inlined$runOnSequential$1(this, null, list, type), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<j59> setParametersAsync(Map<CaptureRequest.Key<?>, ? extends Object> map, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        map.getClass();
        type.getClass();
        optionPriority.getClass();
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.setParametersAsync(map, type, optionPriority) : av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$setParametersAsync$$inlined$runOnSequential$1(this, null, map, type, optionPriority), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* JADX INFO: renamed from: setTorchOffAsync-MtizInI, reason: not valid java name */
    public mk2<Result3A> mo67setTorchOffAsyncMtizInI(int i) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.mo67setTorchOffAsyncMtizInI(i) : av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$setTorchOffAsyncMtizInI$$inlined$runOnSequential$1(this, null, i), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<Result3A> setTorchOnAsync() {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.setTorchOnAsync() : av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$setTorchOnAsync$$inlined$runOnSequential$1(this, null), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* JADX INFO: renamed from: startFocusAndMeteringAsync-NxRnBj4, reason: not valid java name */
    public mk2<Result3A> mo68startFocusAndMeteringAsyncNxRnBj4(List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, long j) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.mo68startFocusAndMeteringAsyncNxRnBj4(list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode, j) : av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$startFocusAndMeteringAsyncNxRnBj4$$inlined$runOnSequential$1(this, null, list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode, j), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<j59> submitParameters(Map<CaptureRequest.Key<?>, ? extends Object> map, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        map.getClass();
        type.getClass();
        optionPriority.getClass();
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.submitParameters(map, type, optionPriority) : av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$submitParameters$$inlined$runOnSequential$1(this, null, map, type, optionPriority), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<Result3A> update3aRegions(List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.update3aRegions(list, list2, list3) : av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$update3aRegions$$inlined$runOnSequential$1(this, null, list, list2, list3), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<j59> updateCamera2ConfigAsync(Config config, Map<String, ? extends Object> map) {
        config.getClass();
        map.getClass();
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.updateCamera2ConfigAsync(config, map) : av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$updateCamera2ConfigAsync$$inlined$runOnSequential$1(this, null, config, map), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public mk2<j59> updateRepeatingRequestAsync(boolean z, Collection<? extends UseCase> collection) {
        collection.getClass();
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        return useCaseCameraRequestControlImpl != null ? useCaseCameraRequestControlImpl.updateRepeatingRequestAsync(z, collection) : av0.a(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$updateRepeatingRequestAsync$$inlined$runOnSequential$1(this, null, z, collection), 3);
    }
}
