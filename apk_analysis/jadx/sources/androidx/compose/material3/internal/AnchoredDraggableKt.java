package androidx.compose.material3.internal;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.fm3;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.mx2;
import defpackage.nl3;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes2.dex */
public final class AnchoredDraggableKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableKt$animateTo$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableKt$animateTo$2", f = "AnchoredDraggable.kt", l = {682}, m = "invokeSuspend")
    public static final class AnonymousClass2<T> extends pg8 implements fm3<AnchoredDragScope, DraggableAnchors<T>, T, e02<? super j59>, Object> {
        final /* synthetic */ AnchoredDraggableState<T> $this_animateTo;
        final /* synthetic */ float $velocity;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(AnchoredDraggableState<T> anchoredDraggableState, float f, e02<? super AnonymousClass2> e02Var) {
            super(4, e02Var);
            this.$this_animateTo = anchoredDraggableState;
            this.$velocity = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(AnchoredDragScope anchoredDragScope, o07 o07Var, float f, float f2) {
            anchoredDragScope.dragTo(f, f2);
            o07Var.b = f;
            return j59.a;
        }

        @Override // defpackage.fm3
        public final Object invoke(AnchoredDragScope anchoredDragScope, DraggableAnchors<T> draggableAnchors, T t, e02<? super j59> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_animateTo, this.$velocity, e02Var);
            anonymousClass2.L$0 = anchoredDragScope;
            anonymousClass2.L$1 = draggableAnchors;
            anonymousClass2.L$2 = t;
            return anonymousClass2.invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final AnchoredDragScope anchoredDragScope = (AnchoredDragScope) this.L$0;
                float fPositionOf = ((DraggableAnchors) this.L$1).positionOf(this.L$2);
                if (!Float.isNaN(fPositionOf)) {
                    final o07 o07Var = new o07();
                    float offset = Float.isNaN(this.$this_animateTo.getOffset()) ? 0.0f : this.$this_animateTo.getOffset();
                    o07Var.b = offset;
                    float f = this.$velocity;
                    AnimationSpec<Float> animationSpecInvoke = this.$this_animateTo.getAnimationSpec().invoke();
                    bm3 bm3Var = new bm3() { // from class: androidx.compose.material3.internal.c
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            return AnchoredDraggableKt.AnonymousClass2.invokeSuspend$lambda$0(anchoredDragScope, o07Var, ((Float) obj2).floatValue(), ((Float) obj3).floatValue());
                        }
                    };
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 1;
                    if (SuspendAnimationKt.animate(offset, fPositionOf, f, animationSpecInvoke, bm3Var, this) == a32Var) {
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
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableKt$restartable$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableKt", f = "AnchoredDraggable.kt", l = {TypedValues.TransitionType.TYPE_STAGGERED}, m = "restartable")
    public static final class C06081<I> extends f02 {
        int label;
        /* synthetic */ Object result;

        public C06081(e02<? super C06081> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AnchoredDraggableKt.restartable(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableKt$restartable$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableKt$restartable$2", f = "AnchoredDraggable.kt", l = {708}, m = "invokeSuspend")
    public static final class C06092 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ bm3<I, e02<? super j59>, Object> $block;
        final /* synthetic */ ll3<I> $inputs;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableKt$restartable$2$1, reason: invalid class name */
        public static final class AnonymousClass1<T> implements id3 {
            final /* synthetic */ y22 $$this$coroutineScope;
            final /* synthetic */ bm3<I, e02<? super j59>, Object> $block;
            final /* synthetic */ r07<mb4> $previousDrag;

            /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableKt$restartable$2$1$2, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableKt$restartable$2$1$2", f = "AnchoredDraggable.kt", l = {715}, m = "invokeSuspend")
            public static final class C00722 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ y22 $$this$coroutineScope;
                final /* synthetic */ bm3<I, e02<? super j59>, Object> $block;
                final /* synthetic */ I $latestInputs;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C00722(bm3<? super I, ? super e02<? super j59>, ? extends Object> bm3Var, I i, y22 y22Var, e02<? super C00722> e02Var) {
                    super(2, e02Var);
                    this.$block = bm3Var;
                    this.$latestInputs = i;
                    this.$$this$coroutineScope = y22Var;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    return new C00722(this.$block, this.$latestInputs, this.$$this$coroutineScope, e02Var);
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((C00722) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
                r07Var.b = (T) av0.c(y22Var, null, c32.UNDISPATCHED, new C00722(this.$block, obj, y22Var, null), 1);
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06092(ll3<? extends I> ll3Var, bm3<? super I, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super C06092> e02Var) {
            super(2, e02Var);
            this.$inputs = ll3Var;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C06092 c06092 = new C06092(this.$inputs, this.$block, e02Var);
            c06092.L$0 = obj;
            return c06092;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C06092) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
    /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableKt$snapTo$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableKt$snapTo$2", f = "AnchoredDraggable.kt", l = {}, m = "invokeSuspend")
    public static final class C06102<T> extends pg8 implements fm3<AnchoredDragScope, DraggableAnchors<T>, T, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        int label;

        public C06102(e02<? super C06102> e02Var) {
            super(4, e02Var);
        }

        @Override // defpackage.fm3
        public final Object invoke(AnchoredDragScope anchoredDragScope, DraggableAnchors<T> draggableAnchors, T t, e02<? super j59> e02Var) {
            C06102 c06102 = new C06102(e02Var);
            c06102.L$0 = anchoredDragScope;
            c06102.L$1 = draggableAnchors;
            c06102.L$2 = t;
            return c06102.invokeSuspend(j59.a);
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

    public static final <T> DraggableAnchors<T> DraggableAnchors(nl3<? super DraggableAnchorsConfig<T>, j59> nl3Var) {
        DraggableAnchorsConfig draggableAnchorsConfig = new DraggableAnchorsConfig();
        nl3Var.invoke(draggableAnchorsConfig);
        return new MapDraggableAnchors(draggableAnchorsConfig.getAnchors$material3());
    }

    public static final <T> Modifier anchoredDraggable(Modifier modifier, AnchoredDraggableState<T> anchoredDraggableState, Orientation orientation, boolean z, boolean z2, MutableInteractionSource mutableInteractionSource) {
        return DraggableKt.draggable$default(modifier, anchoredDraggableState.getDraggableState$material3(), orientation, z, mutableInteractionSource, anchoredDraggableState.isAnimationRunning(), null, new AnonymousClass1(anchoredDraggableState, null), z2, 32, null);
    }

    public static /* synthetic */ Modifier anchoredDraggable$default(Modifier modifier, AnchoredDraggableState anchoredDraggableState, Orientation orientation, boolean z, boolean z2, MutableInteractionSource mutableInteractionSource, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        boolean z3 = z;
        if ((i & 8) != 0) {
            z2 = false;
        }
        boolean z4 = z2;
        if ((i & 16) != 0) {
            mutableInteractionSource = null;
        }
        return anchoredDraggable(modifier, anchoredDraggableState, orientation, z3, z4, mutableInteractionSource);
    }

    public static final <T> Object animateTo(AnchoredDraggableState<T> anchoredDraggableState, T t, float f, e02<? super j59> e02Var) {
        Object objAnchoredDrag$default = AnchoredDraggableState.anchoredDrag$default(anchoredDraggableState, t, null, new AnonymousClass2(anchoredDraggableState, f, null), e02Var, 2, null);
        return objAnchoredDrag$default == a32.COROUTINE_SUSPENDED ? objAnchoredDrag$default : j59.a;
    }

    public static /* synthetic */ Object animateTo$default(AnchoredDraggableState anchoredDraggableState, Object obj, float f, e02 e02Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            f = anchoredDraggableState.getLastVelocity();
        }
        return animateTo(anchoredDraggableState, obj, f, e02Var);
    }

    public static final <T> Modifier draggableAnchors(Modifier modifier, AnchoredDraggableState<T> anchoredDraggableState, Orientation orientation, bm3<? super IntSize, ? super Constraints, ? extends b36<? extends DraggableAnchors<T>, ? extends T>> bm3Var) {
        return modifier.then(new DraggableAnchorsElement(anchoredDraggableState, bm3Var, orientation));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> MapDraggableAnchors<T> emptyDraggableAnchors() {
        return new MapDraggableAnchors<>(mx2.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <I> Object restartable(ll3<? extends I> ll3Var, bm3<? super I, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        C06081 c06081;
        if (e02Var instanceof C06081) {
            c06081 = (C06081) e02Var;
            int i = c06081.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06081.label = i - Integer.MIN_VALUE;
            } else {
                c06081 = new C06081(e02Var);
            }
        } else {
            c06081 = new C06081(e02Var);
        }
        Object obj = c06081.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c06081.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                C06092 c06092 = new C06092(ll3Var, bm3Var, null);
                c06081.label = 1;
                if (z22.c(c06092, c06081) == a32Var) {
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
        Object objAnchoredDrag$default = AnchoredDraggableState.anchoredDrag$default(anchoredDraggableState, t, null, new C06102(null), e02Var, 2, null);
        return objAnchoredDrag$default == a32.COROUTINE_SUSPENDED ? objAnchoredDrag$default : j59.a;
    }

    /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableKt$anchoredDraggable$1, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableKt$anchoredDraggable$1", f = "AnchoredDraggable.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements dm3<y22, Float, e02<? super j59>, Object> {
        final /* synthetic */ AnchoredDraggableState<T> $state;
        /* synthetic */ float F$0;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material3.internal.AnchoredDraggableKt$anchoredDraggable$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.material3.internal.AnchoredDraggableKt$anchoredDraggable$1$1", f = "AnchoredDraggable.kt", l = {177}, m = "invokeSuspend")
        public static final class C00711 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ AnchoredDraggableState<T> $state;
            final /* synthetic */ float $velocity;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00711(AnchoredDraggableState<T> anchoredDraggableState, float f, e02<? super C00711> e02Var) {
                super(2, e02Var);
                this.$state = anchoredDraggableState;
                this.$velocity = f;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00711(this.$state, this.$velocity, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C00711) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
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
                    AnchoredDraggableState<T> anchoredDraggableState = this.$state;
                    float f = this.$velocity;
                    this.label = 1;
                    if (anchoredDraggableState.settle(f, this) == a32Var) {
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
        public AnonymousClass1(AnchoredDraggableState<T> anchoredDraggableState, e02<? super AnonymousClass1> e02Var) {
            super(3, e02Var);
            this.$state = anchoredDraggableState;
        }

        public final Object invoke(y22 y22Var, float f, e02<? super j59> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$state, e02Var);
            anonymousClass1.L$0 = y22Var;
            anonymousClass1.F$0 = f;
            return anonymousClass1.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            av0.c((y22) this.L$0, null, null, new C00711(this.$state, this.F$0, null), 3);
            return j59.a;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, Float f, e02<? super j59> e02Var) {
            return invoke(y22Var, f.floatValue(), e02Var);
        }
    }
}
