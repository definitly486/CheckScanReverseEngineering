package androidx.compose.animation.core;

import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.MotionDurationScale;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.f84;
import defpackage.gj7;
import defpackage.j59;
import defpackage.lm;
import defpackage.mi;
import defpackage.mi5;
import defpackage.ni;
import defpackage.nl3;
import defpackage.o22;
import defpackage.og8;
import defpackage.r07;
import defpackage.r57;
import defpackage.sc3;
import defpackage.yt0;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class SuspendAnimationKt {

    /* JADX INFO: renamed from: androidx.compose.animation.core.SuspendAnimationKt$animate$4, reason: invalid class name */
    @bd2(c = "androidx.compose.animation.core.SuspendAnimationKt", f = "SuspendAnimation.kt", l = {WebmConstants.MkvEbmlElement.TIMESTAMP, 280}, m = "animate", v = 1)
    public static final class AnonymousClass4<T, V extends AnimationVector> extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass4(e02<? super AnonymousClass4> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SuspendAnimationKt.animate(null, null, 0L, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x012b  */
    /* JADX WARN: Code duplicated, block: B:61:0x0134  */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    /* JADX WARN: Type inference failed for: r12v0, types: [T, androidx.compose.animation.core.AnimationScope] */
    public static final <T, V extends AnimationVector> Object animate(AnimationState<T, V> animationState, Animation<T, V> animation, long j, final nl3<? super AnimationScope<T, V>, j59> nl3Var, e02<? super j59> e02Var) {
        AnonymousClass4 anonymousClass4;
        final r07 r07Var;
        final AnimationState<T, V> animationState2;
        AnimationState<T, V> animationState3;
        r07 r07Var2;
        nl3<? super AnimationScope<T, V>, j59> nl3Var2;
        AnimationScope animationScope;
        AnimationScope animationScope2;
        nl3 nl3Var3;
        final Animation<T, V> animation2 = animation;
        if (e02Var instanceof AnonymousClass4) {
            anonymousClass4 = (AnonymousClass4) e02Var;
            int i = anonymousClass4.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass4.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass4 = new AnonymousClass4(e02Var);
            }
        } else {
            anonymousClass4 = new AnonymousClass4(e02Var);
        }
        AnonymousClass4 anonymousClass5 = anonymousClass4;
        Object obj = anonymousClass5.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass5.label;
        int i3 = 2;
        if (i2 == 0) {
            r57.b(obj);
            final T valueFromNanos = animation2.getValueFromNanos(0L);
            final AnimationVector velocityVectorFromNanos = animation2.getVelocityVectorFromNanos(0L);
            r07Var = new r07();
            if (j == Long.MIN_VALUE) {
                try {
                    final float durationScale = getDurationScale(anonymousClass5.getContext());
                    animationState2 = animationState;
                    try {
                        nl3 nl3Var4 = new nl3() { // from class: mg8
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj2) {
                                return SuspendAnimationKt.animate$lambda$3(r07Var, valueFromNanos, animation2, velocityVectorFromNanos, animationState2, durationScale, nl3Var, ((Long) obj2).longValue());
                            }
                        };
                        r07Var2 = r07Var;
                        try {
                            anonymousClass5.L$0 = animationState2;
                            anonymousClass5.L$1 = animation2;
                            anonymousClass5.L$2 = nl3Var;
                            anonymousClass5.L$3 = r07Var2;
                            anonymousClass5.label = 1;
                            if (callWithFrameNanos(animation2, nl3Var4, anonymousClass5) != a32Var) {
                                animationState3 = animationState2;
                                nl3Var2 = nl3Var;
                                r07Var = r07Var2;
                            }
                            return a32Var;
                        } catch (CancellationException e) {
                            e = e;
                            animationState3 = animationState2;
                            r07Var = r07Var2;
                            animationScope = (AnimationScope) r07Var.b;
                            if (animationScope != null) {
                                animationScope.setRunning$animation_core(false);
                            }
                            animationScope2 = (AnimationScope) r07Var.b;
                            if (animationScope2 != null) {
                                animationState3.setRunning$animation_core(false);
                            }
                            throw e;
                        }
                    } catch (CancellationException e2) {
                        e = e2;
                        animationState3 = animationState2;
                        animationScope = (AnimationScope) r07Var.b;
                        if (animationScope != null) {
                            animationScope.setRunning$animation_core(false);
                        }
                        animationScope2 = (AnimationScope) r07Var.b;
                        if (animationScope2 != null) {
                            animationState3.setRunning$animation_core(false);
                        }
                        throw e;
                    }
                } catch (CancellationException e3) {
                    e = e3;
                    animationState2 = animationState;
                }
            } else {
                r07Var2 = r07Var;
                try {
                    ?? r12 = (T) new AnimationScope(valueFromNanos, animation2.getTypeConverter(), velocityVectorFromNanos, j, animation2.getTargetValue(), j, true, new f84(animationState, i3));
                    doAnimationFrameWithScale(r12, j, getDurationScale(anonymousClass5.getContext()), animation2, animationState, nl3Var);
                    r07Var2.b = r12;
                    animationState3 = animationState;
                    animation2 = animation;
                    nl3Var2 = nl3Var;
                    r07Var = r07Var2;
                } catch (CancellationException e4) {
                    e = e4;
                    animationState3 = animationState;
                    r07Var = r07Var2;
                    animationScope = (AnimationScope) r07Var.b;
                    if (animationScope != null) {
                        animationScope.setRunning$animation_core(false);
                    }
                    animationScope2 = (AnimationScope) r07Var.b;
                    if (animationScope2 != null && animationScope2.getLastFrameTimeNanos() == animationState3.getLastFrameTimeNanos()) {
                        animationState3.setRunning$animation_core(false);
                    }
                    throw e;
                }
            }
        } else {
            if (i2 != 1 && i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var = (r07) anonymousClass5.L$3;
            nl3Var2 = (nl3) anonymousClass5.L$2;
            animation2 = (Animation) anonymousClass5.L$1;
            animationState3 = (AnimationState) anonymousClass5.L$0;
            try {
                r57.b(obj);
            } catch (CancellationException e5) {
                e = e5;
                animationScope = (AnimationScope) r07Var.b;
                if (animationScope != null) {
                    animationScope.setRunning$animation_core(false);
                }
                animationScope2 = (AnimationScope) r07Var.b;
                if (animationScope2 != null) {
                    animationState3.setRunning$animation_core(false);
                }
                throw e;
            }
        }
        do {
            T t = r07Var.b;
            t.getClass();
            if (!((AnimationScope) t).isRunning()) {
                return j59.a;
            }
            final float durationScale2 = getDurationScale(anonymousClass5.getContext());
            final r07 r07Var3 = r07Var;
            final nl3<? super AnimationScope<T, V>, j59> nl3Var5 = nl3Var2;
            final Animation<T, V> animation3 = animation2;
            final AnimationState<T, V> animationState4 = animationState3;
            try {
                nl3Var3 = new nl3() { // from class: ng8
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return SuspendAnimationKt.animate$lambda$6(r07Var3, durationScale2, animation3, animationState4, nl3Var5, ((Long) obj2).longValue());
                    }
                };
                r07Var = r07Var3;
                animation2 = animation3;
                animationState3 = animationState4;
                nl3Var2 = nl3Var5;
                anonymousClass5.L$0 = animationState3;
                anonymousClass5.L$1 = animation2;
                anonymousClass5.L$2 = nl3Var2;
                anonymousClass5.L$3 = r07Var;
                anonymousClass5.label = 2;
            } catch (CancellationException e6) {
                e = e6;
                r07Var = r07Var3;
                animationState3 = animationState4;
                animationScope = (AnimationScope) r07Var.b;
                if (animationScope != null) {
                    animationScope.setRunning$animation_core(false);
                }
                animationScope2 = (AnimationScope) r07Var.b;
                if (animationScope2 != null) {
                    animationState3.setRunning$animation_core(false);
                }
                throw e;
            }
        } while (callWithFrameNanos(animation2, nl3Var3, anonymousClass5) != a32Var);
        return a32Var;
    }

    public static /* synthetic */ Object animate$default(AnimationState animationState, Animation animation, long j, nl3 nl3Var, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            j = Long.MIN_VALUE;
        }
        long j2 = j;
        if ((i & 4) != 0) {
            nl3Var = new mi(3);
        }
        return animate(animationState, animation, j2, nl3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animate$lambda$1(bm3 bm3Var, TwoWayConverter twoWayConverter, AnimationScope animationScope) {
        bm3Var.invoke(animationScope.getValue(), twoWayConverter.getConvertFromVector().invoke(animationScope.getVelocityVector()));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animate$lambda$2(AnimationScope animationScope) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [T, androidx.compose.animation.core.AnimationScope] */
    public static final j59 animate$lambda$3(r07 r07Var, Object obj, Animation animation, AnimationVector animationVector, AnimationState animationState, float f, nl3 nl3Var, long j) {
        ?? animationScope = new AnimationScope(obj, animation.getTypeConverter(), animationVector, j, animation.getTargetValue(), j, true, new og8(animationState, 0));
        doAnimationFrameWithScale(animationScope, j, f, animation, animationState, nl3Var);
        r07Var.b = animationScope;
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animate$lambda$3$0(AnimationState animationState) {
        animationState.setRunning$animation_core(false);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animate$lambda$4(AnimationState animationState) {
        animationState.setRunning$animation_core(false);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 animate$lambda$6(r07 r07Var, float f, Animation animation, AnimationState animationState, nl3 nl3Var, long j) {
        T t = r07Var.b;
        t.getClass();
        doAnimationFrameWithScale((AnimationScope) t, j, f, animation, animationState, nl3Var);
        return j59.a;
    }

    public static final <T, V extends AnimationVector> Object animateDecay(AnimationState<T, V> animationState, DecayAnimationSpec<T> decayAnimationSpec, boolean z, nl3<? super AnimationScope<T, V>, j59> nl3Var, e02<? super j59> e02Var) {
        Object objAnimate = animate(animationState, new DecayAnimation((DecayAnimationSpec) decayAnimationSpec, (TwoWayConverter<T, AnimationVector>) animationState.getTypeConverter(), (Object) animationState.getValue(), animationState.getVelocityVector()), z ? animationState.getLastFrameTimeNanos() : Long.MIN_VALUE, nl3Var, e02Var);
        return objAnimate == a32.COROUTINE_SUSPENDED ? objAnimate : j59.a;
    }

    public static /* synthetic */ Object animateDecay$default(AnimationState animationState, DecayAnimationSpec decayAnimationSpec, boolean z, nl3 nl3Var, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            nl3Var = new lm(4);
        }
        return animateDecay(animationState, decayAnimationSpec, z, nl3Var, (e02<? super j59>) e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateDecay$lambda$0(bm3 bm3Var, AnimationScope animationScope) {
        bm3Var.invoke(animationScope.getValue(), Float.valueOf(((AnimationVector1D) animationScope.getVelocityVector()).getValue()));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateDecay$lambda$1(AnimationScope animationScope) {
        return j59.a;
    }

    public static final <T, V extends AnimationVector> Object animateTo(AnimationState<T, V> animationState, T t, AnimationSpec<T> animationSpec, boolean z, nl3<? super AnimationScope<T, V>, j59> nl3Var, e02<? super j59> e02Var) {
        Object objAnimate = animate(animationState, new TargetBasedAnimation(animationSpec, animationState.getTypeConverter(), animationState.getValue(), t, animationState.getVelocityVector()), z ? animationState.getLastFrameTimeNanos() : Long.MIN_VALUE, nl3Var, e02Var);
        return objAnimate == a32.COROUTINE_SUSPENDED ? objAnimate : j59.a;
    }

    public static /* synthetic */ Object animateTo$default(AnimationState animationState, Object obj, AnimationSpec animationSpec, boolean z, nl3 nl3Var, e02 e02Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
        }
        AnimationSpec animationSpec2 = animationSpec;
        if ((i & 4) != 0) {
            z = false;
        }
        boolean z2 = z;
        if ((i & 8) != 0) {
            nl3Var = new ni(6);
        }
        return animateTo(animationState, obj, animationSpec2, z2, nl3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateTo$lambda$0(AnimationScope animationScope) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <R, T, V extends AnimationVector> Object callWithFrameNanos(Animation<T, V> animation, nl3<? super Long, ? extends R> nl3Var, e02<? super R> e02Var) {
        return animation.isInfinite() ? InfiniteAnimationPolicyKt.withInfiniteAnimationFrameNanos(nl3Var, e02Var) : MonotonicFrameClockKt.withFrameNanos(new gj7(nl3Var, 1), e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object callWithFrameNanos$lambda$0(nl3 nl3Var, long j) {
        return nl3Var.invoke(Long.valueOf(j));
    }

    private static final <T, V extends AnimationVector> void doAnimationFrame(AnimationScope<T, V> animationScope, long j, long j2, Animation<T, V> animation, AnimationState<T, V> animationState, nl3<? super AnimationScope<T, V>, j59> nl3Var) {
        animationScope.setLastFrameTimeNanos$animation_core(j);
        animationScope.setValue$animation_core(animation.getValueFromNanos(j2));
        animationScope.setVelocityVector$animation_core(animation.getVelocityVectorFromNanos(j2));
        if (animation.isFinishedFromNanos(j2)) {
            animationScope.setFinishedTimeNanos$animation_core(animationScope.getLastFrameTimeNanos());
            animationScope.setRunning$animation_core(false);
        }
        updateState(animationScope, animationState);
        nl3Var.invoke(animationScope);
    }

    private static final <T, V extends AnimationVector> void doAnimationFrameWithScale(AnimationScope<T, V> animationScope, long j, float f, Animation<T, V> animation, AnimationState<T, V> animationState, nl3<? super AnimationScope<T, V>, j59> nl3Var) {
        doAnimationFrame(animationScope, j, f == 0.0f ? animation.getDurationNanos() : (long) ((j - animationScope.getStartTimeNanos()) / f), animation, animationState, nl3Var);
    }

    public static final float getDurationScale(o22 o22Var) {
        MotionDurationScale motionDurationScale = (MotionDurationScale) o22Var.get(MotionDurationScale.Key);
        float scaleFactor = motionDurationScale != null ? motionDurationScale.getScaleFactor() : 1.0f;
        if (!(scaleFactor >= 0.0f)) {
            PreconditionsKt.throwIllegalStateException("negative scale factor");
        }
        return scaleFactor;
    }

    public static final <T, V extends AnimationVector> void updateState(AnimationScope<T, V> animationScope, AnimationState<T, V> animationState) {
        animationState.setValue$animation_core(animationScope.getValue());
        AnimationVectorsKt.copyFrom(animationState.getVelocityVector(), animationScope.getVelocityVector());
        animationState.setFinishedTimeNanos$animation_core(animationScope.getFinishedTimeNanos());
        animationState.setLastFrameTimeNanos$animation_core(animationScope.getLastFrameTimeNanos());
        animationState.setRunning$animation_core(animationScope.isRunning());
    }

    public static /* synthetic */ Object animate$default(TwoWayConverter twoWayConverter, Object obj, Object obj2, Object obj3, AnimationSpec animationSpec, bm3 bm3Var, e02 e02Var, int i, Object obj4) {
        if ((i & 8) != 0) {
            obj3 = null;
        }
        if ((i & 16) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
        }
        return animate(twoWayConverter, obj, obj2, obj3, animationSpec, bm3Var, e02Var);
    }

    public static /* synthetic */ Object animate$default(float f, float f2, float f3, AnimationSpec animationSpec, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        if ((i & 8) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
        }
        return animate(f, f2, f3, animationSpec, bm3Var, e02Var);
    }

    public static final Object animateDecay(float f, float f2, FloatDecayAnimationSpec floatDecayAnimationSpec, bm3<? super Float, ? super Float, j59> bm3Var, e02<? super j59> e02Var) {
        Object objAnimate$default = animate$default(AnimationStateKt.AnimationState$default(f, f2, 0L, 0L, false, 28, null), AnimationKt.DecayAnimation(floatDecayAnimationSpec, f, f2), 0L, new mi5(bm3Var, 2), e02Var, 2, null);
        return objAnimate$default == a32.COROUTINE_SUSPENDED ? objAnimate$default : j59.a;
    }

    public static final Object animate(float f, float f2, float f3, AnimationSpec<Float> animationSpec, bm3<? super Float, ? super Float, j59> bm3Var, e02<? super j59> e02Var) {
        Object objAnimate = animate(VectorConvertersKt.getVectorConverter(sc3.a), new Float(f), new Float(f2), new Float(f3), animationSpec, bm3Var, e02Var);
        return objAnimate == a32.COROUTINE_SUSPENDED ? objAnimate : j59.a;
    }

    public static final <T, V extends AnimationVector> Object animate(TwoWayConverter<T, V> twoWayConverter, T t, T t2, T t3, AnimationSpec<T> animationSpec, bm3<? super T, ? super T, j59> bm3Var, e02<? super j59> e02Var) {
        V vNewInstance;
        if (t3 == null || (vNewInstance = twoWayConverter.getConvertToVector().invoke(t3)) == null) {
            vNewInstance = AnimationVectorsKt.newInstance(twoWayConverter.getConvertToVector().invoke(t));
        }
        AnimationVector animationVector = vNewInstance;
        Object objAnimate$default = animate$default(new AnimationState(twoWayConverter, t, animationVector, 0L, 0L, false, 56, null), new TargetBasedAnimation(animationSpec, twoWayConverter, t, t2, animationVector), 0L, new yt0(4, bm3Var, twoWayConverter), e02Var, 2, null);
        return objAnimate$default == a32.COROUTINE_SUSPENDED ? objAnimate$default : j59.a;
    }
}
