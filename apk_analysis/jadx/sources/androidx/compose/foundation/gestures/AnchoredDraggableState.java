package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.internal.InlineClassHelperKt;
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
import defpackage.ah;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bf;
import defpackage.bm3;
import defpackage.df;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.ff;
import defpackage.fm3;
import defpackage.hf;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.mf;
import defpackage.nl3;
import defpackage.of;
import defpackage.pf;
import defpackage.pg8;
import defpackage.qf;
import defpackage.r57;
import defpackage.rf;
import defpackage.sf;
import defpackage.tf;
import defpackage.uf;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class AnchoredDraggableState<T> {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private final AnchoredDraggableState$anchoredDragScope$1 anchoredDragScope;
    private final MutableState anchors$delegate;
    private nl3<? super T, Boolean> confirmValueChange;
    private final MutableState currentValue$delegate;
    public DecayAnimationSpec<Float> decayAnimationSpec;
    private final MutatorMutex dragMutex;
    private final MutableState dragTarget$delegate;
    private final MutableFloatState lastVelocity$delegate;
    private final MutableFloatState offset$delegate;
    public nl3<? super Float, Float> positionalThreshold;
    private final State progress$delegate;
    private final MutableState settledValue$delegate;
    public AnimationSpec<Float> snapAnimationSpec;
    private final State targetValue$delegate;
    public ll3<Float> velocityThreshold;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$2", f = "AnchoredDraggable.kt", l = {1159}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ dm3<AnchoredDragScope, DraggableAnchors<T>, e02<? super j59>, Object> $block;
        int label;
        final /* synthetic */ AnchoredDraggableState<T> this$0;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$2$2, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$2$2", f = "AnchoredDraggable.kt", l = {1160}, m = "invokeSuspend", v = 1)
        public static final class C00302 extends pg8 implements bm3<DraggableAnchors<T>, e02<? super j59>, Object> {
            final /* synthetic */ dm3<AnchoredDragScope, DraggableAnchors<T>, e02<? super j59>, Object> $block;
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ AnchoredDraggableState<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C00302(dm3<? super AnchoredDragScope, ? super DraggableAnchors<T>, ? super e02<? super j59>, ? extends Object> dm3Var, AnchoredDraggableState<T> anchoredDraggableState, e02<? super C00302> e02Var) {
                super(2, e02Var);
                this.$block = dm3Var;
                this.this$0 = anchoredDraggableState;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C00302 c00302 = new C00302(this.$block, this.this$0, e02Var);
                c00302.L$0 = obj;
                return c00302;
            }

            @Override // defpackage.bm3
            public final Object invoke(DraggableAnchors<T> draggableAnchors, e02<? super j59> e02Var) {
                return ((C00302) create(draggableAnchors, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    DraggableAnchors<T> draggableAnchors = (DraggableAnchors) this.L$0;
                    dm3<AnchoredDragScope, DraggableAnchors<T>, e02<? super j59>, Object> dm3Var = this.$block;
                    AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1 = ((AnchoredDraggableState) this.this$0).anchoredDragScope;
                    this.label = 1;
                    if (dm3Var.invoke(anchoredDraggableState$anchoredDragScope$1, draggableAnchors, this) == a32Var) {
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
                ll3 ll3Var = new ll3() { // from class: androidx.compose.foundation.gestures.d
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return anchoredDraggableState.getAnchors();
                    }
                };
                C00302 c00302 = new C00302(this.$block, anchoredDraggableState, null);
                this.label = 1;
                if (AnchoredDraggableKt.restartable(ll3Var, c00302, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            T tClosestAnchor = this.this$0.getAnchors().closestAnchor(this.this$0.getOffset());
            if (tClosestAnchor != null) {
                if (Math.abs(this.this$0.getOffset() - this.this$0.getAnchors().positionOf(tClosestAnchor)) < 0.5f && this.this$0.getConfirmValueChange$foundation().invoke(tClosestAnchor).booleanValue()) {
                    this.this$0.setSettledValue(tClosestAnchor);
                    this.this$0.setCurrentValue(tClosestAnchor);
                }
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$3, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableState", f = "AnchoredDraggable.kt", l = {1204}, m = "anchoredDrag", v = 1)
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$4, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$4", f = "AnchoredDraggable.kt", l = {1206}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass4 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ fm3<AnchoredDragScope, DraggableAnchors<T>, T, e02<? super j59>, Object> $block;
        final /* synthetic */ T $targetValue;
        int label;
        final /* synthetic */ AnchoredDraggableState<T> this$0;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$4$2, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$4$2", f = "AnchoredDraggable.kt", l = {1208}, m = "invokeSuspend", v = 1)
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
                    AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1 = ((AnchoredDraggableState) this.this$0).anchoredDragScope;
                    this.label = 1;
                    if (fm3Var.invoke(anchoredDraggableState$anchoredDragScope$1, draggableAnchors, b, this) == a32Var) {
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
                ll3 ll3Var = new ll3() { // from class: androidx.compose.foundation.gestures.e
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
            if (this.this$0.getConfirmValueChange$foundation().invoke(this.$targetValue).booleanValue()) {
                ((AnchoredDraggableState) this.this$0).anchoredDragScope.dragTo(this.this$0.getAnchors().positionOf(this.$targetValue), this.this$0.getLastVelocity());
                this.this$0.setSettledValue(this.$targetValue);
                this.this$0.setCurrentValue(this.$targetValue);
            }
            return j59.a;
        }
    }

    public AnchoredDraggableState(T t) {
        this.confirmValueChange = new bf(0);
        this.dragMutex = new MutatorMutex();
        this.currentValue$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t, null, 2, null);
        this.settledValue$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t, null, 2, null);
        this.targetValue$delegate = SnapshotStateKt.derivedStateOf(new df(this, 0));
        this.offset$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(Float.NaN);
        this.progress$delegate = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new ff(this, 0));
        this.lastVelocity$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.dragTarget$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.anchors$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(AnchoredDraggableKt.emptyDraggableAnchors(), null, 2, null);
        this.anchoredDragScope = new AnchoredDraggableState$anchoredDragScope$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0(Object obj) {
        return true;
    }

    public static /* synthetic */ Object anchoredDrag$default(AnchoredDraggableState anchoredDraggableState, MutatePriority mutatePriority, dm3 dm3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return anchoredDraggableState.anchoredDrag(mutatePriority, dm3Var, e02Var);
    }

    private final T calculateTargetValue(float f) {
        T tClosestAnchor;
        if (ComposeFoundationFlags.isAnchoredDraggableTargetValueCalculationFixEnabled) {
            return calculateTargetValueWithFix(f);
        }
        return (Float.isNaN(f) || (tClosestAnchor = getAnchors().closestAnchor(f)) == null) ? getCurrentValue() : tClosestAnchor;
    }

    private final T calculateTargetValueWithFix(float f) {
        if (Float.isNaN(f)) {
            return getCurrentValue();
        }
        float fPositionOf = getAnchors().positionOf(getCurrentValue());
        if (Float.isNaN(fPositionOf) || f == fPositionOf) {
            return getCurrentValue();
        }
        T tClosestAnchor = getAnchors().closestAnchor(f);
        return tClosestAnchor == null ? getCurrentValue() : tClosestAnchor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean confirmValueChange$lambda$0(Object obj) {
        return true;
    }

    @ul2
    public static /* synthetic */ void getDecayAnimationSpec$annotations() {
    }

    private final T getDragTarget() {
        return this.dragTarget$delegate.getValue();
    }

    @ul2
    public static /* synthetic */ void getProgress$annotations() {
    }

    @ul2
    public static /* synthetic */ void getSnapAnimationSpec$annotations() {
    }

    public static /* synthetic */ void getUsePreModifierChangeBehavior$foundation$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final float progress_delegate$lambda$0(AnchoredDraggableState anchoredDraggableState) {
        float fPositionOf = anchoredDraggableState.getAnchors().positionOf(anchoredDraggableState.getSettledValue());
        float fPositionOf2 = anchoredDraggableState.getAnchors().positionOf(anchoredDraggableState.getTargetValue()) - fPositionOf;
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCurrentValue(T t) {
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
    public final void setSettledValue(T t) {
        this.settledValue$delegate.setValue(t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object targetValue_delegate$lambda$0(AnchoredDraggableState anchoredDraggableState) {
        Object dragTarget = anchoredDraggableState.getDragTarget();
        return dragTarget == null ? anchoredDraggableState.calculateTargetValue(anchoredDraggableState.getOffset()) : dragTarget;
    }

    private final boolean trySnapTo(T t) {
        MutatorMutex mutatorMutex = this.dragMutex;
        boolean zTryLock = mutatorMutex.tryLock();
        if (!zTryLock) {
            return zTryLock;
        }
        try {
            AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1 = this.anchoredDragScope;
            float fPositionOf = getAnchors().positionOf(t);
            if (!Float.isNaN(fPositionOf)) {
                AnchoredDragScope.dragTo$default(anchoredDraggableState$anchoredDragScope$1, fPositionOf, 0.0f, 2, null);
                setDragTarget(null);
            }
            setCurrentValue(t);
            setSettledValue(t);
            return zTryLock;
        } finally {
            mutatorMutex.unlock();
        }
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
                if (getAnchors().hasPositionFor(t)) {
                    MutatorMutex mutatorMutex = this.dragMutex;
                    AnonymousClass4 anonymousClass4 = new AnonymousClass4(this, t, fm3Var, null);
                    anonymousClass3.label = 1;
                    if (mutatorMutex.mutate(mutatePriority, anonymousClass4, anonymousClass3) == a32Var) {
                        return a32Var;
                    }
                } else if (this.confirmValueChange.invoke(t).booleanValue()) {
                    setSettledValue(t);
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
            return j59.a;
        } catch (Throwable th) {
            setDragTarget(null);
            throw th;
        }
    }

    public final float dispatchRawDelta(float f) {
        float fNewOffsetForDelta$foundation = newOffsetForDelta$foundation(f);
        float fRequireOffset = fNewOffsetForDelta$foundation - requireOffset();
        AnchoredDragScope.dragTo$default(this.anchoredDragScope, fNewOffsetForDelta$foundation, 0.0f, 2, null);
        return fRequireOffset;
    }

    public final DraggableAnchors<T> getAnchors() {
        return (DraggableAnchors) this.anchors$delegate.getValue();
    }

    public final nl3<T, Boolean> getConfirmValueChange$foundation() {
        return this.confirmValueChange;
    }

    public final T getCurrentValue() {
        return this.currentValue$delegate.getValue();
    }

    public final DecayAnimationSpec<Float> getDecayAnimationSpec() {
        DecayAnimationSpec<Float> decayAnimationSpec = this.decayAnimationSpec;
        if (decayAnimationSpec != null) {
            return decayAnimationSpec;
        }
        aa4.j("decayAnimationSpec");
        throw null;
    }

    public final float getLastVelocity() {
        return this.lastVelocity$delegate.getFloatValue();
    }

    public final float getOffset() {
        return this.offset$delegate.getFloatValue();
    }

    public final nl3<Float, Float> getPositionalThreshold$foundation() {
        nl3 nl3Var = this.positionalThreshold;
        if (nl3Var != null) {
            return nl3Var;
        }
        aa4.j("positionalThreshold");
        throw null;
    }

    public final float getProgress() {
        return ((Number) this.progress$delegate.getValue()).floatValue();
    }

    public final T getSettledValue() {
        return this.settledValue$delegate.getValue();
    }

    public final AnimationSpec<Float> getSnapAnimationSpec() {
        AnimationSpec<Float> animationSpec = this.snapAnimationSpec;
        if (animationSpec != null) {
            return animationSpec;
        }
        aa4.j("snapAnimationSpec");
        throw null;
    }

    public final T getTargetValue() {
        return (T) this.targetValue$delegate.getValue();
    }

    public final boolean getUsePreModifierChangeBehavior$foundation() {
        return (this.positionalThreshold == null || this.velocityThreshold == null || this.snapAnimationSpec == null || this.decayAnimationSpec == null) ? false : true;
    }

    public final ll3<Float> getVelocityThreshold$foundation() {
        ll3<Float> ll3Var = this.velocityThreshold;
        if (ll3Var != null) {
            return ll3Var;
        }
        aa4.j("velocityThreshold");
        throw null;
    }

    public final boolean isAnimationRunning() {
        return getDragTarget() != null;
    }

    public final float newOffsetForDelta$foundation(float f) {
        return kx6.d((Float.isNaN(getOffset()) ? 0.0f : getOffset()) + f, getAnchors().minPosition(), getAnchors().maxPosition());
    }

    public final float progress(T t, T t2) {
        float fPositionOf = getAnchors().positionOf(t);
        float fPositionOf2 = getAnchors().positionOf(t2);
        float fD = (kx6.d(getOffset(), Math.min(fPositionOf, fPositionOf2), Math.max(fPositionOf, fPositionOf2)) - fPositionOf) / (fPositionOf2 - fPositionOf);
        if (Float.isNaN(fD)) {
            return 1.0f;
        }
        if (fD < 1.0E-6f) {
            return 0.0f;
        }
        if (fD > 0.999999f) {
            return 1.0f;
        }
        return Math.abs(fD);
    }

    public final float requireOffset() {
        if (Float.isNaN(getOffset())) {
            InlineClassHelperKt.throwIllegalStateException("The offset was read before being initialized. Did you access the offset in a phase before layout, like effects or composition?");
        }
        return getOffset();
    }

    public final void setConfirmValueChange$foundation(nl3<? super T, Boolean> nl3Var) {
        this.confirmValueChange = nl3Var;
    }

    public final void setDecayAnimationSpec$foundation(DecayAnimationSpec<Float> decayAnimationSpec) {
        this.decayAnimationSpec = decayAnimationSpec;
    }

    public final void setPositionalThreshold$foundation(nl3<? super Float, Float> nl3Var) {
        this.positionalThreshold = nl3Var;
    }

    public final void setSnapAnimationSpec$foundation(AnimationSpec<Float> animationSpec) {
        this.snapAnimationSpec = animationSpec;
    }

    public final void setVelocityThreshold$foundation(ll3<Float> ll3Var) {
        this.velocityThreshold = ll3Var;
    }

    @ul2
    public final Object settle(float f, e02<? super Float> e02Var) {
        if (!getUsePreModifierChangeBehavior$foundation()) {
            InlineClassHelperKt.throwIllegalArgumentException("AnchoredDraggableState was configured through a constructor without providing positional and velocity threshold. This overload of settle has been deprecated. Please refer to AnchoredDraggableState#settle(animationSpec) for more information.");
        }
        T currentValue = getCurrentValue();
        Object objComputeTarget = AnchoredDraggableKt.computeTarget(getAnchors(), requireOffset(), f, getPositionalThreshold$foundation(), getVelocityThreshold$foundation());
        return this.confirmValueChange.invoke(objComputeTarget).booleanValue() ? AnchoredDraggableKt.animateToWithDecay$default(this, objComputeTarget, f, null, null, e02Var, 12, null) : AnchoredDraggableKt.animateToWithDecay$default(this, currentValue, f, null, null, e02Var, 12, null);
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

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Saver Saver$default(Companion companion, AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, nl3 nl3Var, ll3 ll3Var, nl3 nl3Var2, int i, Object obj) {
            if ((i & 16) != 0) {
                nl3Var2 = new sf(0);
            }
            return companion.Saver(animationSpec, decayAnimationSpec, nl3Var, ll3Var, nl3Var2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object Saver$lambda$0(SaverScope saverScope, AnchoredDraggableState anchoredDraggableState) {
            return anchoredDraggableState.getCurrentValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final AnchoredDraggableState Saver$lambda$1(Object obj) {
            return new AnchoredDraggableState(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean Saver$lambda$2(Object obj) {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object Saver$lambda$3(SaverScope saverScope, AnchoredDraggableState anchoredDraggableState) {
            return anchoredDraggableState.getCurrentValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final AnchoredDraggableState Saver$lambda$4(nl3 nl3Var, Object obj) {
            return new AnchoredDraggableState(obj, (nl3<? super Object, Boolean>) nl3Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean Saver$lambda$5(Object obj) {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object Saver$lambda$6(SaverScope saverScope, AnchoredDraggableState anchoredDraggableState) {
            return anchoredDraggableState.getCurrentValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final AnchoredDraggableState Saver$lambda$7(nl3 nl3Var, ll3 ll3Var, AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, nl3 nl3Var2, Object obj) {
            return AnchoredDraggableKt.AnchoredDraggableState(obj, nl3Var, ll3Var, animationSpec, decayAnimationSpec, nl3Var2);
        }

        @ul2
        public final <T> Saver<AnchoredDraggableState<T>, T> Saver(AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec, nl3<? super Float, Float> nl3Var, ll3<Float> ll3Var, nl3<? super T, Boolean> nl3Var2) {
            return SaverKt.Saver(new mf(), new of(animationSpec, decayAnimationSpec, nl3Var, ll3Var, nl3Var2));
        }

        private Companion() {
        }

        @ul2
        public final <T> Saver<AnchoredDraggableState<T>, T> Saver(nl3<? super T, Boolean> nl3Var) {
            return SaverKt.Saver(new qf(0), new rf(nl3Var, 0));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Saver Saver$default(Companion companion, nl3 nl3Var, int i, Object obj) {
            if ((i & 1) != 0) {
                nl3Var = new pf(0);
            }
            return companion.Saver(nl3Var);
        }

        public final <T> Saver<AnchoredDraggableState<T>, T> Saver() {
            return SaverKt.Saver(new tf(), new uf(0));
        }
    }

    public static /* synthetic */ Object anchoredDrag$default(AnchoredDraggableState anchoredDraggableState, Object obj, MutatePriority mutatePriority, fm3 fm3Var, e02 e02Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return anchoredDraggableState.anchoredDrag(obj, mutatePriority, fm3Var, e02Var);
    }

    public final Object settle(AnimationSpec<Float> animationSpec, e02<? super j59> e02Var) {
        T currentValue = getCurrentValue();
        T tClosestAnchor = getAnchors().closestAnchor(requireOffset());
        if (tClosestAnchor != null && this.confirmValueChange.invoke(tClosestAnchor).booleanValue()) {
            Object objAnimateTo = AnchoredDraggableKt.animateTo(this, tClosestAnchor, animationSpec, e02Var);
            return objAnimateTo == a32.COROUTINE_SUSPENDED ? objAnimateTo : j59.a;
        }
        Object objAnimateTo2 = AnchoredDraggableKt.animateTo(this, currentValue, animationSpec, e02Var);
        return objAnimateTo2 == a32.COROUTINE_SUSPENDED ? objAnimateTo2 : j59.a;
    }

    public AnchoredDraggableState(T t, DraggableAnchors<T> draggableAnchors) {
        this(t);
        setAnchors(draggableAnchors);
        trySnapTo(t);
    }

    @ul2
    public AnchoredDraggableState(T t, nl3<? super T, Boolean> nl3Var) {
        this(t);
        this.confirmValueChange = nl3Var;
    }

    public /* synthetic */ AnchoredDraggableState(Object obj, DraggableAnchors draggableAnchors, nl3 nl3Var, int i, jh2 jh2Var) {
        this(obj, draggableAnchors, (i & 4) != 0 ? new hf(0) : nl3Var);
    }

    @ul2
    public AnchoredDraggableState(T t, DraggableAnchors<T> draggableAnchors, nl3<? super T, Boolean> nl3Var) {
        this(t, nl3Var);
        setAnchors(draggableAnchors);
        trySnapTo(t);
    }

    public final Object anchoredDrag(MutatePriority mutatePriority, dm3<? super AnchoredDragScope, ? super DraggableAnchors<T>, ? super e02<? super j59>, ? extends Object> dm3Var, e02<? super j59> e02Var) {
        Object objMutate = this.dragMutex.mutate(mutatePriority, new AnonymousClass2(this, dm3Var, null), e02Var);
        return objMutate == a32.COROUTINE_SUSPENDED ? objMutate : j59.a;
    }
}
