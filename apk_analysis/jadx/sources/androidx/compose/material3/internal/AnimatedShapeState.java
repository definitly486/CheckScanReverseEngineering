package androidx.compose.material3.internal;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mb4;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes2.dex */
public final class AnimatedShapeState {
    public static final int $stable = 0;
    private Animatable<Float, AnimationVector1D> bottomEnd;
    private Animatable<Float, AnimationVector1D> bottomStart;
    private final RoundedCornerShape shape;
    private final FiniteAnimationSpec<Float> spec;
    private Animatable<Float, AnimationVector1D> topEnd;
    private Animatable<Float, AnimationVector1D> topStart;
    private long size = Size.Companion.m6065getZeroNHjbRc();
    private Density density = DensityKt.Density(0.0f, 0.0f);

    /* JADX INFO: renamed from: androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2", f = "AnimatedShape.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super mb4>, Object> {
        final /* synthetic */ CornerBasedShape $shape;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$1", f = "AnimatedShape.kt", l = {82}, m = "invokeSuspend")
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ CornerBasedShape $shape;
            int label;
            final /* synthetic */ AnimatedShapeState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(AnimatedShapeState animatedShapeState, CornerBasedShape cornerBasedShape, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.this$0 = animatedShapeState;
                this.$shape = cornerBasedShape;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.this$0, this.$shape, e02Var);
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
                    Animatable animatable = this.this$0.topStart;
                    if (animatable != null) {
                        Float f = new Float(this.$shape.getTopStart().mo2341toPxTmRCtEA(this.this$0.m4363getSizeNHjbRc(), this.this$0.getDensity()));
                        FiniteAnimationSpec<Float> spec = this.this$0.getSpec();
                        this.label = 1;
                        obj = Animatable.animateTo$default(animatable, f, spec, null, null, this, 12, null);
                        if (obj == a32Var) {
                            return a32Var;
                        }
                    }
                    return j59.a;
                }
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                return j59.a;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$2, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$2", f = "AnimatedShape.kt", l = {83}, m = "invokeSuspend")
        public static final class C00742 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ CornerBasedShape $shape;
            int label;
            final /* synthetic */ AnimatedShapeState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00742(AnimatedShapeState animatedShapeState, CornerBasedShape cornerBasedShape, e02<? super C00742> e02Var) {
                super(2, e02Var);
                this.this$0 = animatedShapeState;
                this.$shape = cornerBasedShape;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00742(this.this$0, this.$shape, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C00742) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    Animatable animatable = this.this$0.topEnd;
                    if (animatable != null) {
                        Float f = new Float(this.$shape.getTopEnd().mo2341toPxTmRCtEA(this.this$0.m4363getSizeNHjbRc(), this.this$0.getDensity()));
                        FiniteAnimationSpec<Float> spec = this.this$0.getSpec();
                        this.label = 1;
                        obj = Animatable.animateTo$default(animatable, f, spec, null, null, this, 12, null);
                        if (obj == a32Var) {
                            return a32Var;
                        }
                    }
                    return j59.a;
                }
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                return j59.a;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$3, reason: invalid class name */
        @bd2(c = "androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$3", f = "AnimatedShape.kt", l = {84}, m = "invokeSuspend")
        public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ CornerBasedShape $shape;
            int label;
            final /* synthetic */ AnimatedShapeState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(AnimatedShapeState animatedShapeState, CornerBasedShape cornerBasedShape, e02<? super AnonymousClass3> e02Var) {
                super(2, e02Var);
                this.this$0 = animatedShapeState;
                this.$shape = cornerBasedShape;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass3(this.this$0, this.$shape, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    Animatable animatable = this.this$0.bottomStart;
                    if (animatable != null) {
                        Float f = new Float(this.$shape.getBottomStart().mo2341toPxTmRCtEA(this.this$0.m4363getSizeNHjbRc(), this.this$0.getDensity()));
                        FiniteAnimationSpec<Float> spec = this.this$0.getSpec();
                        this.label = 1;
                        obj = Animatable.animateTo$default(animatable, f, spec, null, null, this, 12, null);
                        if (obj == a32Var) {
                            return a32Var;
                        }
                    }
                    return j59.a;
                }
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                return j59.a;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$4, reason: invalid class name */
        @bd2(c = "androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$4", f = "AnimatedShape.kt", l = {85}, m = "invokeSuspend")
        public static final class AnonymousClass4 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ CornerBasedShape $shape;
            int label;
            final /* synthetic */ AnimatedShapeState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass4(AnimatedShapeState animatedShapeState, CornerBasedShape cornerBasedShape, e02<? super AnonymousClass4> e02Var) {
                super(2, e02Var);
                this.this$0 = animatedShapeState;
                this.$shape = cornerBasedShape;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass4(this.this$0, this.$shape, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass4) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    Animatable animatable = this.this$0.bottomEnd;
                    if (animatable != null) {
                        Float f = new Float(this.$shape.getBottomEnd().mo2341toPxTmRCtEA(this.this$0.m4363getSizeNHjbRc(), this.this$0.getDensity()));
                        FiniteAnimationSpec<Float> spec = this.this$0.getSpec();
                        this.label = 1;
                        obj = Animatable.animateTo$default(animatable, f, spec, null, null, this, 12, null);
                        if (obj == a32Var) {
                            return a32Var;
                        }
                    }
                    return j59.a;
                }
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(CornerBasedShape cornerBasedShape, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$shape = cornerBasedShape;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = AnimatedShapeState.this.new AnonymousClass2(this.$shape, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super mb4> e02Var) {
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
            y22 y22Var = (y22) this.L$0;
            av0.c(y22Var, null, null, new AnonymousClass1(AnimatedShapeState.this, this.$shape, null), 3);
            av0.c(y22Var, null, null, new C00742(AnimatedShapeState.this, this.$shape, null), 3);
            av0.c(y22Var, null, null, new AnonymousClass3(AnimatedShapeState.this, this.$shape, null), 3);
            return av0.c(y22Var, null, null, new AnonymousClass4(AnimatedShapeState.this, this.$shape, null), 3);
        }
    }

    public AnimatedShapeState(RoundedCornerShape roundedCornerShape, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.shape = roundedCornerShape;
        this.spec = finiteAnimationSpec;
    }

    /* JADX INFO: renamed from: bottomEnd-TmRCtEA$default, reason: not valid java name */
    public static /* synthetic */ float m4357bottomEndTmRCtEA$default(AnimatedShapeState animatedShapeState, long j, Density density, int i, Object obj) {
        if ((i & 1) != 0) {
            j = animatedShapeState.size;
        }
        if ((i & 2) != 0) {
            density = animatedShapeState.density;
        }
        return animatedShapeState.m4361bottomEndTmRCtEA(j, density);
    }

    /* JADX INFO: renamed from: bottomStart-TmRCtEA$default, reason: not valid java name */
    public static /* synthetic */ float m4358bottomStartTmRCtEA$default(AnimatedShapeState animatedShapeState, long j, Density density, int i, Object obj) {
        if ((i & 1) != 0) {
            j = animatedShapeState.size;
        }
        if ((i & 2) != 0) {
            density = animatedShapeState.density;
        }
        return animatedShapeState.m4362bottomStartTmRCtEA(j, density);
    }

    /* JADX INFO: renamed from: topEnd-TmRCtEA$default, reason: not valid java name */
    public static /* synthetic */ float m4359topEndTmRCtEA$default(AnimatedShapeState animatedShapeState, long j, Density density, int i, Object obj) {
        if ((i & 1) != 0) {
            j = animatedShapeState.size;
        }
        if ((i & 2) != 0) {
            density = animatedShapeState.density;
        }
        return animatedShapeState.m4365topEndTmRCtEA(j, density);
    }

    /* JADX INFO: renamed from: topStart-TmRCtEA$default, reason: not valid java name */
    public static /* synthetic */ float m4360topStartTmRCtEA$default(AnimatedShapeState animatedShapeState, long j, Density density, int i, Object obj) {
        if ((i & 1) != 0) {
            j = animatedShapeState.size;
        }
        if ((i & 2) != 0) {
            density = animatedShapeState.density;
        }
        return animatedShapeState.m4366topStartTmRCtEA(j, density);
    }

    public final Object animateToShape(CornerBasedShape cornerBasedShape, e02<? super mb4> e02Var) {
        return z22.c(new AnonymousClass2(cornerBasedShape, null), e02Var);
    }

    /* JADX INFO: renamed from: bottomEnd-TmRCtEA, reason: not valid java name */
    public final float m4361bottomEndTmRCtEA(long j, Density density) {
        Animatable<Float, AnimationVector1D> animatableAnimatable$default = this.bottomEnd;
        if (animatableAnimatable$default == null) {
            animatableAnimatable$default = AnimatableKt.Animatable$default(this.shape.getBottomEnd().mo2341toPxTmRCtEA(j, density), 0.0f, 2, null);
            this.bottomEnd = animatableAnimatable$default;
        }
        return animatableAnimatable$default.getValue().floatValue();
    }

    /* JADX INFO: renamed from: bottomStart-TmRCtEA, reason: not valid java name */
    public final float m4362bottomStartTmRCtEA(long j, Density density) {
        Animatable<Float, AnimationVector1D> animatableAnimatable$default = this.bottomStart;
        if (animatableAnimatable$default == null) {
            animatableAnimatable$default = AnimatableKt.Animatable$default(this.shape.getBottomStart().mo2341toPxTmRCtEA(j, density), 0.0f, 2, null);
            this.bottomStart = animatableAnimatable$default;
        }
        return animatableAnimatable$default.getValue().floatValue();
    }

    public final Density getDensity() {
        return this.density;
    }

    public final RoundedCornerShape getShape() {
        return this.shape;
    }

    /* JADX INFO: renamed from: getSize-NH-jbRc, reason: not valid java name */
    public final long m4363getSizeNHjbRc() {
        return this.size;
    }

    public final FiniteAnimationSpec<Float> getSpec() {
        return this.spec;
    }

    public final void setDensity(Density density) {
        this.density = density;
    }

    /* JADX INFO: renamed from: setSize-uvyYCjk, reason: not valid java name */
    public final void m4364setSizeuvyYCjk(long j) {
        this.size = j;
    }

    /* JADX INFO: renamed from: topEnd-TmRCtEA, reason: not valid java name */
    public final float m4365topEndTmRCtEA(long j, Density density) {
        Animatable<Float, AnimationVector1D> animatableAnimatable$default = this.topEnd;
        if (animatableAnimatable$default == null) {
            animatableAnimatable$default = AnimatableKt.Animatable$default(this.shape.getTopEnd().mo2341toPxTmRCtEA(j, density), 0.0f, 2, null);
            this.topEnd = animatableAnimatable$default;
        }
        return animatableAnimatable$default.getValue().floatValue();
    }

    /* JADX INFO: renamed from: topStart-TmRCtEA, reason: not valid java name */
    public final float m4366topStartTmRCtEA(long j, Density density) {
        Animatable<Float, AnimationVector1D> animatableAnimatable$default = this.topStart;
        if (animatableAnimatable$default == null) {
            animatableAnimatable$default = AnimatableKt.Animatable$default(this.shape.getTopStart().mo2341toPxTmRCtEA(j, density), 0.0f, 2, null);
            this.topStart = animatableAnimatable$default;
        }
        return animatableAnimatable$default.getValue().floatValue();
    }
}
