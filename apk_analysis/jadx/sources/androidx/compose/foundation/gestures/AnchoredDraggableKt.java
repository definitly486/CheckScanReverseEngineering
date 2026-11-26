package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.animation.core.FloatDecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.c9;
import defpackage.e02;
import defpackage.f02;
import defpackage.fg;
import defpackage.fm3;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.kv2;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.me0;
import defpackage.nl3;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;
import defpackage.ue;
import defpackage.ul2;
import defpackage.ve;
import defpackage.we;
import defpackage.xe;
import defpackage.y22;
import defpackage.ye;
import defpackage.z22;
import defpackage.ze;

/* JADX INFO: loaded from: classes.dex */
public final class AnchoredDraggableKt {
    private static final nl3<PointerType, Boolean> AlwaysDrag;
    private static final String ConfigurationMovedToModifier = "This constructor of AnchoredDraggableState has been deprecated. Please pass thresholds and animation specs to AnchoredDraggableDefaults.flingBehavior(..) instead, which can be passed to Modifier.anchoredDraggable.";
    private static final String ConfirmValueChangeDeprecated = "confirmValueChange is deprecated without replacement. Rather than relying on a callback to veto state changes, the anchor set should not include disallowed anchors. See androidx.compose.foundation.samples.AnchoredDraggableDynamicAnchorsSample for an example of using dynamic anchors over confirmValueChange.";
    private static final boolean DEBUG = false;
    private static final nl3<Integer, Float> GetOrNan;
    private static final String SettleWithVelocityDeprecated = "settle does not accept a velocity anymore. Please use FlingBehavior#performFling instead. See AnchoredDraggableSample.kt for example usages.";
    private static final String StartDragImmediatelyDeprecated = "startDragImmediately has been removed without replacement. Modifier.anchoredDraggable sets startDragImmediately to true by default when animations are running.";
    private static final float AnchoredDraggableMinFlingVelocity = Dp.m9042constructorimpl(125.0f);
    private static final DecayAnimationSpec<Float> NoOpDecayAnimationSpec = DecayAnimationSpecKt.generateDecayAnimationSpec(new FloatDecayAnimationSpec() { // from class: androidx.compose.foundation.gestures.AnchoredDraggableKt$NoOpDecayAnimationSpec$1
        private final float absVelocityThreshold;

        @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
        public float getAbsVelocityThreshold() {
            return this.absVelocityThreshold;
        }

        @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
        public long getDurationNanos(float f, float f2) {
            return 0L;
        }

        @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
        public float getTargetValue(float f, float f2) {
            return 0.0f;
        }

        @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
        public float getValueFromNanos(long j, float f, float f2) {
            return 0.0f;
        }

        @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
        public float getVelocityFromNanos(long j, float f, float f2) {
            return 0.0f;
        }
    });

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableKt$animateTo$4, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableKt$animateTo$4", f = "AnchoredDraggable.kt", l = {1378}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass4<T> extends pg8 implements fm3<AnchoredDragScope, DraggableAnchors<T>, T, e02<? super j59>, Object> {
        final /* synthetic */ AnimationSpec<Float> $animationSpec;
        final /* synthetic */ AnchoredDraggableState<T> $this_animateTo;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(AnchoredDraggableState<T> anchoredDraggableState, AnimationSpec<Float> animationSpec, e02<? super AnonymousClass4> e02Var) {
            super(4, e02Var);
            this.$this_animateTo = anchoredDraggableState;
            this.$animationSpec = animationSpec;
        }

