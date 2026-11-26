package androidx.compose.material3.internal;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.a32;
import defpackage.aa4;
import defpackage.af;
import defpackage.ah;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cf;
import defpackage.dm3;
import defpackage.e02;
import defpackage.ef;
import defpackage.f02;
import defpackage.fm3;
import defpackage.gf;
import defpackage.j59;
import defpackage.jf;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.lf;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
public final class AnchoredDraggableState<T> {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private final AnchoredDragScope anchoredDragScope;
    private final MutableState anchors$delegate;
    private final ll3<AnimationSpec<Float>> animationSpec;
    private final State closestValue$delegate;
    private final nl3<T, Boolean> confirmValueChange;
    private final MutableState currentValue$delegate;
    private final InternalMutatorMutex dragMutex;
    private final MutableState dragTarget$delegate;
    private final DraggableState draggableState;
    private final MutableFloatState lastVelocity$delegate;
    private final MutableFloatState offset$delegate;
    private final nl3<Float, Float> positionalThreshold;
    private final State progress$delegate;
    private final State targetValue$delegate;
    private final ll3<Float> velocityThreshold;

    /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$1, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableState", f = "AnchoredDraggable.kt", l = {517}, m = "anchoredDrag")
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ AnchoredDraggableState<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AnchoredDraggableState<T> anchoredDraggableState, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = anchoredDraggableState;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.anchoredDrag(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$2", f = "AnchoredDraggable.kt", l = {518}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ dm3<AnchoredDragScope, DraggableAnchors<T>, e02<? super j59>, Object> $block;
        int label;
        final /* synthetic */ AnchoredDraggableState<T> this$0;

        /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$2$2, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$2$2", f = "AnchoredDraggable.kt", l = {519}, m = "invokeSuspend")
        public static final class C00732 extends pg8 implements bm3<DraggableAnchors<T>, e02<? super j59>, Object> {
            final /* synthetic */ dm3<AnchoredDragScope, DraggableAnchors<T>, e02<? super j59>, Object> $block;
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ AnchoredDraggableState<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C00732(dm3<? super AnchoredDragScope, ? super DraggableAnchors<T>, ? super e02<? super j59>, ? extends Object> dm3Var, AnchoredDraggableState<T> anchoredDraggableState, e02<? super C00732> e02Var) {
                super(2, e02Var);
                this.$block = dm3Var;
                this.this$0 = anchoredDraggableState;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C00732 c00732 = new C00732(this.$block, this.this$0, e02Var);
                c00732.L$0 = obj;
                return c00732;
            }

            @Override // defpackage.bm3
            public final Object invoke(DraggableAnchors<T> draggableAnchors, e02<? super j59> e02Var) {
                return ((C00732) create(draggableAnchors, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    DraggableAnchors<T> draggableAnchors = (DraggableAnchors) this.L$0;
                    dm3<AnchoredDragScope, DraggableAnchors<T>, e02<? super j59>, Object> dm3Var = this.$block;
                    AnchoredDragScope anchoredDragScope = ((AnchoredDraggableState) this.this$0).anchoredDragScope;
                    this.label = 1;
                    if (dm3Var.invoke(anchoredDragScope, draggableAnchors, this) == a32Var) {
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
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(AnchoredDraggableState<T> anchoredDraggableState, dm3<? super AnchoredDragScope, ? super DraggableAnchors<T>, ? super e02<? super j59>, ? extends Object> dm3Var, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.this$0 = anchoredDraggableState;
            this.$block = dm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass2(this.this$0, this.$block, e02Var);
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
                final AnchoredDraggableState<T> anchoredDraggableState = this.this$0;
                ll3 ll3Var = new ll3() { // from class: androidx.compose.material3.internal.d
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return anchoredDraggableState.getAnchors();
                    }
                };
                C00732 c00732 = new C00732(this.$block, anchoredDraggableState, null);
                this.label = 1;
                if (AnchoredDraggableKt.restartable(ll3Var, c00732, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$3, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableState", f = "AnchoredDraggable.kt", l = {564}, m = "anchoredDrag")
    public static final class AnonymousClass3 extends f02 {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ AnchoredDraggableState<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(AnchoredDraggableState<T> anchoredDraggableState, e02<? super AnonymousClass3> e02Var) {
            super(e02Var);
            this.this$0 = anchoredDraggableState;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.anchoredDrag(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$4, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$4", f = "AnchoredDraggable.kt", l = {566}, m = "invokeSuspend")
    public static final class AnonymousClass4 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ fm3<AnchoredDragScope, DraggableAnchors<T>, T, e02<? super j59>, Object> $block;
        final /* synthetic */ T $targetValue;
        int label;
        final /* synthetic */ AnchoredDraggableState<T> this$0;

        /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$4$2, reason: invalid class name */
        @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableState$anchoredDrag$4$2", f = "AnchoredDraggable.kt", l = {568}, m = "invokeSuspend")
        public static final class AnonymousClass2 extends pg8 implements bm3<b36<? extends DraggableAnchors<T>, ? extends T>, e02<? super j59>, Object> {
            final /* synthetic */ fm3<AnchoredDragScope, DraggableAnchors<T>, T, e02<? super j59>, Object> $block;
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ AnchoredDraggableState<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass2(fm3<? super AnchoredDragScope, ? super DraggableAnchors<T>, ? super T, ? super e02<? super j59>, ? extends Object> fm3Var, AnchoredDraggableState<T> anchoredDraggableState, e02<? super AnonymousClass2> e02Var) {
                super(2, e02Var);
                this.$block = fm3Var;
                this.this$0 = anchoredDraggableState;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$block, this.this$0, e02Var);
                anonymousClass2.L$0 = obj;
                return anonymousClass2;
            }

            @Override // defpackage.bm3
            public final Object invoke(b36<? extends DraggableAnchors<T>, ? extends T> b36Var, e02<? super j59> e02Var) {
                return ((AnonymousClass2) create(b36Var, e02Var)).invokeSuspend(j59.a);
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
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    b36 b36Var = (b36) this.L$0;
                    DraggableAnchors<T> draggableAnchors = (DraggableAnchors) b36Var.b;
                    B b = b36Var.c;
                    fm3<AnchoredDragScope, DraggableAnchors<T>, T, e02<? super j59>, Object> fm3Var = this.$block;
                    AnchoredDragScope anchoredDragScope = ((AnchoredDraggableState) this.this$0).anchoredDragScope;
                    this.label = 1;
                    if (fm3Var.invoke(anchoredDragScope, draggableAnchors, b, this) == a32Var) {
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
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(AnchoredDraggableState<T> anchoredDraggableState, T t, fm3<? super AnchoredDragScope, ? super DraggableAnchors<T>, ? super T, ? super e02<? super j59>, ? extends Object> fm3Var, e02<? super AnonymousClass4> e02Var) {
            super(1, e02Var);
            this.this$0 = anchoredDraggableState;
            this.$targetValue = t;
            this.$block = fm3Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final b36 invokeSuspend$lambda$0(AnchoredDraggableState anchoredDraggableState) {
            return new b36(anchoredDraggableState.getAnchors(), anchoredDraggableState.getTargetValue());
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass4(this.this$0, this.$targetValue, this.$block, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass4) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                this.this$0.setDragTarget(this.$targetValue);
                final AnchoredDraggableState<T> anchoredDraggableState = this.this$0;
                ll3 ll3Var = new ll3() { // from class: androidx.compose.material3.internal.e
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return AnchoredDraggableState.AnonymousClass4.invokeSuspend$lambda$0(anchoredDraggableState);
                    }
                };
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$block, anchoredDraggableState, null);
                this.label = 1;
                if (AnchoredDraggableKt.restartable(ll3Var, anonymousClass2, this) == a32Var) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public AnchoredDraggableState(T t, nl3<? super Float, Float> nl3Var, ll3<Float> ll3Var, ll3<? extends AnimationSpec<Float>> ll3Var2, nl3<? super T, Boolean> nl3Var2) {
        this.positionalThreshold = nl3Var;
        this.velocityThreshold = ll3Var;
        this.animationSpec = ll3Var2;
        this.confirmValueChange = nl3Var2;
        this.dragMutex = new InternalMutatorMutex();
        this.draggableState = new AnchoredDraggableState$draggableState$1(this);
        this.currentValue$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t, null, 2, null);
        int i = 0;
        this.targetValue$delegate = SnapshotStateKt.derivedStateOf(new ef(this, i));
        this.closestValue$delegate = SnapshotStateKt.derivedStateOf(new gf(this, i));
        this.offset$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(Float.NaN);
        this.progress$delegate = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new jf(this, 0));
        this.lastVelocity$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.dragTarget$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.anchors$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(AnchoredDraggableKt.emptyDraggableAnchors(), null, 2, null);
        this.anchoredDragScope = new AnchoredDragScope(this) { // from class: androidx.compose.material3.internal.AnchoredDraggableState$anchoredDragScope$1
            final /* synthetic */ AnchoredDraggableState<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.compose.material3.internal.AnchoredDragScope
            public void dragTo(float f, float f2) {
                this.this$0.setOffset(f);
                this.this$0.setLastVelocity(f2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0(Object obj) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$1(Object obj) {
        return true;
    }

    public static /* synthetic */ Object anchoredDrag$default(AnchoredDraggableState anchoredDraggableState, MutatePriority mutatePriority, dm3 dm3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return anchoredDraggableState.anchoredDrag(mutatePriority, dm3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object closestValue_delegate$lambda$5(AnchoredDraggableState anchoredDraggableState) {
        Object dragTarget = anchoredDraggableState.getDragTarget();
        if (dragTarget != null) {
            return dragTarget;
        }
        float offset = anchoredDraggableState.getOffset();
        return !Float.isNaN(offset) ? anchoredDraggableState.computeTargetWithoutThresholds(offset, anchoredDraggableState.getCurrentValue()) : anchoredDraggableState.getCurrentValue();
    }

    private final T computeTarget(float f, T t, float f2) {
        DraggableAnchors<T> anchors = getAnchors();
        float fPositionOf = anchors.positionOf(t);
        float fFloatValue = this.velocityThreshold.invoke().floatValue();
        if (fPositionOf != f && !Float.isNaN(fPositionOf)) {
            if (fPositionOf < f) {
                if (f2 >= fFloatValue) {
                    T tClosestAnchor = anchors.closestAnchor(f, true);
                    tClosestAnchor.getClass();
                    return tClosestAnchor;
                }
                T tClosestAnchor2 = anchors.closestAnchor(f, true);
                tClosestAnchor2.getClass();
                if (f >= Math.abs(Math.abs(this.positionalThreshold.invoke(Float.valueOf(Math.abs(anchors.positionOf(tClosestAnchor2) - fPositionOf))).floatValue()) + fPositionOf)) {
                    return tClosestAnchor2;
                }
            } else {
                if (f2 <= (-fFloatValue)) {
                    T tClosestAnchor3 = anchors.closestAnchor(f, false);
                    tClosestAnchor3.getClass();
                    return tClosestAnchor3;
                }
                T tClosestAnchor4 = anchors.closestAnchor(f, false);
                tClosestAnchor4.getClass();
                float fAbs = Math.abs(fPositionOf - Math.abs(this.positionalThreshold.invoke(Float.valueOf(Math.abs(fPositionOf - anchors.positionOf(tClosestAnchor4)))).floatValue()));
                if (f >= 0.0f ? f <= fAbs : Math.abs(f) >= fAbs) {
                    return tClosestAnchor4;
                }
            }
        }
        return t;
    }

    private final T computeTargetWithoutThresholds(float f, T t) {
        DraggableAnchors<T> anchors = getAnchors();
        float fPositionOf = anchors.positionOf(t);
        if (fPositionOf != f && !Float.isNaN(fPositionOf)) {
            if (fPositionOf < f) {
                T tClosestAnchor = anchors.closestAnchor(f, true);
                if (tClosestAnchor != null) {
                    return tClosestAnchor;
                }
            } else {
                T tClosestAnchor2 = anchors.closestAnchor(f, false);
                if (tClosestAnchor2 != null) {
                    return tClosestAnchor2;
                }
            }
        }
        return t;
    }

    private final T getDragTarget() {
        return this.dragTarget$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final float progress_delegate$lambda$7(AnchoredDraggableState anchoredDraggableState) {
        float fPositionOf = anchoredDraggableState.getAnchors().positionOf(anchoredDraggableState.getCurrentValue());
        float fPositionOf2 = anchoredDraggableState.getAnchors().positionOf(anchoredDraggableState.getClosestValue$material3()) - fPositionOf;
        float fAbs = Math.abs(fPositionOf2);
        if (Float.isNaN(fAbs) || fAbs <= 1.0E-6f) {
            return 1.0f;
        }
        float fRequireOffset = (anchoredDraggableState.requireOffset() - fPositionOf) / fPositionOf2;
        if (fRequireOffset < 1.0E-6f) {
            return 0.0f;
        }
        if (fRequireOffset > 0.999999f) {
            return 1.0f;
        }
        return fRequireOffset;
    }

    private final void setAnchors(DraggableAnchors<T> draggableAnchors) {
        this.anchors$delegate.setValue(draggableAnchors);
    }

    private final void setCurrentValue(T t) {
        this.currentValue$delegate.setValue(t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDragTarget(T t) {
        this.dragTarget$delegate.setValue(t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setLastVelocity(float f) {
        this.lastVelocity$delegate.setFloatValue(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setOffset(float f) {
        this.offset$delegate.setFloatValue(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object targetValue_delegate$lambda$3(AnchoredDraggableState anchoredDraggableState) {
        Object dragTarget = anchoredDraggableState.getDragTarget();
        if (dragTarget != null) {
            return dragTarget;
        }
        float offset = anchoredDraggableState.getOffset();
        return !Float.isNaN(offset) ? anchoredDraggableState.computeTarget(offset, anchoredDraggableState.getCurrentValue(), 0.0f) : anchoredDraggableState.getCurrentValue();
    }

    private final boolean trySnapTo(final T t) {
        return this.dragMutex.tryMutate(new ll3() { // from class: kf
            @Override // defpackage.ll3
            public final Object invoke() {
                return AnchoredDraggableState.trySnapTo$lambda$9(this.b, t);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 trySnapTo$lambda$9(AnchoredDraggableState anchoredDraggableState, Object obj) {
        AnchoredDragScope anchoredDragScope = anchoredDraggableState.anchoredDragScope;
        float fPositionOf = anchoredDraggableState.getAnchors().positionOf(obj);
        if (!Float.isNaN(fPositionOf)) {
            AnchoredDragScope.dragTo$default(anchoredDragScope, fPositionOf, 0.0f, 2, null);
            anchoredDraggableState.setDragTarget(null);
        }
        anchoredDraggableState.setCurrentValue(obj);
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void updateAnchors$default(AnchoredDraggableState anchoredDraggableState, DraggableAnchors draggableAnchors, Object obj, int i, Object obj2) {
        if ((i & 2) != 0 && (Float.isNaN(anchoredDraggableState.getOffset()) || (obj = draggableAnchors.closestAnchor(anchoredDraggableState.getOffset())) == null)) {
            obj = anchoredDraggableState.getTargetValue();
        }
        anchoredDraggableState.updateAnchors(draggableAnchors, obj);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object anchoredDrag(T t, MutatePriority mutatePriority, fm3<? super AnchoredDragScope, ? super DraggableAnchors<T>, ? super T, ? super e02<? super j59>, ? extends Object> fm3Var, e02<? super j59> e02Var) {
        AnonymousClass3 anonymousClass3;
        if (e02Var instanceof AnonymousClass3) {
            anonymousClass3 = (AnonymousClass3) e02Var;
            int i = anonymousClass3.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass3.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass3 = new AnonymousClass3(this, e02Var);
            }
        } else {
            anonymousClass3 = new AnonymousClass3(this, e02Var);
        }
        Object obj = anonymousClass3.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass3.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                if (getAnchors().hasAnchorFor(t)) {
                    InternalMutatorMutex internalMutatorMutex = this.dragMutex;
                    AnonymousClass4 anonymousClass4 = new AnonymousClass4(this, t, fm3Var, null);
                    anonymousClass3.label = 1;
                    if (internalMutatorMutex.mutate(mutatePriority, anonymousClass4, anonymousClass3) == a32Var) {
                        return a32Var;
                    }
                } else {
                    setCurrentValue(t);
                }
                return j59.a;
            }
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            setDragTarget(null);
            T tClosestAnchor = getAnchors().closestAnchor(getOffset());
            if (tClosestAnchor != null && Math.abs(getOffset() - getAnchors().positionOf(tClosestAnchor)) <= 0.5f && this.confirmValueChange.invoke(tClosestAnchor).booleanValue()) {
                setCurrentValue(tClosestAnchor);
            }
            return j59.a;
        } catch (Throwable th) {
            setDragTarget(null);
            T tClosestAnchor2 = getAnchors().closestAnchor(getOffset());
            if (tClosestAnchor2 != null && Math.abs(getOffset() - getAnchors().positionOf(tClosestAnchor2)) <= 0.5f && this.confirmValueChange.invoke(tClosestAnchor2).booleanValue()) {
                setCurrentValue(tClosestAnchor2);
            }
            throw th;
        }
    }

    public final float dispatchRawDelta(float f) {
        float fNewOffsetForDelta$material3 = newOffsetForDelta$material3(f);
        float offset = Float.isNaN(getOffset()) ? 0.0f : getOffset();
        setOffset(fNewOffsetForDelta$material3);
        return fNewOffsetForDelta$material3 - offset;
    }

    public final DraggableAnchors<T> getAnchors() {
        return (DraggableAnchors) this.anchors$delegate.getValue();
    }

    public final ll3<AnimationSpec<Float>> getAnimationSpec() {
        return this.animationSpec;
    }

    public final T getClosestValue$material3() {
        return (T) this.closestValue$delegate.getValue();
    }

    public final nl3<T, Boolean> getConfirmValueChange$material3() {
        return this.confirmValueChange;
    }

    public final T getCurrentValue() {
        return this.currentValue$delegate.getValue();
    }

    public final DraggableState getDraggableState$material3() {
        return this.draggableState;
    }

    public final float getLastVelocity() {
        return this.lastVelocity$delegate.getFloatValue();
    }

    public final float getOffset() {
        return this.offset$delegate.getFloatValue();
    }

    public final nl3<Float, Float> getPositionalThreshold$material3() {
        return this.positionalThreshold;
    }

    public final float getProgress() {
        return ((Number) this.progress$delegate.getValue()).floatValue();
    }

    public final T getTargetValue() {
        return (T) this.targetValue$delegate.getValue();
    }

    public final ll3<Float> getVelocityThreshold$material3() {
        return this.velocityThreshold;
    }

    public final boolean isAnimationRunning() {
        return getDragTarget() != null;
    }

    public final float newOffsetForDelta$material3(float f) {
        return kx6.d((Float.isNaN(getOffset()) ? 0.0f : getOffset()) + f, getAnchors().minAnchor(), getAnchors().maxAnchor());
    }

    public final float requireOffset() {
        if (!Float.isNaN(getOffset())) {
            return getOffset();
        }
        ah.f("The offset was read before being initialized. Did you access the offset in a phase before layout, like effects or composition?");
        return 0.0f;
    }

    public final Object settle(float f, e02<? super j59> e02Var) {
        T currentValue = getCurrentValue();
        T tComputeTarget = computeTarget(requireOffset(), currentValue, f);
        if (this.confirmValueChange.invoke(tComputeTarget).booleanValue()) {
            Object objAnimateTo = AnchoredDraggableKt.animateTo(this, tComputeTarget, f, e02Var);
            return objAnimateTo == a32.COROUTINE_SUSPENDED ? objAnimateTo : j59.a;
        }
        Object objAnimateTo2 = AnchoredDraggableKt.animateTo(this, currentValue, f, e02Var);
        return objAnimateTo2 == a32.COROUTINE_SUSPENDED ? objAnimateTo2 : j59.a;
    }

    public final void updateAnchors(DraggableAnchors<T> draggableAnchors, T t) {
        if (aa4.e(getAnchors(), draggableAnchors)) {
            return;
        }
        setAnchors(draggableAnchors);
        if (trySnapTo(t)) {
            return;
        }
        setDragTarget(t);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object Saver$lambda$0(SaverScope saverScope, AnchoredDraggableState anchoredDraggableState) {
            return anchoredDraggableState.getCurrentValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final AnchoredDraggableState Saver$lambda$1(nl3 nl3Var, ll3 ll3Var, ll3 ll3Var2, nl3 nl3Var2, Object obj) {
            return new AnchoredDraggableState(obj, nl3Var, ll3Var, ll3Var2, nl3Var2);
        }

        public final <T> Saver<AnchoredDraggableState<T>, T> Saver(final ll3<? extends AnimationSpec<Float>> ll3Var, final nl3<? super T, Boolean> nl3Var, final nl3<? super Float, Float> nl3Var2, final ll3<Float> ll3Var2) {
            return SaverKt.Saver(new lf(0), new nl3() { // from class: nf
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return AnchoredDraggableState.Companion.Saver$lambda$1(nl3Var2, ll3Var2, ll3Var, nl3Var, obj);
                }
            });
        }

        private Companion() {
        }
    }

    public static /* synthetic */ Object anchoredDrag$default(AnchoredDraggableState anchoredDraggableState, Object obj, MutatePriority mutatePriority, fm3 fm3Var, e02 e02Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return anchoredDraggableState.anchoredDrag(obj, mutatePriority, fm3Var, e02Var);
    }

    public /* synthetic */ AnchoredDraggableState(Object obj, nl3 nl3Var, ll3 ll3Var, ll3 ll3Var2, nl3 nl3Var2, int i, jh2 jh2Var) {
        this(obj, nl3Var, ll3Var, ll3Var2, (i & 16) != 0 ? new af(0) : nl3Var2);
    }

    public /* synthetic */ AnchoredDraggableState(Object obj, DraggableAnchors draggableAnchors, nl3 nl3Var, ll3 ll3Var, ll3 ll3Var2, nl3 nl3Var2, int i, jh2 jh2Var) {
        this(obj, draggableAnchors, nl3Var, ll3Var, ll3Var2, (i & 32) != 0 ? new cf(0) : nl3Var2);
    }

    public AnchoredDraggableState(T t, DraggableAnchors<T> draggableAnchors, nl3<? super Float, Float> nl3Var, ll3<Float> ll3Var, ll3<? extends AnimationSpec<Float>> ll3Var2, nl3<? super T, Boolean> nl3Var2) {
        this(t, nl3Var, ll3Var, ll3Var2, nl3Var2);
        setAnchors(draggableAnchors);
        trySnapTo(t);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object anchoredDrag(MutatePriority mutatePriority, dm3<? super AnchoredDragScope, ? super DraggableAnchors<T>, ? super e02<? super j59>, ? extends Object> dm3Var, e02<? super j59> e02Var) {
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
        try {
            if (i2 == 0) {
                r57.b(obj);
                InternalMutatorMutex internalMutatorMutex = this.dragMutex;
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this, dm3Var, null);
                anonymousClass1.label = 1;
                if (internalMutatorMutex.mutate(mutatePriority, anonymousClass2, anonymousClass1) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            T tClosestAnchor = getAnchors().closestAnchor(getOffset());
            if (tClosestAnchor != null && Math.abs(getOffset() - getAnchors().positionOf(tClosestAnchor)) <= 0.5f && this.confirmValueChange.invoke(tClosestAnchor).booleanValue()) {
                setCurrentValue(tClosestAnchor);
            }
            return j59.a;
        } catch (Throwable th) {
            T tClosestAnchor2 = getAnchors().closestAnchor(getOffset());
            if (tClosestAnchor2 != null && Math.abs(getOffset() - getAnchors().positionOf(tClosestAnchor2)) <= 0.5f && this.confirmValueChange.invoke(tClosestAnchor2).booleanValue()) {
                setCurrentValue(tClosestAnchor2);
            }
            throw th;
        }
    }
}
