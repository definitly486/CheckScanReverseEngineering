package androidx.compose.animation.core;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a31;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.az0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bz0;
import defpackage.c31;
import defpackage.ch5;
import defpackage.e02;
import defpackage.f02;
import defpackage.fo4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.w65;
import defpackage.y22;
import defpackage.y74;
import defpackage.yg5;
import defpackage.z22;
import defpackage.zya;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class SeekableTransitionState<S> extends TransitionState<S> {
    private final nl3<Long, j59> animateOneFrameLambda;
    private S composedTargetState;
    private a31<? super S> compositionContinuation;
    private final yg5 compositionContinuationMutex;
    private SeekingAnimationState currentAnimation;
    private final MutableState currentState$delegate;
    private float durationScale;
    private final nl3<Long, j59> firstFrameLambda;
    private final MutableFloatState fraction$delegate;
    private final MutableObjectList<SeekingAnimationState> initialValueAnimations;
    private long lastFrameTimeNanos;
    private final MutatorMutex mutatorMutex;
    private final ll3<j59> recalculateTotalDurationNanos;
    private SnapshotStateObserver snapshotStateObserver;
    private final MutableState targetState$delegate;
    private long totalDurationNanos;
    private Transition<S> transition;
    private static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final AnimationVector1D ZeroVelocity = new AnimationVector1D(0.0f);
    private static final AnimationVector1D Target1 = new AnimationVector1D(1.0f);

    public static final class SeekingAnimationState {
        public static final int $stable = 8;
        private VectorizedAnimationSpec<AnimationVector1D> animationSpec;
        private long animationSpecDuration;
        private long durationNanos;
        private AnimationVector1D initialVelocity;
        private boolean isComplete;
        private long progressNanos;
        private AnimationVector1D start = new AnimationVector1D(0.0f);
        private float value;

        public final VectorizedAnimationSpec<AnimationVector1D> getAnimationSpec() {
            return this.animationSpec;
        }

        public final long getAnimationSpecDuration() {
            return this.animationSpecDuration;
        }

        public final long getDurationNanos() {
            return this.durationNanos;
        }

        public final AnimationVector1D getInitialVelocity() {
            return this.initialVelocity;
        }

        public final long getProgressNanos() {
            return this.progressNanos;
        }

        public final AnimationVector1D getStart() {
            return this.start;
        }

        public final float getValue() {
            return this.value;
        }

        public final boolean isComplete() {
            return this.isComplete;
        }

        public final void setAnimationSpec(VectorizedAnimationSpec<AnimationVector1D> vectorizedAnimationSpec) {
            this.animationSpec = vectorizedAnimationSpec;
        }

        public final void setAnimationSpecDuration(long j) {
            this.animationSpecDuration = j;
        }

        public final void setComplete(boolean z) {
            this.isComplete = z;
        }

        public final void setDurationNanos(long j) {
            this.durationNanos = j;
        }

        public final void setInitialVelocity(AnimationVector1D animationVector1D) {
            this.initialVelocity = animationVector1D;
        }

        public final void setProgressNanos(long j) {
            this.progressNanos = j;
        }

        public final void setStart(AnimationVector1D animationVector1D) {
            this.start = animationVector1D;
        }

        public final void setValue(float f) {
            this.value = f;
        }

        public String toString() {
            return "progress nanos: " + this.progressNanos + ", animationSpec: " + this.animationSpec + ", isComplete: " + this.isComplete + ", value: " + this.value + ", start: " + this.start + ", initialVelocity: " + this.initialVelocity + ", durationNanos: " + this.durationNanos + ", animationSpecDuration: " + this.animationSpecDuration;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$animateTo$2, reason: invalid class name */
    @bd2(c = "androidx.compose.animation.core.SeekableTransitionState$animateTo$2", f = "Transition.kt", l = {TypedValues.MotionType.TYPE_PATHMOTION_ARC}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;
        final /* synthetic */ S $targetState;
        final /* synthetic */ Transition<S> $transition;
        int label;
        final /* synthetic */ SeekableTransitionState<S> this$0;

        /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$animateTo$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.animation.core.SeekableTransitionState$animateTo$2$1", f = "Transition.kt", l = {2194, 620, 622, 676, 678}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;
            final /* synthetic */ S $targetState;
            final /* synthetic */ Transition<S> $transition;
            Object L$0;
            Object L$1;
            int label;
            final /* synthetic */ SeekableTransitionState<S> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(SeekableTransitionState<S> seekableTransitionState, S s, Transition<S> transition, FiniteAnimationSpec<Float> finiteAnimationSpec, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.this$0 = seekableTransitionState;
                this.$targetState = s;
                this.$transition = transition;
                this.$animationSpec = finiteAnimationSpec;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.this$0, this.$targetState, this.$transition, this.$animationSpec, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Code duplicated, block: B:32:0x00b7  */
            /* JADX WARN: Code duplicated, block: B:34:0x00c5  */
            /* JADX WARN: Code duplicated, block: B:36:0x00d1  */
            /* JADX WARN: Code duplicated, block: B:38:0x00db  */
            /* JADX WARN: Code duplicated, block: B:39:0x00e6  */
            /* JADX WARN: Code duplicated, block: B:41:0x00e9  */
            /* JADX WARN: Code duplicated, block: B:43:0x00f3 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:44:0x00f5  */
            /* JADX WARN: Code duplicated, block: B:45:0x00fb  */
            /* JADX WARN: Code duplicated, block: B:47:0x00fe  */
            /* JADX WARN: Code duplicated, block: B:49:0x0114  */
            /* JADX WARN: Code duplicated, block: B:51:0x0125  */
            /* JADX WARN: Code duplicated, block: B:52:0x0127  */
            /* JADX WARN: Code duplicated, block: B:62:0x015a  */
            /* JADX WARN: Code duplicated, block: B:64:0x0164  */
            /* JADX WARN: Code duplicated, block: B:67:0x0197  */
            /* JADX WARN: Code duplicated, block: B:68:0x01a8  */
            /* JADX WARN: Code duplicated, block: B:73:0x01d5  */
            /* JADX WARN: Code restructure failed: missing block: B:74:0x01e4, code lost:
            
                if (r2.waitForComposition(r18) == r1) goto L75;
             */
            @Override // defpackage.cd0
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r19) {
                /*
                    Method dump skipped, instruction units count: 500
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SeekableTransitionState.AnonymousClass2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Transition<S> transition, SeekableTransitionState<S> seekableTransitionState, S s, FiniteAnimationSpec<Float> finiteAnimationSpec, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.$transition = transition;
            this.this$0 = seekableTransitionState;
            this.$targetState = s;
            this.$animationSpec = finiteAnimationSpec;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass2(this.$transition, this.this$0, this.$targetState, this.$animationSpec, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$targetState, this.$transition, this.$animationSpec, null);
                this.label = 1;
                if (z22.c(anonymousClass1, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            this.$transition.onTransitionEnd$animation_core();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$runAnimations$1, reason: invalid class name */
    @bd2(c = "androidx.compose.animation.core.SeekableTransitionState", f = "Transition.kt", l = {361, 364}, m = "runAnimations", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SeekableTransitionState<S> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SeekableTransitionState<S> seekableTransitionState, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = seekableTransitionState;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.runAnimations(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$seekTo$3, reason: invalid class name */
    @bd2(c = "androidx.compose.animation.core.SeekableTransitionState$seekTo$3", f = "Transition.kt", l = {496}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ float $fraction;
        final /* synthetic */ S $oldTargetState;
        final /* synthetic */ S $targetState;
        final /* synthetic */ Transition<S> $transition;
        int label;
        final /* synthetic */ SeekableTransitionState<S> this$0;

        /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1, reason: invalid class name */
        @bd2(c = "androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1", f = "Transition.kt", l = {518}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ float $fraction;
            final /* synthetic */ S $oldTargetState;
            final /* synthetic */ S $targetState;
            final /* synthetic */ Transition<S> $transition;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ SeekableTransitionState<S> this$0;

            /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1$1", f = "Transition.kt", l = {514}, m = "invokeSuspend", v = 1)
            public static final class C00181 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                int label;
                final /* synthetic */ SeekableTransitionState<S> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C00181(SeekableTransitionState<S> seekableTransitionState, e02<? super C00181> e02Var) {
                    super(2, e02Var);
                    this.this$0 = seekableTransitionState;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    return new C00181(this.this$0, e02Var);
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((C00181) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i = this.label;
                    if (i == 0) {
                        r57.b(obj);
                        SeekableTransitionState<S> seekableTransitionState = this.this$0;
                        this.label = 1;
                        if (seekableTransitionState.runAnimations(this) == a32Var) {
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

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(S s, S s2, SeekableTransitionState<S> seekableTransitionState, Transition<S> transition, float f, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$targetState = s;
                this.$oldTargetState = s2;
                this.this$0 = seekableTransitionState;
                this.$transition = transition;
                this.$fraction = f;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$targetState, this.$oldTargetState, this.this$0, this.$transition, this.$fraction, e02Var);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    y22 y22Var = (y22) this.L$0;
                    boolean zE = aa4.e(this.$targetState, this.$oldTargetState);
                    SeekableTransitionState<S> seekableTransitionState = this.this$0;
                    if (zE) {
                        ((SeekableTransitionState) seekableTransitionState).currentAnimation = null;
                        if (aa4.e(this.this$0.getCurrentState(), this.$targetState)) {
                            return j59.a;
                        }
                    } else {
                        seekableTransitionState.moveAnimationToInitialState();
                    }
                    if (!aa4.e(this.$targetState, this.$oldTargetState)) {
                        this.$transition.updateTarget$animation_core(this.$targetState);
                        this.$transition.setPlayTimeNanos(0L);
                        this.this$0.setTargetState$animation_core(this.$targetState);
                        this.$transition.resetAnimationFraction$animation_core(this.$fraction);
                    }
                    this.this$0.setFraction(this.$fraction);
                    boolean zIsNotEmpty = ((SeekableTransitionState) this.this$0).initialValueAnimations.isNotEmpty();
                    SeekableTransitionState<S> seekableTransitionState2 = this.this$0;
                    if (zIsNotEmpty) {
                        av0.c(y22Var, null, null, new C00181(seekableTransitionState2, null), 3);
                    } else {
                        ((SeekableTransitionState) seekableTransitionState2).lastFrameTimeNanos = Long.MIN_VALUE;
                    }
                    SeekableTransitionState<S> seekableTransitionState3 = this.this$0;
                    this.label = 1;
                    if (seekableTransitionState3.waitForCompositionAfterTargetStateChange(this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                this.this$0.seekToFraction();
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(S s, S s2, SeekableTransitionState<S> seekableTransitionState, Transition<S> transition, float f, e02<? super AnonymousClass3> e02Var) {
            super(1, e02Var);
            this.$targetState = s;
            this.$oldTargetState = s2;
            this.this$0 = seekableTransitionState;
            this.$transition = transition;
            this.$fraction = f;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass3(this.$targetState, this.$oldTargetState, this.this$0, this.$transition, this.$fraction, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass3) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$targetState, this.$oldTargetState, this.this$0, this.$transition, this.$fraction, null);
                this.label = 1;
                if (z22.c(anonymousClass1, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$snapTo$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.animation.core.SeekableTransitionState$snapTo$2", f = "Transition.kt", l = {465}, m = "invokeSuspend", v = 1)
    public static final class C04592 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ S $targetState;
        final /* synthetic */ Transition<S> $transition;
        int label;
        final /* synthetic */ SeekableTransitionState<S> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04592(SeekableTransitionState<S> seekableTransitionState, S s, Transition<S> transition, e02<? super C04592> e02Var) {
            super(1, e02Var);
            this.this$0 = seekableTransitionState;
            this.$targetState = s;
            this.$transition = transition;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new C04592(this.this$0, this.$targetState, this.$transition, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((C04592) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            float f;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                this.this$0.endAllAnimations();
                ((SeekableTransitionState) this.this$0).lastFrameTimeNanos = Long.MIN_VALUE;
                this.this$0.setFraction(0.0f);
                S s = this.$targetState;
                if (aa4.e(s, this.this$0.getCurrentState())) {
                    f = -4.0f;
                } else {
                    f = aa4.e(s, this.this$0.getTargetState()) ? -5.0f : -3.0f;
                }
                this.$transition.updateTarget$animation_core(this.$targetState);
                this.$transition.setPlayTimeNanos(0L);
                this.this$0.setTargetState$animation_core(this.$targetState);
                this.this$0.setFraction(0.0f);
                this.this$0.setCurrentState$animation_core(this.$targetState);
                this.$transition.resetAnimationFraction$animation_core(f);
                if (f == -3.0f) {
                    SeekableTransitionState<S> seekableTransitionState = this.this$0;
                    this.label = 1;
                    if (seekableTransitionState.waitForCompositionAfterTargetStateChange(this) == a32Var) {
                        return a32Var;
                    }
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            this.$transition.onTransitionEnd$animation_core();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$waitForComposition$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.animation.core.SeekableTransitionState", f = "Transition.kt", l = {551, 2189}, m = "waitForComposition", v = 1)
    public static final class C04601 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SeekableTransitionState<S> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04601(SeekableTransitionState<S> seekableTransitionState, e02<? super C04601> e02Var) {
            super(e02Var);
            this.this$0 = seekableTransitionState;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.waitForComposition(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$waitForCompositionAfterTargetStateChange$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.animation.core.SeekableTransitionState", f = "Transition.kt", l = {527, 2189}, m = "waitForCompositionAfterTargetStateChange", v = 1)
    public static final class C04611 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SeekableTransitionState<S> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04611(SeekableTransitionState<S> seekableTransitionState, e02<? super C04611> e02Var) {
            super(e02Var);
            this.this$0 = seekableTransitionState;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.waitForCompositionAfterTargetStateChange(this);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SeekableTransitionState(S s) {
        jh2 jh2Var = null;
        super(jh2Var);
        this.targetState$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(s, null, 2, null);
        this.currentState$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(s, null, 2, null);
        this.composedTargetState = s;
        this.recalculateTotalDurationNanos = new az0(this, 4);
        this.fraction$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.compositionContinuationMutex = new ch5();
        this.mutatorMutex = new MutatorMutex();
        this.lastFrameTimeNanos = Long.MIN_VALUE;
        this.initialValueAnimations = new MutableObjectList<>(0, 1, jh2Var);
        this.firstFrameLambda = new fo4(this, 1);
        this.animateOneFrameLambda = new bz0(this, 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object animateOneFrame(e02<? super j59> e02Var) {
        float durationScale = SuspendAnimationKt.getDurationScale(e02Var.getContext());
        if (durationScale <= 0.0f) {
            endAllAnimations();
            return j59.a;
        }
        this.durationScale = durationScale;
        Object objWithFrameNanos = MonotonicFrameClockKt.withFrameNanos(this.animateOneFrameLambda, e02Var);
        return objWithFrameNanos == a32.COROUTINE_SUSPENDED ? objWithFrameNanos : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateOneFrameLambda$lambda$0(SeekableTransitionState seekableTransitionState, long j) {
        long j2 = j - seekableTransitionState.lastFrameTimeNanos;
        seekableTransitionState.lastFrameTimeNanos = j;
        long jC = w65.c(j2 / ((double) seekableTransitionState.durationScale));
        if (seekableTransitionState.initialValueAnimations.isNotEmpty()) {
            MutableObjectList<SeekingAnimationState> mutableObjectList = seekableTransitionState.initialValueAnimations;
            Object[] objArr = mutableObjectList.content;
            int i = mutableObjectList._size;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                SeekingAnimationState seekingAnimationState = (SeekingAnimationState) objArr[i3];
                seekableTransitionState.recalculateAnimationValue(seekingAnimationState, jC);
                seekingAnimationState.setComplete(true);
            }
            Transition<S> transition = seekableTransitionState.transition;
            if (transition != null) {
                transition.updateInitialValues$animation_core();
            }
            MutableObjectList<SeekingAnimationState> mutableObjectList2 = seekableTransitionState.initialValueAnimations;
            int i4 = mutableObjectList2._size;
            Object[] objArr2 = mutableObjectList2.content;
            y74 y74VarN = kx6.n(0, i4);
            int i5 = y74VarN.b;
            int i6 = y74VarN.c;
            if (i5 <= i6) {
                while (true) {
                    objArr2[i5 - i2] = objArr2[i5];
                    if (((SeekingAnimationState) objArr2[i5]).isComplete()) {
                        i2++;
                    }
                    if (i5 == i6) {
                        break;
                    }
                    i5++;
                }
            }
            aq5.t(null, objArr2, i4 - i2, i4);
            mutableObjectList2._size -= i2;
        }
        SeekingAnimationState seekingAnimationState2 = seekableTransitionState.currentAnimation;
        if (seekingAnimationState2 != null) {
            seekingAnimationState2.setDurationNanos(seekableTransitionState.totalDurationNanos);
            seekableTransitionState.recalculateAnimationValue(seekingAnimationState2, jC);
            seekableTransitionState.setFraction(seekingAnimationState2.getValue());
            if (seekingAnimationState2.getValue() == 1.0f) {
                seekableTransitionState.currentAnimation = null;
            }
            seekableTransitionState.seekToFraction();
        }
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateTo$default(SeekableTransitionState seekableTransitionState, Object obj, FiniteAnimationSpec finiteAnimationSpec, e02 e02Var, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = seekableTransitionState.getTargetState();
        }
        if ((i & 2) != 0) {
            finiteAnimationSpec = null;
        }
        return seekableTransitionState.animateTo(obj, finiteAnimationSpec, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object doOneFrame(e02<? super j59> e02Var) {
        if (this.lastFrameTimeNanos == Long.MIN_VALUE) {
            Object objWithFrameNanos = MonotonicFrameClockKt.withFrameNanos(this.firstFrameLambda, e02Var);
            return objWithFrameNanos == a32.COROUTINE_SUSPENDED ? objWithFrameNanos : j59.a;
        }
        Object objAnimateOneFrame = animateOneFrame(e02Var);
        return objAnimateOneFrame == a32.COROUTINE_SUSPENDED ? objAnimateOneFrame : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void endAllAnimations() {
        Transition<S> transition = this.transition;
        if (transition != null) {
            transition.clearInitialAnimations$animation_core();
        }
        this.initialValueAnimations.clear();
        if (this.currentAnimation != null) {
            this.currentAnimation = null;
            setFraction(1.0f);
            seekToFraction();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 firstFrameLambda$lambda$0(SeekableTransitionState seekableTransitionState, long j) {
        seekableTransitionState.lastFrameTimeNanos = j;
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void moveAnimationToInitialState() {
        Transition<S> transition = this.transition;
        if (transition == null) {
            return;
        }
        SeekingAnimationState seekingAnimationState = this.currentAnimation;
        if (seekingAnimationState == null) {
            if (this.totalDurationNanos <= 0 || getFraction() == 1.0f || aa4.e(getCurrentState(), getTargetState())) {
                seekingAnimationState = null;
            } else {
                seekingAnimationState = new SeekingAnimationState();
                seekingAnimationState.setValue(getFraction());
                long j = this.totalDurationNanos;
                seekingAnimationState.setDurationNanos(j);
                seekingAnimationState.setAnimationSpecDuration(w65.c((1.0d - ((double) getFraction())) * j));
                seekingAnimationState.getStart().set$animation_core(0, getFraction());
            }
        }
        if (seekingAnimationState != null) {
            seekingAnimationState.setDurationNanos(this.totalDurationNanos);
            this.initialValueAnimations.add(seekingAnimationState);
            transition.setInitialAnimations$animation_core(seekingAnimationState);
        }
        this.currentAnimation = null;
    }

    private final void recalculateAnimationValue(SeekingAnimationState seekingAnimationState, long j) {
        long progressNanos = seekingAnimationState.getProgressNanos() + j;
        seekingAnimationState.setProgressNanos(progressNanos);
        long animationSpecDuration = seekingAnimationState.getAnimationSpecDuration();
        if (progressNanos >= animationSpecDuration) {
            seekingAnimationState.setValue(1.0f);
            return;
        }
        VectorizedAnimationSpec<AnimationVector1D> animationSpec = seekingAnimationState.getAnimationSpec();
        if (animationSpec == null) {
            float f = progressNanos / animationSpecDuration;
            seekingAnimationState.setValue((f * 1.0f) + ((1.0f - f) * seekingAnimationState.getStart().get$animation_core(0)));
            return;
        }
        AnimationVector1D start = seekingAnimationState.getStart();
        AnimationVector1D animationVector1D = Target1;
        AnimationVector1D initialVelocity = seekingAnimationState.getInitialVelocity();
        if (initialVelocity == null) {
            initialVelocity = ZeroVelocity;
        }
        seekingAnimationState.setValue(kx6.d(((AnimationVector1D) animationSpec.getValueFromNanos(progressNanos, start, animationVector1D, initialVelocity)).get$animation_core(0), 0.0f, 1.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 recalculateTotalDurationNanos$lambda$0(SeekableTransitionState seekableTransitionState) {
        Transition<S> transition = seekableTransitionState.transition;
        seekableTransitionState.totalDurationNanos = transition != null ? transition.getTotalDurationNanos() : 0L;
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object runAnimations(e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            if (this.initialValueAnimations.isEmpty() && this.currentAnimation == null) {
                return j59.a;
            }
            if (SuspendAnimationKt.getDurationScale(anonymousClass1.getContext()) == 0.0f) {
                endAllAnimations();
                this.lastFrameTimeNanos = Long.MIN_VALUE;
                return j59.a;
            }
            if (this.lastFrameTimeNanos == Long.MIN_VALUE) {
                nl3<Long, j59> nl3Var = this.firstFrameLambda;
                anonymousClass1.label = 1;
                if (MonotonicFrameClockKt.withFrameNanos(nl3Var, anonymousClass1) != a32Var) {
                }
            }
            return a32Var;
        }
        if (i2 != 1 && i2 != 2) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        do {
            if (!this.initialValueAnimations.isNotEmpty() && this.currentAnimation == null) {
                this.lastFrameTimeNanos = Long.MIN_VALUE;
                return j59.a;
            }
            anonymousClass1.label = 2;
        } while (animateOneFrame(anonymousClass1) != a32Var);
        return a32Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object seekTo$default(SeekableTransitionState seekableTransitionState, float f, Object obj, e02 e02Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            obj = seekableTransitionState.getTargetState();
        }
        return seekableTransitionState.seekTo(f, obj, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void seekToFraction() {
        Transition<S> transition = this.transition;
        if (transition == null) {
            return;
        }
        transition.seekAnimations$animation_core(w65.c(((double) getFraction()) * transition.getTotalDurationNanos()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setFraction(float f) {
        this.fraction$delegate.setFloatValue(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object waitForComposition(e02<? super j59> e02Var) throws Throwable {
        C04601 c04601;
        Object targetState;
        Object obj;
        if (e02Var instanceof C04601) {
            c04601 = (C04601) e02Var;
            int i = c04601.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04601.label = i - Integer.MIN_VALUE;
            } else {
                c04601 = new C04601(this, e02Var);
            }
        } else {
            c04601 = new C04601(this, e02Var);
        }
        Object obj2 = c04601.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04601.label;
        if (i2 == 0) {
            r57.b(obj2);
            targetState = getTargetState();
            yg5 yg5Var = this.compositionContinuationMutex;
            c04601.L$0 = targetState;
            c04601.label = 1;
            if (yg5Var.lock(null, c04601) != a32Var) {
            }
            return a32Var;
        }
        if (i2 == 1) {
            Object obj3 = c04601.L$0;
            r57.b(obj2);
            targetState = obj3;
        } else {
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj = c04601.L$0;
            r57.b(obj2);
        }
        if (aa4.e(obj2, obj)) {
            return j59.a;
        }
        this.lastFrameTimeNanos = Long.MIN_VALUE;
        throw new CancellationException("targetState while waiting for composition");
        c04601.L$0 = targetState;
        c04601.label = 2;
        c31 c31Var = new c31(1, zya.b(c04601));
        c31Var.u();
        setCompositionContinuation$animation_core(c31Var);
        getCompositionContinuationMutex$animation_core().unlock(null);
        Object objS = c31Var.s();
        if (objS != a32Var) {
            obj = targetState;
            obj2 = objS;
            if (aa4.e(obj2, obj)) {
                return j59.a;
            }
            this.lastFrameTimeNanos = Long.MIN_VALUE;
            throw new CancellationException("targetState while waiting for composition");
        }
        return a32Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:30:0x0089  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:30:0x0089, please report this as an issue */
    public final Object waitForCompositionAfterTargetStateChange(e02<? super j59> e02Var) throws Throwable {
        C04611 c04611;
        Object targetState;
        Object obj;
        if (e02Var instanceof C04611) {
            c04611 = (C04611) e02Var;
            int i = c04611.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04611.label = i - Integer.MIN_VALUE;
            } else {
                c04611 = new C04611(this, e02Var);
            }
        } else {
            c04611 = new C04611(this, e02Var);
        }
        Object obj2 = c04611.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04611.label;
        if (i2 == 0) {
            r57.b(obj2);
            targetState = getTargetState();
            yg5 yg5Var = this.compositionContinuationMutex;
            c04611.L$0 = targetState;
            c04611.label = 1;
            if (yg5Var.lock(null, c04611) != a32Var) {
            }
            return a32Var;
        }
        if (i2 == 1) {
            Object obj3 = c04611.L$0;
            r57.b(obj2);
            targetState = obj3;
        } else {
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj = c04611.L$0;
            r57.b(obj2);
        }
        if (!aa4.e(obj2, obj)) {
            this.lastFrameTimeNanos = Long.MIN_VALUE;
            throw new CancellationException("snapTo() was canceled because state was changed to " + obj2 + " instead of " + obj);
        }
        return j59.a;
        if (!aa4.e(targetState, this.composedTargetState)) {
            c04611.L$0 = targetState;
            c04611.label = 2;
            c31 c31Var = new c31(1, zya.b(c04611));
            c31Var.u();
            setCompositionContinuation$animation_core(c31Var);
            getCompositionContinuationMutex$animation_core().unlock(null);
            Object objS = c31Var.s();
            if (objS != a32Var) {
                obj = targetState;
                obj2 = objS;
                if (!aa4.e(obj2, obj)) {
                    this.lastFrameTimeNanos = Long.MIN_VALUE;
                    throw new CancellationException("snapTo() was canceled because state was changed to " + obj2 + " instead of " + obj);
                }
            }
            return a32Var;
        }
        this.compositionContinuationMutex.unlock(null);
        return j59.a;
    }

    public final Object animateTo(S s, FiniteAnimationSpec<Float> finiteAnimationSpec, e02<? super j59> e02Var) {
        Object objMutate$default;
        Transition<S> transition = this.transition;
        return (transition != null && (objMutate$default = MutatorMutex.mutate$default(this.mutatorMutex, null, new AnonymousClass2(transition, this, s, finiteAnimationSpec, null), e02Var, 1, null)) == a32.COROUTINE_SUSPENDED) ? objMutate$default : j59.a;
    }

    public final S getComposedTargetState$animation_core() {
        return this.composedTargetState;
    }

    public final a31<S> getCompositionContinuation$animation_core() {
        return this.compositionContinuation;
    }

    public final yg5 getCompositionContinuationMutex$animation_core() {
        return this.compositionContinuationMutex;
    }

    @Override // androidx.compose.animation.core.TransitionState
    public S getCurrentState() {
        return (S) this.currentState$delegate.getValue();
    }

    public final float getFraction() {
        return this.fraction$delegate.getFloatValue();
    }

    public final SnapshotStateObserver getSnapshotStateObserver$animation_core() {
        return this.snapshotStateObserver;
    }

    @Override // androidx.compose.animation.core.TransitionState
    public S getTargetState() {
        return (S) this.targetState$delegate.getValue();
    }

    public final long getTotalDurationNanos$animation_core() {
        return this.totalDurationNanos;
    }

    public final void observeTotalDuration$animation_core() {
        SnapshotStateObserver snapshotStateObserver = this.snapshotStateObserver;
        if (snapshotStateObserver != null) {
            snapshotStateObserver.observeReads(this, TransitionKt.SeekableTransitionStateTotalDurationChanged, this.recalculateTotalDurationNanos);
        }
    }

    public final void onTotalDurationChanged$animation_core() {
        long j = this.totalDurationNanos;
        observeTotalDuration$animation_core();
        long j2 = this.totalDurationNanos;
        if (j != j2) {
            SeekingAnimationState seekingAnimationState = this.currentAnimation;
            if (seekingAnimationState == null) {
                if (j2 != 0) {
                    seekToFraction();
                    return;
                }
                return;
            }
            long progressNanos = seekingAnimationState.getProgressNanos();
            long j3 = this.totalDurationNanos;
            if (progressNanos > j3) {
                endAllAnimations();
                return;
            }
            seekingAnimationState.setDurationNanos(j3);
            if (seekingAnimationState.getAnimationSpec() == null) {
                seekingAnimationState.setAnimationSpecDuration(w65.c((1.0d - ((double) seekingAnimationState.getStart().get$animation_core(0))) * this.totalDurationNanos));
            }
        }
    }

    public final Object seekTo(float f, S s, e02<? super j59> e02Var) {
        boolean z = false;
        if (0.0f <= f && f <= 1.0f) {
            z = true;
        }
        if (!z) {
            PreconditionsKt.throwIllegalArgumentException("Expecting fraction between 0 and 1. Got " + f);
        }
        Transition<S> transition = this.transition;
        if (transition == null) {
            return j59.a;
        }
        Object objMutate$default = MutatorMutex.mutate$default(this.mutatorMutex, null, new AnonymousClass3(s, getTargetState(), this, transition, f, null), e02Var, 1, null);
        return objMutate$default == a32.COROUTINE_SUSPENDED ? objMutate$default : j59.a;
    }

    public final void setComposedTargetState$animation_core(S s) {
        this.composedTargetState = s;
    }

    public final void setCompositionContinuation$animation_core(a31<? super S> a31Var) {
        this.compositionContinuation = a31Var;
    }

    @Override // androidx.compose.animation.core.TransitionState
    public void setCurrentState$animation_core(S s) {
        this.currentState$delegate.setValue(s);
    }

    public final void setSnapshotStateObserver$animation_core(SnapshotStateObserver snapshotStateObserver) {
        if (aa4.e(this.snapshotStateObserver, snapshotStateObserver)) {
            return;
        }
        SnapshotStateObserver snapshotStateObserver2 = this.snapshotStateObserver;
        if (snapshotStateObserver2 != null) {
            snapshotStateObserver2.clear(this);
        }
        SnapshotStateObserver snapshotStateObserver3 = this.snapshotStateObserver;
        if (snapshotStateObserver3 != null) {
            snapshotStateObserver3.stop();
        }
        this.snapshotStateObserver = snapshotStateObserver;
        if (snapshotStateObserver != null) {
            snapshotStateObserver.start();
        }
        observeTotalDuration$animation_core();
    }

    @Override // androidx.compose.animation.core.TransitionState
    public void setTargetState$animation_core(S s) {
        this.targetState$delegate.setValue(s);
    }

    public final void setTotalDurationNanos$animation_core(long j) {
        this.totalDurationNanos = j;
    }

    public final Object snapTo(S s, e02<? super j59> e02Var) {
        Object objMutate$default;
        Transition<S> transition = this.transition;
        if (transition == null) {
            return j59.a;
        }
        return (!(aa4.e(getCurrentState(), s) && aa4.e(getTargetState(), s)) && (objMutate$default = MutatorMutex.mutate$default(this.mutatorMutex, null, new C04592(this, s, transition, null), e02Var, 1, null)) == a32.COROUTINE_SUSPENDED) ? objMutate$default : j59.a;
    }

    @Override // androidx.compose.animation.core.TransitionState
    public void transitionConfigured$animation_core(Transition<S> transition) {
        Transition<S> transition2 = this.transition;
        if (!(transition2 == null || aa4.e(transition, transition2))) {
            PreconditionsKt.throwIllegalStateException("An instance of SeekableTransitionState has been used in different Transitions. Previous instance: " + this.transition + ", new instance: " + transition);
        }
        this.transition = transition;
    }

    @Override // androidx.compose.animation.core.TransitionState
    public void transitionRemoved$animation_core() {
        this.transition = null;
        SnapshotStateObserver snapshotStateObserver = this.snapshotStateObserver;
        if (snapshotStateObserver != null) {
            snapshotStateObserver.clear(this);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final AnimationVector1D getTarget1() {
            return SeekableTransitionState.Target1;
        }

        public final AnimationVector1D getZeroVelocity() {
            return SeekableTransitionState.ZeroVelocity;
        }

        private Companion() {
        }
    }
}
