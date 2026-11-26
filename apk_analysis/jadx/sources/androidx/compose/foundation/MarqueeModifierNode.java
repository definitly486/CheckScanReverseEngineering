package androidx.compose.foundation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.me0;
import defpackage.n1;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.px;
import defpackage.r57;
import defpackage.w65;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
final class MarqueeModifierNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, FocusEventModifierNode {
    private mb4 animationJob;
    private final MutableState animationMode$delegate;
    private final MutableIntState containerWidth$delegate;
    private final MutableIntState contentWidth$delegate;
    private int delayMillis;
    private final MutableState hasFocus$delegate;
    private int initialDelayMillis;
    private int iterations;
    private GraphicsLayer marqueeLayer;
    private final Animatable<Float, AnimationVector1D> offset;
    private final MutableState spacing$delegate;
    private final State spacingPx$delegate;
    private float velocity;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.MarqueeModifierNode$restartAnimation$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.MarqueeModifierNode$restartAnimation$1", f = "BasicMarquee.kt", l = {390, 391}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ mb4 $oldJob;
        int label;
        final /* synthetic */ MarqueeModifierNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(mb4 mb4Var, MarqueeModifierNode marqueeModifierNode, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$oldJob = mb4Var;
            this.this$0 = marqueeModifierNode;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$oldJob, this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        
            if (r5.runAnimation(r4) == r0) goto L17;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r4.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r5)
                goto L36
            L10:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                r4 = 0
                return r4
            L17:
                defpackage.r57.b(r5)
                goto L2b
            L1b:
                defpackage.r57.b(r5)
                mb4 r5 = r4.$oldJob
                if (r5 == 0) goto L2b
                r4.label = r3
                java.lang.Object r5 = r5.e0(r4)
                if (r5 != r0) goto L2b
                goto L35
            L2b:
                androidx.compose.foundation.MarqueeModifierNode r5 = r4.this$0
                r4.label = r2
                java.lang.Object r4 = androidx.compose.foundation.MarqueeModifierNode.access$runAnimation(r5, r4)
                if (r4 != r0) goto L36
            L35:
                return r0
            L36:
                j59 r4 = defpackage.j59.a
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.MarqueeModifierNode.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.MarqueeModifierNode$runAnimation$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.MarqueeModifierNode$runAnimation$2", f = "BasicMarquee.kt", l = {413}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.MarqueeModifierNode$runAnimation$2$2, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.foundation.MarqueeModifierNode$runAnimation$2$2", f = "BasicMarquee.kt", l = {427, 429, 433, 433}, m = "invokeSuspend", v = 1)
        public static final class C00242 extends pg8 implements bm3<Float, e02<? super j59>, Object> {
            /* synthetic */ Object L$0;
            Object L$1;
            int label;
            final /* synthetic */ MarqueeModifierNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00242(MarqueeModifierNode marqueeModifierNode, e02<? super C00242> e02Var) {
                super(2, e02Var);
                this.this$0 = marqueeModifierNode;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C00242 c00242 = new C00242(this.this$0, e02Var);
                c00242.L$0 = obj;
                return c00242;
            }

            @Override // defpackage.bm3
            public final Object invoke(Float f, e02<? super j59> e02Var) {
                return ((C00242) create(f, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Code restructure failed: missing block: B:30:0x00bd, code lost:
            
                if (r0.snapTo(r1, r20) == r8) goto L36;
             */
            @Override // defpackage.cd0
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r21) throws java.lang.Throwable {
                /*
                    Method dump skipped, instruction units count: 220
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.MarqueeModifierNode.AnonymousClass2.C00242.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Float invokeSuspend$lambda$0(MarqueeModifierNode marqueeModifierNode) {
            if (marqueeModifierNode.getContentWidth() <= marqueeModifierNode.getContainerWidth()) {
                return null;
            }
            if (!MarqueeAnimationMode.m1362equalsimpl0(marqueeModifierNode.m1373getAnimationModeZbEOnfQ(), MarqueeAnimationMode.Companion.m1367getWhileFocusedZbEOnfQ()) || marqueeModifierNode.getHasFocus()) {
                return Float.valueOf(marqueeModifierNode.getContentWidth() + marqueeModifierNode.getSpacingPx());
            }
            return null;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return MarqueeModifierNode.this.new AnonymousClass2(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final MarqueeModifierNode marqueeModifierNode = MarqueeModifierNode.this;
                hd3 hd3VarSnapshotFlow = SnapshotStateKt.snapshotFlow(new ll3() { // from class: androidx.compose.foundation.m
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return MarqueeModifierNode.AnonymousClass2.invokeSuspend$lambda$0(marqueeModifierNode);
                    }
                });
                C00242 c00242 = new C00242(MarqueeModifierNode.this, null);
                this.label = 1;
                if (px.c(hd3VarSnapshotFlow, c00242, this) == a32Var) {
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

    private MarqueeModifierNode(int i, int i2, int i3, int i4, final MarqueeSpacing marqueeSpacing, float f) {
        this.iterations = i;
        this.delayMillis = i3;
        this.initialDelayMillis = i4;
        this.velocity = f;
        this.contentWidth$delegate = SnapshotIntStateKt.mutableIntStateOf(0);
        this.containerWidth$delegate = SnapshotIntStateKt.mutableIntStateOf(0);
        this.hasFocus$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.spacing$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(marqueeSpacing, null, 2, null);
        this.animationMode$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(MarqueeAnimationMode.m1359boximpl(i2), null, 2, null);
        this.offset = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
        this.spacingPx$delegate = SnapshotStateKt.derivedStateOf(new ll3() { // from class: androidx.compose.foundation.l
            @Override // defpackage.ll3
            public final Object invoke() {
                return Integer.valueOf(MarqueeModifierNode.spacingPx_delegate$lambda$0(marqueeSpacing, this));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 draw$lambda$0$0(ContentDrawScope contentDrawScope, DrawScope drawScope) {
        contentDrawScope.drawContent();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getContainerWidth() {
        return this.containerWidth$delegate.getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getContentWidth() {
        return this.contentWidth$delegate.getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean getHasFocus() {
        return ((Boolean) this.hasFocus$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getSpacingPx() {
        return ((Number) this.spacingPx$delegate.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeWithLayer$default(placementScope, placeable, 0, 0, 0.0f, (nl3) null, 12, (Object) null);
        return j59.a;
    }

    private final void restartAnimation() {
        mb4 mb4Var = this.animationJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        if (isAttached()) {
            this.animationJob = av0.c(getCoroutineScope(), null, null, new AnonymousClass1(mb4Var, this, null), 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object runAnimation(e02<? super j59> e02Var) {
        Object objD;
        return (this.iterations > 0 && (objD = av0.d(FixedMotionDurationScale.INSTANCE, new AnonymousClass2(null), e02Var)) == a32.COROUTINE_SUSPENDED) ? objD : j59.a;
    }

    private final void setContainerWidth(int i) {
        this.containerWidth$delegate.setIntValue(i);
    }

    private final void setContentWidth(int i) {
        this.contentWidth$delegate.setIntValue(i);
    }

    private final void setHasFocus(boolean z) {
        this.hasFocus$delegate.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int spacingPx_delegate$lambda$0(MarqueeSpacing marqueeSpacing, MarqueeModifierNode marqueeModifierNode) {
        return marqueeSpacing.calculateSpacing(DelegatableNodeKt.requireDensity(marqueeModifierNode), marqueeModifierNode.getContentWidth(), marqueeModifierNode.getContainerWidth());
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(final ContentDrawScope contentDrawScope) {
        float contentWidth;
        float fFloatValue;
        int containerWidth;
        if (Dp.m9041compareTo0680j_4(this.velocity, Dp.m9042constructorimpl(0.0f)) > 0) {
            int i = WhenMappings.$EnumSwitchMapping$0[contentDrawScope.getLayoutDirection().ordinal()];
            if (i == 1) {
                contentWidth = this.offset.getValue().floatValue();
            } else if (i != 2) {
                me0.e();
                return;
            } else {
                fFloatValue = (-this.offset.getValue().floatValue()) + (getContentWidth() * 2) + getSpacingPx();
                containerWidth = getContainerWidth();
                contentWidth = fFloatValue - containerWidth;
            }
        } else {
            int i2 = WhenMappings.$EnumSwitchMapping$0[contentDrawScope.getLayoutDirection().ordinal()];
            if (i2 == 1) {
                contentWidth = (-this.offset.getValue().floatValue()) + getContentWidth() + getSpacingPx();
            } else if (i2 != 2) {
                me0.e();
                return;
            } else {
                fFloatValue = this.offset.getValue().floatValue() + getContentWidth();
                containerWidth = getContainerWidth();
                contentWidth = fFloatValue - containerWidth;
            }
        }
        boolean z = contentWidth < ((float) getContentWidth());
        boolean z2 = ((float) getContainerWidth()) + contentWidth > ((float) (getContentWidth() + getSpacingPx()));
        float contentWidth2 = getContentWidth() + getSpacingPx();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        GraphicsLayer graphicsLayer = this.marqueeLayer;
        if (graphicsLayer != null) {
            contentDrawScope.mo6807recordJVtK1S4(graphicsLayer, IntSize.m9208constructorimpl((((long) getContentWidth()) << 32) | (((long) w65.b(fIntBitsToFloat)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), new nl3() { // from class: androidx.compose.foundation.j
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return MarqueeModifierNode.draw$lambda$0$0(contentDrawScope, (DrawScope) obj);
                }
            });
        }
        float containerWidth2 = getContainerWidth();
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        int iM6221getIntersectrtfAjoo = ClipOp.Companion.m6221getIntersectrtfAjoo();
        DrawContext drawContext = contentDrawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6730clipRectN_I0leg(0.0f, 0.0f, containerWidth2, fIntBitsToFloat2, iM6221getIntersectrtfAjoo);
            float f = -contentWidth;
            contentDrawScope.getDrawContext().getTransform().translate(f, 0.0f);
            try {
                GraphicsLayer graphicsLayer2 = this.marqueeLayer;
                if (graphicsLayer2 != null) {
                    if (z) {
                        GraphicsLayerKt.drawLayer(contentDrawScope, graphicsLayer2);
                    }
                    if (z2) {
                        contentDrawScope.getDrawContext().getTransform().translate(contentWidth2, 0.0f);
                        try {
                            GraphicsLayerKt.drawLayer(contentDrawScope, graphicsLayer2);
                            contentDrawScope.getDrawContext().getTransform().translate(-contentWidth2, -0.0f);
                        } catch (Throwable th) {
                            contentDrawScope.getDrawContext().getTransform().translate(-contentWidth2, -0.0f);
                            throw th;
                        }
                    }
                } else {
                    if (z) {
                        contentDrawScope.drawContent();
                    }
                    if (z2) {
                        contentDrawScope.getDrawContext().getTransform().translate(contentWidth2, 0.0f);
                        try {
                            contentDrawScope.drawContent();
                            contentDrawScope.getDrawContext().getTransform().translate(-contentWidth2, -0.0f);
                        } catch (Throwable th2) {
                            contentDrawScope.getDrawContext().getTransform().translate(-contentWidth2, -0.0f);
                            throw th2;
                        }
                    }
                }
                contentDrawScope.getDrawContext().getTransform().translate(-f, -0.0f);
                n1.a(drawContext, jMo6727getSizeNHjbRc);
            } catch (Throwable th3) {
                contentDrawScope.getDrawContext().getTransform().translate(-f, -0.0f);
                throw th3;
            }
        } catch (Throwable th4) {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
            throw th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getAnimationMode-ZbEOnfQ, reason: not valid java name */
    public final int m1373getAnimationModeZbEOnfQ() {
        return ((MarqueeAnimationMode) this.animationMode$delegate.getValue()).m1365unboximpl();
    }

    public final MarqueeSpacing getSpacing() {
        return (MarqueeSpacing) this.spacing$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.maxIntrinsicHeight(Integer.MAX_VALUE);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, Integer.MAX_VALUE, 0, 0, 13, null));
        setContainerWidth(ConstraintsKt.m9012constrainWidthK40F9xA(j, placeableMo7702measureBRTryo0.getWidth()));
        setContentWidth(placeableMo7702measureBRTryo0.getWidth());
        return MeasureScope.layout$default(measureScope, getContainerWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.k
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return MarqueeModifierNode.measure_3p2s80s$lambda$0(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.minIntrinsicHeight(Integer.MAX_VALUE);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return 0;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        GraphicsLayer graphicsLayer = this.marqueeLayer;
        GraphicsContext graphicsContextRequireGraphicsContext = DelegatableNodeKt.requireGraphicsContext(this);
        if (graphicsLayer != null) {
            graphicsContextRequireGraphicsContext.releaseGraphicsLayer(graphicsLayer);
        }
        this.marqueeLayer = graphicsContextRequireGraphicsContext.createGraphicsLayer();
        restartAnimation();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        mb4 mb4Var = this.animationJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.animationJob = null;
        GraphicsLayer graphicsLayer = this.marqueeLayer;
        if (graphicsLayer != null) {
            DelegatableNodeKt.requireGraphicsContext(this).releaseGraphicsLayer(graphicsLayer);
            this.marqueeLayer = null;
        }
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public void onFocusEvent(FocusState focusState) {
        setHasFocus(focusState.getHasFocus());
    }

    /* JADX INFO: renamed from: setAnimationMode-97h66l8, reason: not valid java name */
    public final void m1374setAnimationMode97h66l8(int i) {
        this.animationMode$delegate.setValue(MarqueeAnimationMode.m1359boximpl(i));
    }

    public final void setSpacing(MarqueeSpacing marqueeSpacing) {
        this.spacing$delegate.setValue(marqueeSpacing);
    }

    /* JADX INFO: renamed from: update-lWfNwf4, reason: not valid java name */
    public final void m1375updatelWfNwf4(int i, int i2, int i3, int i4, MarqueeSpacing marqueeSpacing, float f) {
        setSpacing(marqueeSpacing);
        m1374setAnimationMode97h66l8(i2);
        if (this.iterations == i && this.delayMillis == i3 && this.initialDelayMillis == i4 && Dp.m9047equalsimpl0(this.velocity, f)) {
            return;
        }
        this.iterations = i;
        this.delayMillis = i3;
        this.initialDelayMillis = i4;
        this.velocity = f;
        restartAnimation();
    }

    public /* synthetic */ MarqueeModifierNode(int i, int i2, int i3, int i4, MarqueeSpacing marqueeSpacing, float f, jh2 jh2Var) {
        this(i, i2, i3, i4, marqueeSpacing, f);
    }
}
