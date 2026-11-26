package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.n07;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ul2;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class Animatable<T, V extends AnimationVector> {
    public static final int $stable = 8;
    private final SpringSpec<T> defaultSpringSpec;
    private final AnimationState<T, V> internalState;
    private final MutableState isRunning$delegate;
    private final String label;
    private T lowerBound;
    private V lowerBoundVector;
    private final MutatorMutex mutatorMutex;
    private final V negativeInfinityBounds;
    private final V positiveInfinityBounds;
    private final MutableState targetValue$delegate;
    private final TwoWayConverter<T, V> typeConverter;
    private T upperBound;
    private V upperBoundVector;
    private final T visibilityThreshold;

    /* JADX INFO: renamed from: androidx.compose.animation.core.Animatable$runAnimation$2, reason: invalid class name */
    @bd2(c = "androidx.compose.animation.core.Animatable$runAnimation$2", f = "Animatable.kt", l = {308}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super AnimationResult<T, V>>, Object> {
        final /* synthetic */ Animation<T, V> $animation;
        final /* synthetic */ nl3<Animatable<T, V>, j59> $block;
        final /* synthetic */ T $initialVelocity;
        final /* synthetic */ long $startTime;
        Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ Animatable<T, V> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Animatable<T, V> animatable, T t, Animation<T, V> animation, long j, nl3<? super Animatable<T, V>, j59> nl3Var, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.this$0 = animatable;
            this.$initialVelocity = t;
            this.$animation = animation;
            this.$startTime = j;
            this.$block = nl3Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final j59 invokeSuspend$lambda$0(Animatable animatable, AnimationState animationState, nl3 nl3Var, n07 n07Var, AnimationScope animationScope) {
            SuspendAnimationKt.updateState(animationScope, animatable.getInternalState$animation_core());
            Object objClampToBounds = animatable.clampToBounds(animationScope.getValue());
            if (!aa4.e(objClampToBounds, animationScope.getValue())) {
                animatable.getInternalState$animation_core().setValue$animation_core(objClampToBounds);
                animationState.setValue$animation_core(objClampToBounds);
                if (nl3Var != null) {
                    nl3Var.invoke(animatable);
                }
                animationScope.cancelAnimation();
                n07Var.b = true;
            } else if (nl3Var != null) {
                nl3Var.invoke(animatable);
            }
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass2(this.this$0, this.$initialVelocity, this.$animation, this.$startTime, this.$block, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super AnimationResult<T, V>> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            AnimationState animationState;
            n07 n07Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    this.this$0.getInternalState$animation_core().setVelocityVector$animation_core(this.this$0.getTypeConverter().getConvertToVector().invoke(this.$initialVelocity));
                    this.this$0.setTargetValue(this.$animation.getTargetValue());
                    this.this$0.setRunning(true);
                    final AnimationState animationStateCopy$default = AnimationStateKt.copy$default((AnimationState) this.this$0.getInternalState$animation_core(), (Object) null, (AnimationVector) null, 0L, Long.MIN_VALUE, false, 23, (Object) null);
                    final n07 n07Var2 = new n07();
                    Animation<T, V> animation = this.$animation;
                    long j = this.$startTime;
                    final Animatable<T, V> animatable = this.this$0;
                    final nl3<Animatable<T, V>, j59> nl3Var = this.$block;
                    nl3 nl3Var2 = new nl3() { // from class: androidx.compose.animation.core.a
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj2) {
                            return Animatable.AnonymousClass2.invokeSuspend$lambda$0(animatable, animationStateCopy$default, nl3Var, n07Var2, (AnimationScope) obj2);
                        }
                    };
                    this.L$0 = animationStateCopy$default;
                    this.L$1 = n07Var2;
                    this.label = 1;
                    if (SuspendAnimationKt.animate(animationStateCopy$default, animation, j, nl3Var2, this) == a32Var) {
                        return a32Var;
                    }
                    animationState = animationStateCopy$default;
                    n07Var = n07Var2;
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    n07Var = (n07) this.L$1;
                    animationState = (AnimationState) this.L$0;
                    r57.b(obj);
                }
                AnimationEndReason animationEndReason = n07Var.b ? AnimationEndReason.BoundReached : AnimationEndReason.Finished;
                this.this$0.endAnimation();
                return new AnimationResult(animationState, animationEndReason);
            } catch (CancellationException e) {
                this.this$0.endAnimation();
                throw e;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.Animatable$snapTo$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.animation.core.Animatable$snapTo$2", f = "Animatable.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C04552 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ T $targetValue;
        int label;
        final /* synthetic */ Animatable<T, V> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04552(Animatable<T, V> animatable, T t, e02<? super C04552> e02Var) {
            super(1, e02Var);
            this.this$0 = animatable;
            this.$targetValue = t;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new C04552(this.this$0, this.$targetValue, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((C04552) create(e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            this.this$0.endAnimation();
            Object objClampToBounds = this.this$0.clampToBounds(this.$targetValue);
            this.this$0.getInternalState$animation_core().setValue$animation_core(objClampToBounds);
            this.this$0.setTargetValue(objClampToBounds);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.Animatable$stop$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.animation.core.Animatable$stop$2", f = "Animatable.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C04562 extends pg8 implements nl3<e02<? super j59>, Object> {
        int label;
        final /* synthetic */ Animatable<T, V> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04562(Animatable<T, V> animatable, e02<? super C04562> e02Var) {
            super(1, e02Var);
            this.this$0 = animatable;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new C04562(this.this$0, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((C04562) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            this.this$0.endAnimation();
            return j59.a;
        }
    }

    public Animatable(T t, TwoWayConverter<T, V> twoWayConverter, T t2, String str) {
        this.typeConverter = twoWayConverter;
        this.visibilityThreshold = t2;
        this.label = str;
        this.internalState = new AnimationState<>(twoWayConverter, t, null, 0L, 0L, false, 60, null);
        this.isRunning$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.targetValue$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t, null, 2, null);
        this.mutatorMutex = new MutatorMutex();
        this.defaultSpringSpec = new SpringSpec<>(0.0f, 0.0f, t2, 3, null);
        AnimationVector velocityVector = getVelocityVector();
        V v = velocityVector instanceof AnimationVector1D ? AnimatableKt.negativeInfinityBounds1D : velocityVector instanceof AnimationVector2D ? AnimatableKt.negativeInfinityBounds2D : velocityVector instanceof AnimationVector3D ? AnimatableKt.negativeInfinityBounds3D : AnimatableKt.negativeInfinityBounds4D;
        v.getClass();
        this.negativeInfinityBounds = v;
        AnimationVector velocityVector2 = getVelocityVector();
        V v2 = velocityVector2 instanceof AnimationVector1D ? AnimatableKt.positiveInfinityBounds1D : velocityVector2 instanceof AnimationVector2D ? AnimatableKt.positiveInfinityBounds2D : velocityVector2 instanceof AnimationVector3D ? AnimatableKt.positiveInfinityBounds3D : AnimatableKt.positiveInfinityBounds4D;
        v2.getClass();
        this.positiveInfinityBounds = v2;
        this.lowerBoundVector = v;
        this.upperBoundVector = v2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateDecay$default(Animatable animatable, Object obj, DecayAnimationSpec decayAnimationSpec, nl3 nl3Var, e02 e02Var, int i, Object obj2) {
        if ((i & 4) != 0) {
            nl3Var = null;
        }
        return animatable.animateDecay(obj, decayAnimationSpec, nl3Var, e02Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateTo$default(Animatable animatable, Object obj, AnimationSpec animationSpec, Object obj2, nl3 nl3Var, e02 e02Var, int i, Object obj3) {
        if ((i & 2) != 0) {
            animationSpec = animatable.defaultSpringSpec;
        }
        AnimationSpec animationSpec2 = animationSpec;
        if ((i & 4) != 0) {
            obj2 = animatable.getVelocity();
        }
        Object obj4 = obj2;
        if ((i & 8) != 0) {
            nl3Var = null;
        }
        return animatable.animateTo(obj, animationSpec2, obj4, nl3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final T clampToBounds(T t) {
        if (!aa4.e(this.lowerBoundVector, this.negativeInfinityBounds) || !aa4.e(this.upperBoundVector, this.positiveInfinityBounds)) {
            V vInvoke = this.typeConverter.getConvertToVector().invoke(t);
            int size$animation_core = vInvoke.getSize$animation_core();
            boolean z = false;
            for (int i = 0; i < size$animation_core; i++) {
                if (vInvoke.get$animation_core(i) < this.lowerBoundVector.get$animation_core(i) || vInvoke.get$animation_core(i) > this.upperBoundVector.get$animation_core(i)) {
                    vInvoke.set$animation_core(i, kx6.d(vInvoke.get$animation_core(i), this.lowerBoundVector.get$animation_core(i), this.upperBoundVector.get$animation_core(i)));
                    z = true;
                }
            }
            if (z) {
                return this.typeConverter.getConvertFromVector().invoke(vInvoke);
            }
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void endAnimation() {
        AnimationState<T, V> animationState = this.internalState;
        animationState.getVelocityVector().reset$animation_core();
        animationState.setLastFrameTimeNanos$animation_core(Long.MIN_VALUE);
        setRunning(false);
    }

    private static /* synthetic */ void getNegativeInfinityBounds$annotations() {
    }

    private static /* synthetic */ void getPositiveInfinityBounds$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object runAnimation(Animation<T, V> animation, T t, nl3<? super Animatable<T, V>, j59> nl3Var, e02<? super AnimationResult<T, V>> e02Var) {
        return MutatorMutex.mutate$default(this.mutatorMutex, null, new AnonymousClass2(this, t, animation, this.internalState.getLastFrameTimeNanos(), nl3Var, null), e02Var, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setRunning(boolean z) {
        this.isRunning$delegate.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTargetValue(T t) {
        this.targetValue$delegate.setValue(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void updateBounds$default(Animatable animatable, Object obj, Object obj2, int i, Object obj3) {
        if ((i & 1) != 0) {
            obj = animatable.lowerBound;
        }
        if ((i & 2) != 0) {
            obj2 = animatable.upperBound;
        }
        animatable.updateBounds(obj, obj2);
    }

    public final Object animateDecay(T t, DecayAnimationSpec<T> decayAnimationSpec, nl3<? super Animatable<T, V>, j59> nl3Var, e02<? super AnimationResult<T, V>> e02Var) {
        return runAnimation(new DecayAnimation((DecayAnimationSpec) decayAnimationSpec, (TwoWayConverter) this.typeConverter, (Object) getValue(), (AnimationVector) this.typeConverter.getConvertToVector().invoke(t)), t, nl3Var, e02Var);
    }

    public final Object animateTo(T t, AnimationSpec<T> animationSpec, T t2, nl3<? super Animatable<T, V>, j59> nl3Var, e02<? super AnimationResult<T, V>> e02Var) {
        return runAnimation(AnimationKt.TargetBasedAnimation(animationSpec, this.typeConverter, getValue(), t, t2), t2, nl3Var, e02Var);
    }

    public final State<T> asState() {
        return this.internalState;
    }

    public final SpringSpec<T> getDefaultSpringSpec$animation_core() {
        return this.defaultSpringSpec;
    }

    public final AnimationState<T, V> getInternalState$animation_core() {
        return this.internalState;
    }

    public final String getLabel() {
        return this.label;
    }

    public final T getLowerBound() {
        return this.lowerBound;
    }

    public final T getTargetValue() {
        return this.targetValue$delegate.getValue();
    }

    public final TwoWayConverter<T, V> getTypeConverter() {
        return this.typeConverter;
    }

    public final T getUpperBound() {
        return this.upperBound;
    }

    public final T getValue() {
        return this.internalState.getValue();
    }

    public final T getVelocity() {
        return (T) this.typeConverter.getConvertFromVector().invoke(getVelocityVector());
    }

    public final V getVelocityVector() {
        return (V) this.internalState.getVelocityVector();
    }

    public final boolean isRunning() {
        return ((Boolean) this.isRunning$delegate.getValue()).booleanValue();
    }

    public final Object snapTo(T t, e02<? super j59> e02Var) {
        Object objMutate$default = MutatorMutex.mutate$default(this.mutatorMutex, null, new C04552(this, t, null), e02Var, 1, null);
        return objMutate$default == a32.COROUTINE_SUSPENDED ? objMutate$default : j59.a;
    }

    public final Object stop(e02<? super j59> e02Var) {
        Object objMutate$default = MutatorMutex.mutate$default(this.mutatorMutex, null, new C04562(this, null), e02Var, 1, null);
        return objMutate$default == a32.COROUTINE_SUSPENDED ? objMutate$default : j59.a;
    }

    public final void updateBounds(T t, T t2) {
        V vInvoke;
        V vInvoke2;
        if (t == null || (vInvoke = this.typeConverter.getConvertToVector().invoke(t)) == null) {
            vInvoke = this.negativeInfinityBounds;
        }
        if (t2 == null || (vInvoke2 = this.typeConverter.getConvertToVector().invoke(t2)) == null) {
            vInvoke2 = this.positiveInfinityBounds;
        }
        int size$animation_core = vInvoke.getSize$animation_core();
        for (int i = 0; i < size$animation_core; i++) {
            if (!(vInvoke.get$animation_core(i) <= vInvoke2.get$animation_core(i))) {
                PreconditionsKt.throwIllegalStateException("Lower bound must be no greater than upper bound on *all* dimensions. The provided lower bound: " + vInvoke + " is greater than upper bound " + vInvoke2 + " on index " + i);
            }
        }
        this.lowerBoundVector = vInvoke;
        this.upperBoundVector = vInvoke2;
        this.upperBound = t2;
        this.lowerBound = t;
        if (isRunning()) {
            return;
        }
        T tClampToBounds = clampToBounds(getValue());
        if (aa4.e(tClampToBounds, getValue())) {
            return;
        }
        this.internalState.setValue$animation_core(tClampToBounds);
    }

    public /* synthetic */ Animatable(Object obj, TwoWayConverter twoWayConverter, Object obj2, String str, int i, jh2 jh2Var) {
        this(obj, twoWayConverter, (i & 4) != 0 ? null : obj2, (i & 8) != 0 ? "Animatable" : str);
    }

    public /* synthetic */ Animatable(Object obj, TwoWayConverter twoWayConverter, Object obj2, int i, jh2 jh2Var) {
        this(obj, twoWayConverter, (i & 4) != 0 ? null : obj2);
    }

    @ul2
    public /* synthetic */ Animatable(Object obj, TwoWayConverter twoWayConverter, Object obj2) {
        this(obj, twoWayConverter, obj2, "Animatable");
    }
}
