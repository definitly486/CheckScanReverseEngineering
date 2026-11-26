package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
final class AnchoredDraggableNode<T> extends DragGestureNode {
    private Density density;
    private FlingBehavior flingBehavior;
    private Orientation orientation;
    private OverscrollEffect overscrollEffect;
    public FlingBehavior resolvedFlingBehavior;
    private Boolean reverseDirection;
    private Boolean startDragImmediately;
    private AnchoredDraggableState<T> state;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableNode$drag$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableNode$drag$2", f = "AnchoredDraggable.kt", l = {412}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements dm3<AnchoredDragScope, DraggableAnchors<T>, e02<? super j59>, Object> {
        final /* synthetic */ bm3<nl3<? super DragEvent.DragDelta, j59>, e02<? super j59>, Object> $forEachDelta;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ AnchoredDraggableNode<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(bm3<? super nl3<? super DragEvent.DragDelta, j59>, ? super e02<? super j59>, ? extends Object> bm3Var, AnchoredDraggableNode<T> anchoredDraggableNode, e02<? super AnonymousClass2> e02Var) {
            super(3, e02Var);
            this.$forEachDelta = bm3Var;
            this.this$0 = anchoredDraggableNode;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(final AnchoredDraggableNode anchoredDraggableNode, final AnchoredDragScope anchoredDragScope, DragEvent.DragDelta dragDelta) {
            float fM1449toFloatk4lQ0M = anchoredDraggableNode.m1449toFloatk4lQ0M(anchoredDraggableNode.m1447reverseIfNeededMKHz9U(dragDelta.m1486getDeltaF1C5BW0()));
            if (anchoredDraggableNode.overscrollEffect == null) {
                AnchoredDragScope.dragTo$default(anchoredDragScope, anchoredDraggableNode.state.newOffsetForDelta$foundation(fM1449toFloatk4lQ0M), 0.0f, 2, null);
            } else {
                OverscrollEffect overscrollEffect = anchoredDraggableNode.overscrollEffect;
                overscrollEffect.getClass();
                Offset.m5976boximpl(overscrollEffect.mo1268applyToScrollRhakbz0(anchoredDraggableNode.m1450toOffsettuRUvjQ(fM1449toFloatk4lQ0M), NestedScrollSource.Companion.m7438getUserInputWNlRxjI(), new nl3() { // from class: androidx.compose.foundation.gestures.b
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return AnchoredDraggableNode.AnonymousClass2.invokeSuspend$lambda$0$0(anchoredDraggableNode, anchoredDragScope, (Offset) obj);
                    }
                }));
            }
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Offset invokeSuspend$lambda$0$0(AnchoredDraggableNode anchoredDraggableNode, AnchoredDragScope anchoredDragScope, Offset offset) {
            float fNewOffsetForDelta$foundation = anchoredDraggableNode.state.newOffsetForDelta$foundation(anchoredDraggableNode.m1449toFloatk4lQ0M(offset.m5997unboximpl()));
            long jM1450toOffsettuRUvjQ = anchoredDraggableNode.m1450toOffsettuRUvjQ(fNewOffsetForDelta$foundation - anchoredDraggableNode.state.requireOffset());
            AnchoredDragScope.dragTo$default(anchoredDragScope, fNewOffsetForDelta$foundation, 0.0f, 2, null);
            return Offset.m5976boximpl(jM1450toOffsettuRUvjQ);
        }

        @Override // defpackage.dm3
        public final Object invoke(AnchoredDragScope anchoredDragScope, DraggableAnchors<T> draggableAnchors, e02<? super j59> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$forEachDelta, this.this$0, e02Var);
            anonymousClass2.L$0 = anchoredDragScope;
            return anonymousClass2.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final AnchoredDragScope anchoredDragScope = (AnchoredDragScope) this.L$0;
                bm3<nl3<? super DragEvent.DragDelta, j59>, e02<? super j59>, Object> bm3Var = this.$forEachDelta;
                final AnchoredDraggableNode<T> anchoredDraggableNode = this.this$0;
                nl3<? super DragEvent.DragDelta, j59> nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.c
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return AnchoredDraggableNode.AnonymousClass2.invokeSuspend$lambda$0(anchoredDraggableNode, anchoredDragScope, (DragEvent.DragDelta) obj2);
                    }
                };
                this.label = 1;
                if (bm3Var.invoke(nl3Var, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableNode$fling$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableNode", f = "AnchoredDraggable.kt", l = {459, 462}, m = "fling", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ AnchoredDraggableNode<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AnchoredDraggableNode<T> anchoredDraggableNode, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = anchoredDraggableNode;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.fling(0.0f, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableNode$fling$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableNode$fling$2", f = "AnchoredDraggable.kt", l = {473}, m = "invokeSuspend", v = 1)
    public static final class C04812 extends pg8 implements dm3<AnchoredDragScope, DraggableAnchors<T>, e02<? super j59>, Object> {
        final /* synthetic */ o07 $leftoverVelocity;
        final /* synthetic */ float $velocity;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ AnchoredDraggableNode<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04812(AnchoredDraggableNode<T> anchoredDraggableNode, o07 o07Var, float f, e02<? super C04812> e02Var) {
            super(3, e02Var);
            this.this$0 = anchoredDraggableNode;
            this.$leftoverVelocity = o07Var;
            this.$velocity = f;
        }

        @Override // defpackage.dm3
        public final Object invoke(AnchoredDragScope anchoredDragScope, DraggableAnchors<T> draggableAnchors, e02<? super j59> e02Var) {
            C04812 c04812 = new C04812(this.this$0, this.$leftoverVelocity, this.$velocity, e02Var);
            c04812.L$0 = anchoredDragScope;
            return c04812.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            o07 o07Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final AnchoredDragScope anchoredDragScope = (AnchoredDragScope) this.L$0;
                final AnchoredDraggableNode<T> anchoredDraggableNode = this.this$0;
                ScrollScope scrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.AnchoredDraggableNode$fling$2$scrollScope$1
                    @Override // androidx.compose.foundation.gestures.ScrollScope
                    public float scrollBy(float f) {
                        float fNewOffsetForDelta$foundation = ((AnchoredDraggableNode) anchoredDraggableNode).state.newOffsetForDelta$foundation(f);
                        float offset = fNewOffsetForDelta$foundation - ((AnchoredDraggableNode) anchoredDraggableNode).state.getOffset();
                        AnchoredDragScope.dragTo$default(anchoredDragScope, fNewOffsetForDelta$foundation, 0.0f, 2, null);
                        return offset;
                    }
                };
                FlingBehavior resolvedFlingBehavior = this.this$0.getResolvedFlingBehavior();
                o07 o07Var2 = this.$leftoverVelocity;
                float f = this.$velocity;
                this.L$0 = o07Var2;
                this.label = 1;
                obj = resolvedFlingBehavior.performFling(scrollScope, f, this);
                if (obj == a32Var) {
                    return a32Var;
                }
                o07Var = o07Var2;
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                o07Var = (o07) this.L$0;
                r57.b(obj);
            }
            o07Var.b = ((Number) obj).floatValue();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableNode$onDragStopped$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableNode$onDragStopped$1", f = "AnchoredDraggable.kt", l = {438, 440}, m = "invokeSuspend", v = 1)
    public static final class C04821 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ DragEvent.DragStopped $event;
        int label;
        final /* synthetic */ AnchoredDraggableNode<T> this$0;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableNode$onDragStopped$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.foundation.gestures.AnchoredDraggableNode$onDragStopped$1$1", f = "AnchoredDraggable.kt", l = {442}, m = "invokeSuspend", v = 1)
        public static final class C00291 extends pg8 implements bm3<Velocity, e02<? super Velocity>, Object> {
            /* synthetic */ long J$0;
            int label;
            final /* synthetic */ AnchoredDraggableNode<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00291(AnchoredDraggableNode<T> anchoredDraggableNode, e02<? super C00291> e02Var) {
                super(2, e02Var);
                this.this$0 = anchoredDraggableNode;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C00291 c00291 = new C00291(this.this$0, e02Var);
                c00291.J$0 = ((Velocity) obj).m9289unboximpl();
                return c00291;
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ Object invoke(Velocity velocity, e02<? super Velocity> e02Var) {
                return m1453invokesFctU(velocity.m9289unboximpl(), e02Var);
            }

            /* JADX INFO: renamed from: invoke-sF-c-tU, reason: not valid java name */
            public final Object m1453invokesFctU(long j, e02<? super Velocity> e02Var) {
                return ((C00291) create(Velocity.m9271boximpl(j), e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                long jM1451toVelocityadjELrA;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    long j = this.J$0;
                    AnchoredDraggableNode<T> anchoredDraggableNode = this.this$0;
                    float fM1448toFloatTH1AsA0 = anchoredDraggableNode.m1448toFloatTH1AsA0(j);
                    this.J$0 = j;
                    this.label = 1;
                    obj = anchoredDraggableNode.fling(fM1448toFloatTH1AsA0, this);
                    if (obj == a32Var) {
                        return a32Var;
                    }
                    jM1451toVelocityadjELrA = j;
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    jM1451toVelocityadjELrA = this.J$0;
                    r57.b(obj);
                }
                float fFloatValue = ((Number) obj).floatValue();
                float fRequireOffset = ((AnchoredDraggableNode) this.this$0).state.requireOffset();
                float fMinPosition = ((AnchoredDraggableNode) this.this$0).state.getAnchors().minPosition();
                if (fRequireOffset >= ((AnchoredDraggableNode) this.this$0).state.getAnchors().maxPosition() || fRequireOffset <= fMinPosition) {
                    jM1451toVelocityadjELrA = this.this$0.m1451toVelocityadjELrA(fFloatValue);
                }
                return Velocity.m9271boximpl(jM1451toVelocityadjELrA);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04821(AnchoredDraggableNode<T> anchoredDraggableNode, DragEvent.DragStopped dragStopped, e02<? super C04821> e02Var) {
            super(2, e02Var);
            this.this$0 = anchoredDraggableNode;
            this.$event = dragStopped;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C04821(this.this$0, this.$event, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04821) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
        
            if (r5.fling(r8, r7) == r0) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
        
            if (r1.mo1267applyToFlingBMRW4eQ(r4, r8, r7) == r0) goto L17;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r7.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L1b
                if (r1 == r4) goto L17
                if (r1 != r3) goto L11
                defpackage.r57.b(r8)
                goto L5e
            L11:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r7)
                return r2
            L17:
                defpackage.r57.b(r8)
                goto L60
            L1b:
                defpackage.r57.b(r8)
                androidx.compose.foundation.gestures.AnchoredDraggableNode<T> r8 = r7.this$0
                androidx.compose.foundation.gestures.DragEvent$DragStopped r1 = r7.$event
                long r5 = r1.m1488getVelocity9UxMQ8M()
                long r5 = androidx.compose.foundation.gestures.AnchoredDraggableNode.m1440access$reverseIfNeededAH228Gc(r8, r5)
                float r8 = androidx.compose.foundation.gestures.AnchoredDraggableNode.m1442access$toFloatTH1AsA0(r8, r5)
                androidx.compose.foundation.gestures.AnchoredDraggableNode<T> r1 = r7.this$0
                androidx.compose.foundation.OverscrollEffect r1 = androidx.compose.foundation.gestures.AnchoredDraggableNode.access$getOverscrollEffect$p(r1)
                androidx.compose.foundation.gestures.AnchoredDraggableNode<T> r5 = r7.this$0
                if (r1 != 0) goto L41
                r7.label = r4
                java.lang.Object r7 = androidx.compose.foundation.gestures.AnchoredDraggableNode.access$fling(r5, r8, r7)
                if (r7 != r0) goto L60
                goto L5d
            L41:
                androidx.compose.foundation.OverscrollEffect r1 = androidx.compose.foundation.gestures.AnchoredDraggableNode.access$getOverscrollEffect$p(r5)
                r1.getClass()
                androidx.compose.foundation.gestures.AnchoredDraggableNode<T> r4 = r7.this$0
                long r4 = androidx.compose.foundation.gestures.AnchoredDraggableNode.m1445access$toVelocityadjELrA(r4, r8)
                androidx.compose.foundation.gestures.AnchoredDraggableNode$onDragStopped$1$1 r8 = new androidx.compose.foundation.gestures.AnchoredDraggableNode$onDragStopped$1$1
                androidx.compose.foundation.gestures.AnchoredDraggableNode<T> r6 = r7.this$0
                r8.<init>(r6, r2)
                r7.label = r3
                java.lang.Object r7 = r1.mo1267applyToFlingBMRW4eQ(r4, r8, r7)
                if (r7 != r0) goto L5e
            L5d:
                return r0
            L5e:
                j59 r7 = defpackage.j59.a
            L60:
                j59 r7 = defpackage.j59.a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.AnchoredDraggableNode.C04821.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public AnchoredDraggableNode(AnchoredDraggableState<T> anchoredDraggableState, Orientation orientation, boolean z, Boolean bool, MutableInteractionSource mutableInteractionSource, OverscrollEffect overscrollEffect, Boolean bool2, FlingBehavior flingBehavior) {
        super(AnchoredDraggableKt.AlwaysDrag, z, mutableInteractionSource, orientation);
        this.state = anchoredDraggableState;
        this.orientation = orientation;
        this.reverseDirection = bool;
        this.overscrollEffect = overscrollEffect;
        this.startDragImmediately = bool2;
        this.flingBehavior = flingBehavior;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object fling(float f, e02<? super Float> e02Var) {
        AnonymousClass1 anonymousClass1;
        o07 o07Var;
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
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj = anonymousClass2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass2.label;
        if (i2 == 0) {
            r57.b(obj);
            if (this.state.getUsePreModifierChangeBehavior$foundation()) {
                AnchoredDraggableState<T> anchoredDraggableState = this.state;
                anonymousClass2.label = 1;
                Object obj2 = anchoredDraggableState.settle(f, anonymousClass2);
                if (obj2 != a32Var) {
                    return obj2;
                }
            } else {
                o07 o07Var2 = new o07();
                o07Var2.b = f;
                AnchoredDraggableState<T> anchoredDraggableState2 = this.state;
                C04812 c04812 = new C04812(this, o07Var2, f, null);
                anonymousClass2.L$0 = o07Var2;
                anonymousClass2.label = 2;
                if (AnchoredDraggableState.anchoredDrag$default(anchoredDraggableState2, null, c04812, anonymousClass2, 1, null) != a32Var) {
                    o07Var = o07Var2;
                }
            }
            return a32Var;
        }
        if (i2 == 1) {
            r57.b(obj);
            return obj;
        }
        if (i2 != 2) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        o07Var = (o07) anonymousClass2.L$0;
        r57.b(obj);
        return new Float(o07Var.b);
    }

    private final boolean isReverseDirection() {
        Boolean bool = this.reverseDirection;
        if (bool == null) {
            return DelegatableNodeKt.requireLayoutDirection(this) == LayoutDirection.Rtl && this.orientation == Orientation.Horizontal;
        }
        bool.getClass();
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: reverseIfNeeded-AH228Gc, reason: not valid java name */
    public final long m1446reverseIfNeededAH228Gc(long j) {
        return Velocity.m9286timesadjELrA(j, isReverseDirection() ? -1.0f : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: reverseIfNeeded-MK-Hz9U, reason: not valid java name */
    public final long m1447reverseIfNeededMKHz9U(long j) {
        return Offset.m5994timestuRUvjQ(j, isReverseDirection() ? -1.0f : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toFloat-TH1AsA0, reason: not valid java name */
    public final float m1448toFloatTH1AsA0(long j) {
        return this.orientation == Orientation.Vertical ? Velocity.m9281getYimpl(j) : Velocity.m9280getXimpl(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toFloat-k-4lQ0M, reason: not valid java name */
    public final float m1449toFloatk4lQ0M(long j) {
        return Float.intBitsToFloat((int) (this.orientation == Orientation.Vertical ? j & MuxerUtil.UNSIGNED_INT_MAX_VALUE : j >> 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toOffset-tuRUvjQ, reason: not valid java name */
    public final long m1450toOffsettuRUvjQ(float f) {
        Orientation orientation = this.orientation;
        float f2 = orientation == Orientation.Horizontal ? f : 0.0f;
        if (orientation != Orientation.Vertical) {
            f = 0.0f;
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(f2)) << 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toVelocity-adjELrA, reason: not valid java name */
    public final long m1451toVelocityadjELrA(float f) {
        Orientation orientation = this.orientation;
        float f2 = orientation == Orientation.Horizontal ? f : 0.0f;
        if (orientation != Orientation.Vertical) {
            f = 0.0f;
        }
        return VelocityKt.Velocity(f2, f);
    }

    private final void updateDensity() {
        Density densityRequireDensity = DelegatableNodeKt.requireDensity(this);
        Density density = this.density;
        if (density == null || !aa4.e(density, densityRequireDensity)) {
            this.density = densityRequireDensity;
            updateFlingBehavior(this.flingBehavior);
        }
    }

    private final void updateFlingBehavior(FlingBehavior flingBehavior) {
        if (flingBehavior == null) {
            AnchoredDraggableDefaults anchoredDraggableDefaults = AnchoredDraggableDefaults.INSTANCE;
            AnimationSpec<Float> snapAnimationSpec = anchoredDraggableDefaults.getSnapAnimationSpec();
            nl3<Float, Float> positionalThreshold = anchoredDraggableDefaults.getPositionalThreshold();
            Density densityRequireDensity = DelegatableNodeKt.requireDensity(this);
            this.density = densityRequireDensity;
            flingBehavior = AnchoredDraggableKt.anchoredDraggableFlingBehavior(this.state, densityRequireDensity, positionalThreshold, snapAnimationSpec);
        }
        setResolvedFlingBehavior(flingBehavior);
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public Object drag(bm3<? super nl3<? super DragEvent.DragDelta, j59>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objAnchoredDrag$default = AnchoredDraggableState.anchoredDrag$default(this.state, null, new AnonymousClass2(bm3Var, this, null), e02Var, 1, null);
        return objAnchoredDrag$default == a32.COROUTINE_SUSPENDED ? objAnchoredDrag$default : j59.a;
    }

    public final FlingBehavior getResolvedFlingBehavior() {
        FlingBehavior flingBehavior = this.resolvedFlingBehavior;
        if (flingBehavior != null) {
            return flingBehavior;
        }
        aa4.j("resolvedFlingBehavior");
        throw null;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        updateFlingBehavior(this.flingBehavior);
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public void onDensityChange() {
        onCancelPointerInput();
        if (isAttached()) {
            updateDensity();
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* JADX INFO: renamed from: onDragStarted-k-4lQ0M, reason: not valid java name */
    public void mo1452onDragStartedk4lQ0M(long j) {
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public void onDragStopped(DragEvent.DragStopped dragStopped) {
        if (isAttached()) {
            av0.c(getCoroutineScope(), null, null, new C04821(this, dragStopped, null), 3);
        }
    }

    public final void setResolvedFlingBehavior(FlingBehavior flingBehavior) {
        this.resolvedFlingBehavior = flingBehavior;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public boolean startDragImmediately() {
        Boolean bool = this.startDragImmediately;
        return bool != null ? bool.booleanValue() : this.state.isAnimationRunning();
    }

    public final void update(AnchoredDraggableState<T> anchoredDraggableState, Orientation orientation, boolean z, Boolean bool, MutableInteractionSource mutableInteractionSource, OverscrollEffect overscrollEffect, Boolean bool2, FlingBehavior flingBehavior) {
        boolean z2;
        boolean z3;
        this.flingBehavior = flingBehavior;
        if (aa4.e(this.state, anchoredDraggableState)) {
            z2 = false;
        } else {
            this.state = anchoredDraggableState;
            updateFlingBehavior(flingBehavior);
            z2 = true;
        }
        if (this.orientation != orientation) {
            this.orientation = orientation;
            z2 = true;
        }
        if (aa4.e(this.reverseDirection, bool)) {
            z3 = z2;
        } else {
            this.reverseDirection = bool;
            z3 = true;
        }
        this.startDragImmediately = bool2;
        this.overscrollEffect = overscrollEffect;
        DragGestureNode.update$default(this, null, z, mutableInteractionSource, orientation, z3, 1, null);
    }
}