        @Override // defpackage.fm3
        public final Object invoke(AnchoredDragScope anchoredDragScope, DraggableAnchors<T> draggableAnchors, T t, e02<? super j59> e02Var) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$this_animateTo, this.$animationSpec, e02Var);
            anonymousClass4.L$0 = anchoredDragScope;
            anonymousClass4.L$1 = draggableAnchors;
            anonymousClass4.L$2 = t;
            return anonymousClass4.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                AnchoredDragScope anchoredDragScope = (AnchoredDragScope) this.L$0;
                DraggableAnchors draggableAnchors = (DraggableAnchors) this.L$1;
                Object obj2 = this.L$2;
                AnchoredDraggableState<T> anchoredDraggableState = this.$this_animateTo;
                float lastVelocity = anchoredDraggableState.getLastVelocity();
                AnimationSpec<Float> animationSpec = this.$animationSpec;
                this.L$0 = null;
                this.L$1 = null;
                this.label = 1;
                if (AnchoredDraggableKt.animateTo(anchoredDraggableState, lastVelocity, anchoredDragScope, draggableAnchors, obj2, animationSpec, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableKt$animateToWithDecay$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableKt", f = "AnchoredDraggable.kt", l = {1414}, m = "animateToWithDecay", v = 1)
    public static final class C04771<T> extends f02 {
        float F$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C04771(e02<? super C04771> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AnchoredDraggableKt.animateToWithDecay(null, null, 0.0f, null, null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableKt$animateToWithDecay$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableKt$animateToWithDecay$2", f = "AnchoredDraggable.kt", l = {1425, 1443, 1467}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<T> extends pg8 implements fm3<AnchoredDragScope, DraggableAnchors<T>, T, e02<? super j59>, Object> {
        final /* synthetic */ DecayAnimationSpec<Float> $decayAnimationSpec;
        final /* synthetic */ o07 $remainingVelocity;
        final /* synthetic */ AnimationSpec<Float> $snapAnimationSpec;
        final /* synthetic */ AnchoredDraggableState<T> $this_animateToWithDecay;
        final /* synthetic */ float $velocity;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(AnchoredDraggableState<T> anchoredDraggableState, float f, AnimationSpec<Float> animationSpec, o07 o07Var, DecayAnimationSpec<Float> decayAnimationSpec, e02<? super AnonymousClass2> e02Var) {
            super(4, e02Var);
            this.$this_animateToWithDecay = anchoredDraggableState;
            this.$velocity = f;
            this.$snapAnimationSpec = animationSpec;
            this.$remainingVelocity = o07Var;
            this.$decayAnimationSpec = decayAnimationSpec;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$2(float f, o07 o07Var, AnchoredDragScope anchoredDragScope, o07 o07Var2, AnimationScope animationScope) {
            if ((((Number) animationScope.getValue()).floatValue() >= f || o07Var.b <= f) && (((Number) animationScope.getValue()).floatValue() <= f || o07Var.b >= f)) {
                anchoredDragScope.dragTo(((Number) animationScope.getValue()).floatValue(), ((Number) animationScope.getVelocity()).floatValue());
                o07Var2.b = ((Number) animationScope.getVelocity()).floatValue();
                o07Var.b = ((Number) animationScope.getValue()).floatValue();
            } else {
                float fCoerceToTarget = AnchoredDraggableKt.coerceToTarget(((Number) animationScope.getValue()).floatValue(), f);
                anchoredDragScope.dragTo(fCoerceToTarget, ((Number) animationScope.getVelocity()).floatValue());
                o07Var2.b = Float.isNaN(((Number) animationScope.getVelocity()).floatValue()) ? 0.0f : ((Number) animationScope.getVelocity()).floatValue();
                o07Var.b = fCoerceToTarget;
                animationScope.cancelAnimation();
            }
            return j59.a;
        }

        @Override // defpackage.fm3
        public final Object invoke(AnchoredDragScope anchoredDragScope, DraggableAnchors<T> draggableAnchors, T t, e02<? super j59> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_animateToWithDecay, this.$velocity, this.$snapAnimationSpec, this.$remainingVelocity, this.$decayAnimationSpec, e02Var);
            anonymousClass2.L$0 = anchoredDragScope;
            anonymousClass2.L$1 = draggableAnchors;
            anonymousClass2.L$2 = t;
            return anonymousClass2.invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x00b2, code lost:
        
            if (androidx.compose.animation.core.SuspendAnimationKt.animateDecay$default(r1, r1, false, r3, r21, 2, null) == r7) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00c6, code lost:
        
            if (androidx.compose.foundation.gestures.AnchoredDraggableKt.animateTo(r0, r13, r0, r5, r9, r5, r21) == r7) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00e0, code lost:
        
            if (androidx.compose.foundation.gestures.AnchoredDraggableKt.animateTo(r0, r13, r0, r5, r9, r5, r21) == r7) goto L43;
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r22) {
            /*
                Method dump skipped, instruction units count: 234
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.AnchoredDraggableKt.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableKt$restartable$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableKt", f = "AnchoredDraggable.kt", l = {1578}, m = "restartable", v = 1)
    public static final class C04781<I> extends f02 {
        int label;
        /* synthetic */ Object result;

        public C04781(e02<? super C04781> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AnchoredDraggableKt.restartable(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableKt$restartable$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableKt$restartable$2", f = "AnchoredDraggable.kt", l = {1580}, m = "invokeSuspend", v = 1)
    public static final class C04792 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ bm3<I, e02<? super j59>, Object> $block;
        final /* synthetic */ ll3<I> $inputs;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableKt$restartable$2$1, reason: invalid class name */
        public static final class AnonymousClass1<T> implements id3 {
            final /* synthetic */ y22 $$this$coroutineScope;
            final /* synthetic */ bm3<I, e02<? super j59>, Object> $block;
            final /* synthetic */ r07<mb4> $previousDrag;

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableKt$restartable$2$1$2, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableKt$restartable$2$1$2", f = "AnchoredDraggable.kt", l = {1587}, m = "invokeSuspend", v = 1)
            public static final class C00282 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ y22 $$this$coroutineScope;
                final /* synthetic */ bm3<I, e02<? super j59>, Object> $block;
                final /* synthetic */ I $latestInputs;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C00282(bm3<? super I, ? super e02<? super j59>, ? extends Object> bm3Var, I i, y22 y22Var, e02<? super C00282> e02Var) {
                    super(2, e02Var);
                    this.$block = bm3Var;
                    this.$latestInputs = i;
                    this.$$this$coroutineScope = y22Var;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    return new C00282(this.$block, this.$latestInputs, this.$$this$coroutineScope, e02Var);
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((C00282) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
                    Object obj2 = a32.COROUTINE_SUSPENDED;
                    int i = this.label;
                    if (i == 0) {
                        r57.b(obj);
                        bm3<I, e02<? super j59>, Object> bm3Var = this.$block;
                        I i2 = this.$latestInputs;
                        this.label = 1;
                        if (bm3Var.invoke(i2, this) == obj2) {
                            return obj2;
                        }
                    } else {
                        if (i != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj);
                    }
                    z22.b(this.$$this$coroutineScope, new AnchoredDragFinishedSignal());
                    return j59.a;
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(r07<mb4> r07Var, y22 y22Var, bm3<? super I, ? super e02<? super j59>, ? extends Object> bm3Var) {
                this.$previousDrag = r07Var;
                this.$$this$coroutineScope = y22Var;
                this.$block = bm3Var;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // defpackage.id3
            public final Object emit(I i, e02<? super j59> e02Var) {
                AnchoredDraggableKt$restartable$2$1$emit$1 anchoredDraggableKt$restartable$2$1$emit$1;
                Object obj;
                if (e02Var instanceof AnchoredDraggableKt$restartable$2$1$emit$1) {
                    anchoredDraggableKt$restartable$2$1$emit$1 = (AnchoredDraggableKt$restartable$2$1$emit$1) e02Var;
                    int i2 = anchoredDraggableKt$restartable$2$1$emit$1.label;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        anchoredDraggableKt$restartable$2$1$emit$1.label = i2 - Integer.MIN_VALUE;
                    } else {
                        anchoredDraggableKt$restartable$2$1$emit$1 = new AnchoredDraggableKt$restartable$2$1$emit$1(this, e02Var);
                    }
                } else {
                    anchoredDraggableKt$restartable$2$1$emit$1 = new AnchoredDraggableKt$restartable$2$1$emit$1(this, e02Var);
                }
                Object obj2 = anchoredDraggableKt$restartable$2$1$emit$1.result;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i3 = anchoredDraggableKt$restartable$2$1$emit$1.label;
                if (i3 == 0) {
                    r57.b(obj2);
                    mb4 mb4Var = this.$previousDrag.b;
                    if (mb4Var != null) {
                        mb4Var.cancel(new AnchoredDragFinishedSignal());
                        anchoredDraggableKt$restartable$2$1$emit$1.L$0 = i;
                        anchoredDraggableKt$restartable$2$1$emit$1.L$1 = mb4Var;
                        anchoredDraggableKt$restartable$2$1$emit$1.label = 1;
                        if (mb4Var.e0(anchoredDraggableKt$restartable$2$1$emit$1) == a32Var) {
                            obj = i;
                            obj = i;
                            return a32Var;
                        }
                    }
                } else {
                    if (i3 != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    Object obj3 = anchoredDraggableKt$restartable$2$1$emit$1.L$0;
                    r57.b(obj2);
                    obj = obj3;
                }
                obj = i;
                obj = i;
                obj = i;
                r07<mb4> r07Var = this.$previousDrag;
                y22 y22Var = this.$$this$coroutineScope;
                r07Var.b = (T) av0.c(y22Var, null, c32.UNDISPATCHED, new C00282(this.$block, obj, y22Var, null), 1);
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04792(ll3<? extends I> ll3Var, bm3<? super I, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super C04792> e02Var) {
            super(2, e02Var);
            this.$inputs = ll3Var;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C04792 c04792 = new C04792(this.$inputs, this.$block, e02Var);
            c04792.L$0 = obj;
            return c04792;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04792) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                y22 y22Var = (y22) this.L$0;
                r07 r07Var = new r07();
                hd3 hd3VarSnapshotFlow = SnapshotStateKt.snapshotFlow(this.$inputs);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(r07Var, y22Var, this.$block);
                this.label = 1;
                if (hd3VarSnapshotFlow.collect(anonymousClass1, this) == a32Var) {
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

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableKt$snapTo$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableKt$snapTo$2", f = "AnchoredDraggable.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C04802<T> extends pg8 implements fm3<AnchoredDragScope, DraggableAnchors<T>, T, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        int label;

        public C04802(e02<? super C04802> e02Var) {
            super(4, e02Var);
        }

        @Override // defpackage.fm3
        public final Object invoke(AnchoredDragScope anchoredDragScope, DraggableAnchors<T> draggableAnchors, T t, e02<? super j59> e02Var) {
            C04802 c04802 = new C04802(e02Var);
            c04802.L$0 = anchoredDragScope;
            c04802.L$1 = draggableAnchors;
            c04802.L$2 = t;
            return c04802.invokeSuspend(j59.a);
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
            AnchoredDragScope anchoredDragScope = (AnchoredDragScope) this.L$0;
            float fPositionOf = ((DraggableAnchors) this.L$1).positionOf(this.L$2);
            if (!Float.isNaN(fPositionOf)) {
                AnchoredDragScope.dragTo$default(anchoredDragScope, fPositionOf, 0.0f, 2, null);
            }
            return j59.a;
        }
    }

    static {
        int i = 0;
        AlwaysDrag = new xe(i);
        GetOrNan = new ye(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean AlwaysDrag$lambda$0(PointerType pointerType) {
        return true;
    }

    private static final <T> SnapLayoutInfoProvider AnchoredDraggableLayoutInfoProvider(final AnchoredDraggableState<T> anchoredDraggableState, final nl3<? super Float, Float> nl3Var, final ll3<Float> ll3Var) {
        return new SnapLayoutInfoProvider() { // from class: androidx.compose.foundation.gestures.AnchoredDraggableKt.AnchoredDraggableLayoutInfoProvider.1
            @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
            public float calculateApproachOffset(float f, float f2) {
                return 0.0f;
            }

            @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
            public float calculateSnapOffset(float f) {
                float fRequireOffset = anchoredDraggableState.requireOffset();
                Object objComputeTarget = AnchoredDraggableKt.computeTarget(anchoredDraggableState.getAnchors(), fRequireOffset, f, nl3Var, ll3Var);
                if (!((Boolean) anchoredDraggableState.getConfirmValueChange$foundation().invoke(objComputeTarget)).booleanValue()) {
                    objComputeTarget = anchoredDraggableState.getSettledValue();
                }
                return anchoredDraggableState.getAnchors().positionOf(objComputeTarget) - fRequireOffset;
            }
        };
    }

    @ul2
    public static final <T> AnchoredDraggableState<T> AnchoredDraggableState(T t, nl3<? super Float, Float> nl3Var, ll3<Float> ll3Var, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec, nl3<? super T, Boolean> nl3Var2) {
        AnchoredDraggableState<T> anchoredDraggableState = new AnchoredDraggableState<>(t, nl3Var2);
        anchoredDraggableState.setPositionalThreshold$foundation(nl3Var);
        anchoredDraggableState.setVelocityThreshold$foundation(ll3Var);
        anchoredDraggableState.setSnapAnimationSpec$foundation(animationSpec);
        anchoredDraggableState.setDecayAnimationSpec$foundation(decayAnimationSpec);
        return anchoredDraggableState;
    }

    public static /* synthetic */ AnchoredDraggableState AnchoredDraggableState$default(Object obj, DraggableAnchors draggableAnchors, nl3 nl3Var, ll3 ll3Var, AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, nl3 nl3Var2, int i, Object obj2) {
        if ((i & 64) != 0) {
            nl3Var2 = new ue(0);
        }
        return AnchoredDraggableState(obj, draggableAnchors, nl3Var, ll3Var, animationSpec, decayAnimationSpec, nl3Var2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean AnchoredDraggableState$lambda$0(Object obj) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean AnchoredDraggableState$lambda$2(Object obj) {
        return true;
    }

    public static final <T> DraggableAnchors<T> DraggableAnchors(nl3<? super DraggableAnchorsConfig<T>, j59> nl3Var) {
        DraggableAnchorsConfig draggableAnchorsConfig = new DraggableAnchorsConfig();
        nl3Var.invoke(draggableAnchorsConfig);
        return new DefaultDraggableAnchors(draggableAnchorsConfig.buildKeys$foundation(), draggableAnchorsConfig.buildPositions$foundation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float GetOrNan$lambda$0(int i) {
        return Float.NaN;
    }

    public static final <T> Modifier anchoredDraggable(Modifier modifier, AnchoredDraggableState<T> anchoredDraggableState, boolean z, Orientation orientation, boolean z2, MutableInteractionSource mutableInteractionSource, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior) {
        return modifier.then(new AnchoredDraggableElement(anchoredDraggableState, orientation, z2, Boolean.valueOf(z), mutableInteractionSource, null, overscrollEffect, flingBehavior, 32, null));
    }

    public static /* synthetic */ Modifier anchoredDraggable$default(Modifier modifier, AnchoredDraggableState anchoredDraggableState, boolean z, Orientation orientation, boolean z2, MutableInteractionSource mutableInteractionSource, OverscrollEffect overscrollEffect, boolean z3, FlingBehavior flingBehavior, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = true;
        }
        return anchoredDraggable(modifier, anchoredDraggableState, z, orientation, z2, (i & 16) != 0 ? null : mutableInteractionSource, (i & 32) != 0 ? null : overscrollEffect, (i & 64) != 0 ? anchoredDraggableState.isAnimationRunning() : z3, (i & 128) != 0 ? null : flingBehavior);
    }

    public static final <T> TargetedFlingBehavior anchoredDraggableFlingBehavior(AnchoredDraggableState<T> anchoredDraggableState, Density density, nl3<? super Float, Float> nl3Var, AnimationSpec<Float> animationSpec) {
        return SnapFlingBehaviorKt.snapFlingBehavior(AnchoredDraggableLayoutInfoProvider(anchoredDraggableState, nl3Var, new ze(density, 0)), NoOpDecayAnimationSpec, animationSpec);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float anchoredDraggableFlingBehavior$lambda$0(Density density) {
        return density.mo1434toPx0680j_4(Dp.m9042constructorimpl(125.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> Object animateTo(AnchoredDraggableState<T> anchoredDraggableState, float f, AnchoredDragScope anchoredDragScope, DraggableAnchors<T> draggableAnchors, T t, AnimationSpec<Float> animationSpec, e02<? super j59> e02Var) {
        Object objAnimate;
        float fPositionOf = draggableAnchors.positionOf(t);
        o07 o07Var = new o07();
        o07Var.b = Float.isNaN(anchoredDraggableState.getOffset()) ? 0.0f : anchoredDraggableState.getOffset();
        if (!Float.isNaN(fPositionOf)) {
            float f2 = o07Var.b;
            if (f2 != fPositionOf && (objAnimate = SuspendAnimationKt.animate(f2, fPositionOf, f, animationSpec, new ve(anchoredDragScope, o07Var), e02Var)) == a32.COROUTINE_SUSPENDED) {
                return objAnimate;
            }
        }
        return j59.a;
    }

    public static /* synthetic */ Object animateTo$default(AnchoredDraggableState anchoredDraggableState, Object obj, AnimationSpec animationSpec, e02 e02Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            animationSpec = anchoredDraggableState.getUsePreModifierChangeBehavior$foundation() ? anchoredDraggableState.getSnapAnimationSpec() : AnchoredDraggableDefaults.INSTANCE.getSnapAnimationSpec();
        }
        return animateTo(anchoredDraggableState, obj, animationSpec, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateTo$lambda$0$1(AnchoredDragScope anchoredDragScope, o07 o07Var, float f, float f2) {
        anchoredDragScope.dragTo(f, f2);
        o07Var.b = f;
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final <T> Object animateToWithDecay(AnchoredDraggableState<T> anchoredDraggableState, T t, float f, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec, e02<? super Float> e02Var) {
        C04771 c04771;
        float f2;
        o07 o07Var;
        if (e02Var instanceof C04771) {
            c04771 = (C04771) e02Var;
            int i = c04771.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04771.label = i - Integer.MIN_VALUE;
            } else {
                c04771 = new C04771(e02Var);
            }
        } else {
            c04771 = new C04771(e02Var);
        }
        C04771 c04772 = c04771;
        Object obj = c04772.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04772.label;
        if (i2 == 0) {
            r57.b(obj);
            o07 o07Var2 = new o07();
            o07Var2.b = f;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(anchoredDraggableState, f, animationSpec, o07Var2, decayAnimationSpec, null);
            c04772.L$0 = o07Var2;
            c04772.F$0 = f;
            c04772.label = 1;
            if (AnchoredDraggableState.anchoredDrag$default(anchoredDraggableState, t, null, anonymousClass2, c04772, 2, null) == a32Var) {
                return a32Var;
            }
            f2 = f;
            o07Var = o07Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            f2 = c04772.F$0;
            o07Var = (o07) c04772.L$0;
            r57.b(obj);
        }
        return new Float(f2 - o07Var.b);
    }

    public static /* synthetic */ Object animateToWithDecay$default(AnchoredDraggableState anchoredDraggableState, Object obj, float f, AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, e02 e02Var, int i, Object obj2) {
        if ((i & 4) != 0) {
            animationSpec = anchoredDraggableState.getUsePreModifierChangeBehavior$foundation() ? anchoredDraggableState.getSnapAnimationSpec() : AnchoredDraggableDefaults.INSTANCE.getSnapAnimationSpec();
        }
        AnimationSpec animationSpec2 = animationSpec;
        if ((i & 8) != 0) {
            decayAnimationSpec = anchoredDraggableState.getUsePreModifierChangeBehavior$foundation() ? anchoredDraggableState.getDecayAnimationSpec() : AnchoredDraggableDefaults.INSTANCE.getDecayAnimationSpec();
        }
        return animateToWithDecay(anchoredDraggableState, obj, f, animationSpec2, decayAnimationSpec, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float coerceToTarget(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        return (f2 <= 0.0f ? f >= f2 : f <= f2) ? f : f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:32:0x008b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x008c A[RETURN] */
    public static final <T> T computeTarget(DraggableAnchors<T> draggableAnchors, float f, float f2, nl3<? super Float, Float> nl3Var, ll3<Float> ll3Var) {
        if (Float.isNaN(f)) {
            fg.c("The offset provided to computeTarget must not be NaN.");
            return null;
        }
        boolean z = Math.abs(f2) > 0.0f;
        boolean z2 = z && f2 > 0.0f;
        if (!z) {
            T tClosestAnchor = draggableAnchors.closestAnchor(f);
            tClosestAnchor.getClass();
            return tClosestAnchor;
        }
        if (Math.abs(f2) >= Math.abs(ll3Var.invoke().floatValue())) {
            T tClosestAnchor2 = draggableAnchors.closestAnchor(f, z2);
            tClosestAnchor2.getClass();
            return tClosestAnchor2;
        }
        T tClosestAnchor3 = draggableAnchors.closestAnchor(f, false);
        tClosestAnchor3.getClass();
        float fPositionOf = draggableAnchors.positionOf(tClosestAnchor3);
        T tClosestAnchor4 = draggableAnchors.closestAnchor(f, true);
        tClosestAnchor4.getClass();
        float fPositionOf2 = draggableAnchors.positionOf(tClosestAnchor4);
        float fAbs = Math.abs(nl3Var.invoke(Float.valueOf(Math.abs(fPositionOf - fPositionOf2))).floatValue());
        if (!z2) {
            fPositionOf = fPositionOf2;
        }
        boolean z3 = Math.abs(fPositionOf - f) >= fAbs;
        if (z3) {
            if (z2) {
                return tClosestAnchor4;
            }
            return tClosestAnchor3;
        }
        if (z3) {
            me0.e();
            return null;
        }
        if (z2) {
            return tClosestAnchor3;
        }
        return tClosestAnchor4;
    }

    private static final void debugLog(ll3<String> ll3Var) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> DefaultDraggableAnchors<T> emptyDraggableAnchors() {
        return new DefaultDraggableAnchors<>(kx2.b, new float[0]);
    }

    public static final <T> void forEach(DraggableAnchors<T> draggableAnchors, bm3<? super T, ? super Float, j59> bm3Var) {
        int size = draggableAnchors.getSize();
        for (int i = 0; i < size; i++) {
            T tAnchorAt = draggableAnchors.anchorAt(i);
            if (tAnchorAt == null) {
                c9.f(kv2.b(i, "There was no key at index ", ". Please report a bug."));
                return;
            }
            bm3Var.invoke(tAnchorAt, Float.valueOf(draggableAnchors.positionAt(i)));
        }
    }

    public static final float getAnchoredDraggableMinFlingVelocity() {
        return AnchoredDraggableMinFlingVelocity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <I> Object restartable(ll3<? extends I> ll3Var, bm3<? super I, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        C04781 c04781;
        if (e02Var instanceof C04781) {
            c04781 = (C04781) e02Var;
            int i = c04781.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04781.label = i - Integer.MIN_VALUE;
            } else {
                c04781 = new C04781(e02Var);
            }
        } else {
            c04781 = new C04781(e02Var);
        }
        Object obj = c04781.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04781.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                C04792 c04792 = new C04792(ll3Var, bm3Var, null);
                c04781.label = 1;
                if (z22.c(c04792, c04781) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
        } catch (AnchoredDragFinishedSignal unused) {
        }
        return j59.a;
    }

    public static final <T> Object snapTo(AnchoredDraggableState<T> anchoredDraggableState, T t, e02<? super j59> e02Var) {
        Object objAnchoredDrag$default = AnchoredDraggableState.anchoredDrag$default(anchoredDraggableState, t, null, new C04802(null), e02Var, 2, null);
        return objAnchoredDrag$default == a32.COROUTINE_SUSPENDED ? objAnchoredDrag$default : j59.a;
    }

    @ul2
    public static final <T> AnchoredDraggableState<T> AnchoredDraggableState(T t, DraggableAnchors<T> draggableAnchors, nl3<? super Float, Float> nl3Var, ll3<Float> ll3Var, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec, nl3<? super T, Boolean> nl3Var2) {
        AnchoredDraggableState<T> anchoredDraggableState = new AnchoredDraggableState<>(t, draggableAnchors, nl3Var2);
        anchoredDraggableState.setPositionalThreshold$foundation(nl3Var);
        anchoredDraggableState.setVelocityThreshold$foundation(ll3Var);
        anchoredDraggableState.setSnapAnimationSpec$foundation(animationSpec);
        anchoredDraggableState.setDecayAnimationSpec$foundation(decayAnimationSpec);
        return anchoredDraggableState;
    }

    public static /* synthetic */ AnchoredDraggableState AnchoredDraggableState$default(Object obj, nl3 nl3Var, ll3 ll3Var, AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, nl3 nl3Var2, int i, Object obj2) {
        if ((i & 32) != 0) {
            nl3Var2 = new we(0);
        }
        return AnchoredDraggableState(obj, nl3Var, ll3Var, animationSpec, decayAnimationSpec, nl3Var2);
    }

    @ul2
    public static final <T> Modifier anchoredDraggable(Modifier modifier, AnchoredDraggableState<T> anchoredDraggableState, boolean z, Orientation orientation, boolean z2, MutableInteractionSource mutableInteractionSource, OverscrollEffect overscrollEffect, boolean z3, FlingBehavior flingBehavior) {
        return modifier.then(new AnchoredDraggableElement(anchoredDraggableState, orientation, z2, Boolean.valueOf(z), mutableInteractionSource, Boolean.valueOf(z3), overscrollEffect, flingBehavior));
    }

    public static final <T> Modifier anchoredDraggable(Modifier modifier, AnchoredDraggableState<T> anchoredDraggableState, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior) {
        return modifier.then(new AnchoredDraggableElement(anchoredDraggableState, orientation, z, null, mutableInteractionSource, null, overscrollEffect, flingBehavior, 32, null));
    }

    @ul2
    public static final <T> Modifier anchoredDraggable(Modifier modifier, AnchoredDraggableState<T> anchoredDraggableState, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, OverscrollEffect overscrollEffect, boolean z2, FlingBehavior flingBehavior) {
        return modifier.then(new AnchoredDraggableElement(anchoredDraggableState, orientation, z, null, mutableInteractionSource, Boolean.valueOf(z2), overscrollEffect, flingBehavior));
    }

    public static /* synthetic */ Modifier anchoredDraggable$default(Modifier modifier, AnchoredDraggableState anchoredDraggableState, boolean z, Orientation orientation, boolean z2, MutableInteractionSource mutableInteractionSource, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = true;
        }
        return anchoredDraggable(modifier, anchoredDraggableState, z, orientation, z2, (i & 16) != 0 ? null : mutableInteractionSource, (i & 32) != 0 ? null : overscrollEffect, (i & 64) != 0 ? null : flingBehavior);
    }

    public static /* synthetic */ Modifier anchoredDraggable$default(Modifier modifier, AnchoredDraggableState anchoredDraggableState, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return anchoredDraggable(modifier, anchoredDraggableState, orientation, z, (i & 8) != 0 ? null : mutableInteractionSource, (i & 16) != 0 ? null : overscrollEffect, (i & 32) != 0 ? null : flingBehavior);
    }

    public static /* synthetic */ Modifier anchoredDraggable$default(Modifier modifier, AnchoredDraggableState anchoredDraggableState, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, OverscrollEffect overscrollEffect, boolean z2, FlingBehavior flingBehavior, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        boolean z3 = z;
        MutableInteractionSource mutableInteractionSource2 = (i & 8) != 0 ? null : mutableInteractionSource;
        OverscrollEffect overscrollEffect2 = (i & 16) != 0 ? null : overscrollEffect;
        if ((i & 32) != 0) {
            z2 = anchoredDraggableState.isAnimationRunning();
        }
        return anchoredDraggable(modifier, anchoredDraggableState, orientation, z3, mutableInteractionSource2, overscrollEffect2, z2, (i & 64) != 0 ? null : flingBehavior);
    }

    public static final <T> Object animateTo(AnchoredDraggableState<T> anchoredDraggableState, T t, AnimationSpec<Float> animationSpec, e02<? super j59> e02Var) {
        Object objAnchoredDrag$default = AnchoredDraggableState.anchoredDrag$default(anchoredDraggableState, t, null, new AnonymousClass4(anchoredDraggableState, animationSpec, null), e02Var, 2, null);
        return objAnchoredDrag$default == a32.COROUTINE_SUSPENDED ? objAnchoredDrag$default : j59.a;
    }
}
