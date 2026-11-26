package androidx.compose.foundation.gestures;

import androidx.compose.animation.SplineBasedDecayKt;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.unit.Density;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultFlingBehavior implements ScrollableDefaultFlingBehavior {
    public static final int $stable = 0;
    private DecayAnimationSpec<Float> flingDecay;
    private int lastAnimationCycleCount;
    private final MotionDurationScale motionDurationScale;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DefaultFlingBehavior$performFling$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.DefaultFlingBehavior$performFling$2", f = "Scrollable.kt", l = {1079}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super Float>, Object> {
        final /* synthetic */ float $initialVelocity;
        final /* synthetic */ ScrollScope $this_performFling;
        Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ DefaultFlingBehavior this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(float f, DefaultFlingBehavior defaultFlingBehavior, ScrollScope scrollScope, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$initialVelocity = f;
            this.this$0 = defaultFlingBehavior;
            this.$this_performFling = scrollScope;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(o07 o07Var, ScrollScope scrollScope, o07 o07Var2, DefaultFlingBehavior defaultFlingBehavior, AnimationScope animationScope) {
            float fFloatValue = ((Number) animationScope.getValue()).floatValue() - o07Var.b;
            float fScrollBy = scrollScope.scrollBy(fFloatValue);
            o07Var.b = ((Number) animationScope.getValue()).floatValue();
            o07Var2.b = ((Number) animationScope.getVelocity()).floatValue();
            if (Math.abs(fFloatValue - fScrollBy) > 0.5f) {
                animationScope.cancelAnimation();
            }
            defaultFlingBehavior.setLastAnimationCycleCount(defaultFlingBehavior.getLastAnimationCycleCount() + 1);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$initialVelocity, this.this$0, this.$this_performFling, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super Float> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            float f;
            AnimationState animationState;
            o07 o07Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                if (Math.abs(this.$initialVelocity) > 1.0f) {
                    final o07 o07Var2 = new o07();
                    o07Var2.b = this.$initialVelocity;
                    final o07 o07Var3 = new o07();
                    AnimationState animationStateAnimationState$default = AnimationStateKt.AnimationState$default(0.0f, this.$initialVelocity, 0L, 0L, false, 28, null);
                    try {
                        DecayAnimationSpec decayAnimationSpec = this.this$0.flingDecay;
                        final ScrollScope scrollScope = this.$this_performFling;
                        final DefaultFlingBehavior defaultFlingBehavior = this.this$0;
                        nl3 nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.j
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj2) {
                                return DefaultFlingBehavior.AnonymousClass2.invokeSuspend$lambda$0(o07Var3, scrollScope, o07Var2, defaultFlingBehavior, (AnimationScope) obj2);
                            }
                        };
                        this.L$0 = o07Var2;
                        this.L$1 = animationStateAnimationState$default;
                        this.label = 1;
                        animationState = animationStateAnimationState$default;
                        try {
                            if (SuspendAnimationKt.animateDecay$default(animationState, decayAnimationSpec, false, nl3Var, this, 2, null) == a32Var) {
                                return a32Var;
                            }
                            o07Var = o07Var2;
                            f = o07Var.b;
                        } catch (CancellationException unused) {
                            o07Var = o07Var2;
                            o07Var.b = ((Number) animationState.getVelocity()).floatValue();
                        }
                    } catch (CancellationException unused2) {
                        animationState = animationStateAnimationState$default;
                    }
                } else {
                    f = this.$initialVelocity;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                animationState = (AnimationState) this.L$1;
                o07Var = (o07) this.L$0;
                try {
                    r57.b(obj);
                } catch (CancellationException unused3) {
                    o07Var.b = ((Number) animationState.getVelocity()).floatValue();
                }
                f = o07Var.b;
            }
            return new Float(f);
        }
    }

    public /* synthetic */ DefaultFlingBehavior(DecayAnimationSpec decayAnimationSpec, MotionDurationScale motionDurationScale, int i, jh2 jh2Var) {
        this(decayAnimationSpec, (i & 2) != 0 ? ScrollableKt.getDefaultScrollMotionDurationScale() : motionDurationScale);
    }

    public final int getLastAnimationCycleCount() {
        return this.lastAnimationCycleCount;
    }

    @Override // androidx.compose.foundation.gestures.FlingBehavior
    public Object performFling(ScrollScope scrollScope, float f, e02<? super Float> e02Var) {
        this.lastAnimationCycleCount = 0;
        return av0.d(this.motionDurationScale, new AnonymousClass2(f, this, scrollScope, null), e02Var);
    }

    public final void setLastAnimationCycleCount(int i) {
        this.lastAnimationCycleCount = i;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableDefaultFlingBehavior
    public void updateDensity(Density density) {
        this.flingDecay = SplineBasedDecayKt.splineBasedDecay(density);
    }

    public DefaultFlingBehavior(DecayAnimationSpec<Float> decayAnimationSpec, MotionDurationScale motionDurationScale) {
        this.flingDecay = decayAnimationSpec;
        this.motionDurationScale = motionDurationScale;
    }
}
