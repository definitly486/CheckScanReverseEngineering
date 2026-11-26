package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequester;
import androidx.compose.foundation.text.input.TextFieldCharSequence;
import androidx.compose.foundation.text.input.TextHighlightType;
import androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode;
import androidx.compose.foundation.text.input.internal.selection.AndroidTextFieldMagnifier_androidKt;
import androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNode;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextPainter;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.h8;
import defpackage.hd3;
import defpackage.j59;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.lq;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.p07;
import defpackage.pg8;
import defpackage.px;
import defpackage.r57;
import defpackage.y22;
import defpackage.y74;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldCoreModifierNode extends DelegatingNode implements LayoutModifierNode, DrawModifierNode, CompositionLocalConsumerModifierNode, GlobalPositionAwareModifierNode, SemanticsModifierNode {
    public static final int $stable = 8;
    private mb4 changeObserverJob;
    private CursorAnimationState cursorAnimation;
    private Brush cursorBrush;
    private boolean isDragHovered;
    private boolean isFocused;
    private Orientation orientation;
    private PlatformSelectionBehaviors platformSelectionBehaviors;
    private int previousContainerSize;
    private Rect previousCursorRect = new Rect(-1.0f, -1.0f, -1.0f, -1.0f);
    private TextRange previousSelection;
    private int previousTextLayoutSize;
    private ScrollState scrollState;
    private final TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode;
    private final TextFieldMagnifierNode textFieldMagnifierNode;
    private TextFieldSelectionState textFieldSelectionState;
    private TransformedTextFieldState textFieldState;
    private TextLayoutState textLayoutState;
    private ToolbarRequester toolbarRequester;
    private boolean writeable;

    public TextFieldCoreModifierNode(boolean z, boolean z2, TextLayoutState textLayoutState, TransformedTextFieldState transformedTextFieldState, TextFieldSelectionState textFieldSelectionState, Brush brush, boolean z3, ScrollState scrollState, Orientation orientation, ToolbarRequester toolbarRequester, PlatformSelectionBehaviors platformSelectionBehaviors) {
        this.isFocused = z;
        this.isDragHovered = z2;
        this.textLayoutState = textLayoutState;
        this.textFieldState = transformedTextFieldState;
        this.textFieldSelectionState = textFieldSelectionState;
        this.cursorBrush = brush;
        this.writeable = z3;
        this.scrollState = scrollState;
        this.orientation = orientation;
        this.toolbarRequester = toolbarRequester;
        this.platformSelectionBehaviors = platformSelectionBehaviors;
        this.textFieldMagnifierNode = (TextFieldMagnifierNode) delegate(AndroidTextFieldMagnifier_androidKt.textFieldMagnifierNode(this.textFieldState, this.textFieldSelectionState, this.textLayoutState, this.isFocused || this.isDragHovered));
        this.textContextMenuToolbarHandlerNode = (TextContextMenuToolbarHandlerNode) delegate(new TextContextMenuToolbarHandlerNode(this.toolbarRequester, new TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$1(this, null), new TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$2(this, null), new lq(this, 2)));
    }

    /* JADX INFO: renamed from: calculateOffsetToFollow-8ffj60Q, reason: not valid java name */
    private final int m2797calculateOffsetToFollow8ffj60Q(long j, int i, int i2) {
        TextRange textRange = this.previousSelection;
        if (textRange == null || TextRange.m8486getEndimpl(j) != TextRange.m8486getEndimpl(textRange.m8495unboximpl())) {
            return TextRange.m8486getEndimpl(j);
        }
        TextRange textRange2 = this.previousSelection;
        if (textRange2 == null || TextRange.m8491getStartimpl(j) != TextRange.m8491getStartimpl(textRange2.m8495unboximpl())) {
            return TextRange.m8491getStartimpl(j);
        }
        if (i2 == this.previousTextLayoutSize && i == this.previousContainerSize) {
            return -1;
        }
        return TextRange.m8491getStartimpl(j);
    }

    private final void drawHighlight(DrawScope drawScope, b36<TextHighlightType, TextRange> b36Var, TextLayoutResult textLayoutResult) {
        int iM2677unboximpl = b36Var.b.m2677unboximpl();
        long jM8495unboximpl = b36Var.c.m8495unboximpl();
        if (TextRange.m8485getCollapsedimpl(jM8495unboximpl)) {
            return;
        }
        Path pathForRange = textLayoutResult.getPathForRange(TextRange.m8489getMinimpl(jM8495unboximpl), TextRange.m8488getMaximpl(jM8495unboximpl));
        if (!TextHighlightType.m2674equalsimpl0(iM2677unboximpl, TextHighlightType.Companion.m2678getHandwritingDeletePreviewsxJuwY())) {
            DrawScope.m6796drawPathLG529CI$default(drawScope, pathForRange, ((TextSelectionColors) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU(), 0.0f, null, null, 0, 60, null);
            return;
        }
        Brush brush = textLayoutResult.getLayoutInput().getStyle().getBrush();
        if (brush != null) {
            DrawScope.m6795drawPathGBMwjPU$default(drawScope, pathForRange, brush, 0.2f, null, null, 0, 56, null);
            return;
        }
        long jM8521getColor0d7_KjU = textLayoutResult.getLayoutInput().getStyle().m8521getColor0d7_KjU();
        if (jM8521getColor0d7_KjU == 16) {
            jM8521getColor0d7_KjU = Color.Companion.m6258getBlack0d7_KjU();
        }
        long j = jM8521getColor0d7_KjU;
        DrawScope.m6796drawPathLG529CI$default(drawScope, pathForRange, Color.m6231copywmQWz5c$default(j, Color.m6234getAlphaimpl(j) * 0.2f, 0.0f, 0.0f, 0.0f, 14, null), 0.0f, null, null, 0, 60, null);
    }

    private final void drawText(DrawScope drawScope, TextLayoutResult textLayoutResult) {
        TextPainter.INSTANCE.paint(drawScope.getDrawContext().getCanvas(), textLayoutResult);
    }

    private final boolean getShowCursor() {
        if (this.writeable) {
            return (this.isFocused || this.isDragHovered) && TextFieldCoreModifierKt.isSpecified(this.cursorBrush);
        }
        return false;
    }

    /* JADX INFO: renamed from: measureHorizontalScroll-3p2s80s, reason: not valid java name */
    private final MeasureResult m2798measureHorizontalScroll3p2s80s(final MeasureScope measureScope, Measurable measurable, long j) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, Integer.MAX_VALUE, 0, 0, 13, null));
        final int iMin = Math.min(placeableMo7702measureBRTryo0.getWidth(), Constraints.m8995getMaxWidthimpl(j));
        return MeasureScope.layout$default(measureScope, iMin, placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: iq8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TextFieldCoreModifierNode.measureHorizontalScroll_3p2s80s$lambda$0(this.b, iMin, placeableMo7702measureBRTryo0, measureScope, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measureHorizontalScroll_3p2s80s$lambda$0(TextFieldCoreModifierNode textFieldCoreModifierNode, int i, Placeable placeable, MeasureScope measureScope, Placeable.PlacementScope placementScope) {
        textFieldCoreModifierNode.m2800updateScrollStatetIlFzwE(placementScope, i, placeable.getWidth(), textFieldCoreModifierNode.textFieldState.getVisualText().m2665getSelectiond9O1mEE(), measureScope.getLayoutDirection());
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, -textFieldCoreModifierNode.scrollState.getValue(), 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: renamed from: measureVerticalScroll-3p2s80s, reason: not valid java name */
    private final MeasureResult m2799measureVerticalScroll3p2s80s(final MeasureScope measureScope, Measurable measurable, long j) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, Integer.MAX_VALUE, 7, null));
        final int iMin = Math.min(placeableMo7702measureBRTryo0.getHeight(), Constraints.m8994getMaxHeightimpl(j));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), iMin, null, new nl3() { // from class: jq8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TextFieldCoreModifierNode.measureVerticalScroll_3p2s80s$lambda$0(this.b, iMin, placeableMo7702measureBRTryo0, measureScope, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measureVerticalScroll_3p2s80s$lambda$0(TextFieldCoreModifierNode textFieldCoreModifierNode, int i, Placeable placeable, MeasureScope measureScope, Placeable.PlacementScope placementScope) {
        textFieldCoreModifierNode.m2800updateScrollStatetIlFzwE(placementScope, i, placeable.getHeight(), textFieldCoreModifierNode.textFieldState.getVisualText().m2665getSelectiond9O1mEE(), measureScope.getLayoutDirection());
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, -textFieldCoreModifierNode.scrollState.getValue(), 0.0f, 4, null);
        return j59.a;
    }

    private final void startCursorJob() {
        if (this.cursorAnimation == null) {
            this.cursorAnimation = new CursorAnimationState(((Boolean) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalCursorBlinkEnabled())).booleanValue());
            DrawModifierNodeKt.invalidateDraw(this);
        }
        this.changeObserverJob = av0.c(getCoroutineScope(), null, null, new AnonymousClass1(null), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect textContextMenuToolbarHandlerNode$lambda$0(TextFieldCoreModifierNode textFieldCoreModifierNode, LayoutCoordinates layoutCoordinates) {
        Rect derivedVisibleContentBounds$foundation = textFieldCoreModifierNode.textFieldSelectionState.getDerivedVisibleContentBounds$foundation();
        if (derivedVisibleContentBounds$foundation == null) {
            derivedVisibleContentBounds$foundation = Rect.Companion.getZero();
        }
        LayoutCoordinates textLayoutNodeCoordinates = textFieldCoreModifierNode.textLayoutState.getTextLayoutNodeCoordinates();
        if (textLayoutNodeCoordinates != null) {
            return TextContextMenuToolbarHandlerModifierKt.translateRootToDestination(derivedVisibleContentBounds$foundation, textLayoutNodeCoordinates, layoutCoordinates);
        }
        InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Required value was null.");
        h8.d();
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a0  */
    /* JADX INFO: renamed from: updateScrollState-tIlFzwE, reason: not valid java name */
    private final void m2800updateScrollStatetIlFzwE(Density density, int i, int i2, long j, LayoutDirection layoutDirection) {
        TextLayoutResult layoutResult;
        float f;
        this.scrollState.setViewportSize$foundation(i);
        this.scrollState.setMaxValue$foundation(i2 - i);
        int iM2797calculateOffsetToFollow8ffj60Q = m2797calculateOffsetToFollow8ffj60Q(j, i, i2);
        if (iM2797calculateOffsetToFollow8ffj60Q < 0 || !getShowCursor() || (layoutResult = this.textLayoutState.getLayoutResult()) == null) {
            return;
        }
        Rect cursorRect = layoutResult.getCursorRect(kx6.g(iM2797calculateOffsetToFollow8ffj60Q, new y74(0, layoutResult.getLayoutInput().getText().length(), 1)));
        Rect cursorRectInScroller = TextFieldCoreModifierKt.getCursorRectInScroller(density, cursorRect, layoutDirection == LayoutDirection.Rtl, i2);
        boolean z = (cursorRectInScroller.getLeft() == this.previousCursorRect.getLeft() && cursorRectInScroller.getTop() == this.previousCursorRect.getTop() && i2 == this.previousTextLayoutSize) ? false : true;
        if (z || i != this.previousContainerSize) {
            boolean z2 = this.orientation == Orientation.Vertical;
            float top = z2 ? cursorRectInScroller.getTop() : cursorRectInScroller.getLeft();
            float bottom = z2 ? cursorRectInScroller.getBottom() : cursorRectInScroller.getRight();
            int value = this.scrollState.getValue();
            float f2 = value + i;
            if (bottom > f2) {
                f = bottom - f2;
            } else {
                float f3 = value;
                if (top >= f3 || bottom - top <= i) {
                    f = (top >= f3 || bottom - top > ((float) i)) ? 0.0f : top - f3;
                } else {
                    f = bottom - f2;
                }
            }
            this.previousSelection = TextRange.m8479boximpl(j);
            this.previousCursorRect = cursorRectInScroller;
            this.previousContainerSize = i;
            this.previousTextLayoutSize = i2;
            av0.c(getCoroutineScope(), null, c32.UNDISPATCHED, new TextFieldCoreModifierNode$updateScrollState$1(this, f, z, cursorRect, null), 1);
        }
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        this.textFieldMagnifierNode.applySemantics(semanticsPropertyReceiver);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        ContentDrawScope contentDrawScope2;
        contentDrawScope.drawContent();
        TextFieldCharSequence visualText = this.textFieldState.getVisualText();
        TextLayoutResult layoutResult = this.textLayoutState.getLayoutResult();
        if (layoutResult == null) {
            return;
        }
        b36<TextHighlightType, TextRange> highlight = visualText.getHighlight();
        if (highlight != null) {
            drawHighlight(contentDrawScope, highlight, layoutResult);
        }
        if (TextRange.m8485getCollapsedimpl(visualText.m2665getSelectiond9O1mEE())) {
            drawText(contentDrawScope, layoutResult);
            if (visualText.shouldShowSelection()) {
                contentDrawScope2 = contentDrawScope;
                TextFieldCoreModifier_androidKt.drawCursor(this, contentDrawScope2, this.cursorBrush, getShowCursor(), this.cursorAnimation, this.textFieldSelectionState);
            } else {
                contentDrawScope2 = contentDrawScope;
            }
        } else {
            contentDrawScope2 = contentDrawScope;
            if (visualText.shouldShowSelection()) {
                TextFieldCoreModifier_androidKt.m2801drawSelectionHighlightYmzfRxQ(this, contentDrawScope2, visualText.m2665getSelectiond9O1mEE(), layoutResult);
            }
            drawText(contentDrawScope2, layoutResult);
        }
        this.textFieldMagnifierNode.draw(contentDrawScope2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        return this.orientation == Orientation.Vertical ? m2799measureVerticalScroll3p2s80s(measureScope, measurable, j) : m2798measureHorizontalScroll3p2s80s(measureScope, measurable, j);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        if (this.isFocused && getShowCursor()) {
            startCursorJob();
        }
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates layoutCoordinates) {
        this.textLayoutState.setCoreNodeCoordinates(layoutCoordinates);
        this.textFieldMagnifierNode.onGloballyPositioned(layoutCoordinates);
    }

    public final void updateNode(boolean z, boolean z2, TextLayoutState textLayoutState, TransformedTextFieldState transformedTextFieldState, TextFieldSelectionState textFieldSelectionState, Brush brush, boolean z3, ScrollState scrollState, Orientation orientation, ToolbarRequester toolbarRequester, PlatformSelectionBehaviors platformSelectionBehaviors) {
        boolean showCursor = getShowCursor();
        boolean z4 = this.isFocused;
        TransformedTextFieldState transformedTextFieldState2 = this.textFieldState;
        TextLayoutState textLayoutState2 = this.textLayoutState;
        TextFieldSelectionState textFieldSelectionState2 = this.textFieldSelectionState;
        ScrollState scrollState2 = this.scrollState;
        this.isFocused = z;
        this.isDragHovered = z2;
        this.textLayoutState = textLayoutState;
        this.textFieldState = transformedTextFieldState;
        this.textFieldSelectionState = textFieldSelectionState;
        this.cursorBrush = brush;
        this.writeable = z3;
        this.scrollState = scrollState;
        this.orientation = orientation;
        this.toolbarRequester = toolbarRequester;
        this.platformSelectionBehaviors = platformSelectionBehaviors;
        this.textFieldMagnifierNode.update(transformedTextFieldState, textFieldSelectionState, textLayoutState, z || z2);
        this.textContextMenuToolbarHandlerNode.update(toolbarRequester);
        if (!getShowCursor()) {
            mb4 mb4Var = this.changeObserverJob;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.changeObserverJob = null;
            CursorAnimationState cursorAnimationState = this.cursorAnimation;
            if (cursorAnimationState != null) {
                cursorAnimationState.cancelAndHide();
            }
        } else if (!z4 || !aa4.e(transformedTextFieldState2, transformedTextFieldState) || !showCursor) {
            startCursorJob();
        }
        if (aa4.e(transformedTextFieldState2, transformedTextFieldState) && aa4.e(textLayoutState2, textLayoutState) && aa4.e(textFieldSelectionState2, textFieldSelectionState) && aa4.e(scrollState2, scrollState)) {
            return;
        }
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode$startCursorJob$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode$startCursorJob$1", f = "TextFieldCoreModifier.kt", l = {592}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int invokeSuspend$lambda$0(TextFieldCoreModifierNode textFieldCoreModifierNode, p07 p07Var) {
            textFieldCoreModifierNode.textFieldState.getVisualText();
            int i = (textFieldCoreModifierNode.isAttached() && ((WindowInfo) CompositionLocalConsumerModifierNodeKt.currentValueOf(textFieldCoreModifierNode, CompositionLocalsKt.getLocalWindowInfo())).isWindowFocused()) ? 1 : 2;
            int i2 = p07Var.b;
            int i3 = i * i2;
            p07Var.b = i2 * (-1);
            return i3;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return TextFieldCoreModifierNode.this.new AnonymousClass1(e02Var);
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
                final p07 p07Var = new p07();
                p07Var.b = 1;
                final TextFieldCoreModifierNode textFieldCoreModifierNode = TextFieldCoreModifierNode.this;
                hd3 hd3VarSnapshotFlow = SnapshotStateKt.snapshotFlow(new ll3() { // from class: androidx.compose.foundation.text.input.internal.h
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Integer.valueOf(TextFieldCoreModifierNode.AnonymousClass1.invokeSuspend$lambda$0(textFieldCoreModifierNode, p07Var));
                    }
                });
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(TextFieldCoreModifierNode.this, null);
                this.label = 1;
                if (px.c(hd3VarSnapshotFlow, anonymousClass2, this) == a32Var) {
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

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode$startCursorJob$1$2, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode$startCursorJob$1$2", f = "TextFieldCoreModifier.kt", l = {594}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass2 extends pg8 implements bm3<Integer, e02<? super j59>, Object> {
            /* synthetic */ int I$0;
            int label;
            final /* synthetic */ TextFieldCoreModifierNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(TextFieldCoreModifierNode textFieldCoreModifierNode, e02<? super AnonymousClass2> e02Var) {
                super(2, e02Var);
                this.this$0 = textFieldCoreModifierNode;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, e02Var);
                anonymousClass2.I$0 = ((Number) obj).intValue();
                return anonymousClass2;
            }

            public final Object invoke(int i, e02<? super j59> e02Var) {
                return ((AnonymousClass2) create(Integer.valueOf(i), e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                CursorAnimationState cursorAnimationState;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    if (Math.abs(this.I$0) == 1 && (cursorAnimationState = this.this$0.cursorAnimation) != null) {
                        this.label = 1;
                        if (cursorAnimationState.snapToVisibleAndAnimate(this) == a32Var) {
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

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ Object invoke(Integer num, e02<? super j59> e02Var) {
                return invoke(num.intValue(), e02Var);
            }
        }
    }
}
