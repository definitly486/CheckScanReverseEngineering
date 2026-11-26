package androidx.compose.foundation.gestures;

import android.view.KeyEvent;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetModifierNodeKt;
import androidx.compose.ui.focus.Focusability;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNodeKt;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Velocity;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.k8;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.vo1;
import defpackage.xh2;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollableNode extends DragGestureNode implements KeyInputModifierNode, SemanticsModifierNode, OnScrollChangedDispatcher {
    public static final int $stable = 8;
    private final ContentInViewNode contentInViewNode;
    private final ScrollableDefaultFlingBehavior defaultFlingBehavior;
    private FlingBehavior flingBehavior;
    private final FocusTargetModifierNode focusTargetModifierNode;
    private MouseWheelScrollingLogic mouseWheelScrollingLogic;
    private final ScrollableNestedScrollConnection nestedScrollConnection;
    private final NestedScrollDispatcher nestedScrollDispatcher;
    private OverscrollEffect overscrollEffect;
    private bm3<? super Float, ? super Float, Boolean> scrollByAction;
    private bm3<? super Offset, ? super e02<? super Offset>, ? extends Object> scrollByOffsetAction;
    private ScrollableContainerNode scrollableContainerNode;
    private final ScrollingLogic scrollingLogic;
    private final boolean shouldAutoInvalidate;
    private TrackpadScrollingLogic trackpadScrollingLogic;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollableNode$ensureMouseWheelScrollingLogicInitialized$1, reason: invalid class name */
    public static final /* synthetic */ class AnonymousClass1 extends k8 implements bm3<Velocity, e02<? super j59>, Object> {
        public AnonymousClass1(Object obj) {
            super(2, obj, ScrollableNode.class, "onWheelScrollStopped", "onWheelScrollStopped-TH1AsA0(J)V", 4);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(Velocity velocity, e02<? super j59> e02Var) {
            return m1605invokesFctU(velocity.m9289unboximpl(), e02Var);
        }

        /* JADX INFO: renamed from: invoke-sF-c-tU, reason: not valid java name */
        public final Object m1605invokesFctU(long j, e02<? super j59> e02Var) {
            return ScrollableNode.ensureMouseWheelScrollingLogicInitialized$onWheelScrollStopped((ScrollableNode) this.receiver, j, e02Var);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollableNode$ensureTrackpadScrollingLogicInitialized$1, reason: invalid class name and case insensitive filesystem */
    public static final /* synthetic */ class C04991 extends k8 implements bm3<Velocity, e02<? super j59>, Object> {
        public C04991(Object obj) {
            super(2, obj, ScrollableNode.class, "onTrackpadScrollStopped", "onTrackpadScrollStopped-TH1AsA0(J)V", 4);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(Velocity velocity, e02<? super j59> e02Var) {
            return m1606invokesFctU(velocity.m9289unboximpl(), e02Var);
        }

        /* JADX INFO: renamed from: invoke-sF-c-tU, reason: not valid java name */
        public final Object m1606invokesFctU(long j, e02<? super j59> e02Var) {
            return ScrollableNode.ensureTrackpadScrollingLogicInitialized$onTrackpadScrollStopped((ScrollableNode) this.receiver, j, e02Var);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollableNode$onDragStopped$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollableNode$onDragStopped$1", f = "Scrollable.kt", l = {394}, m = "invokeSuspend", v = 1)
    public static final class C05001 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ DragEvent.DragStopped $event;
        int label;
        final /* synthetic */ ScrollableNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05001(DragEvent.DragStopped dragStopped, ScrollableNode scrollableNode, e02<? super C05001> e02Var) {
            super(2, e02Var);
            this.$event = dragStopped;
            this.this$0 = scrollableNode;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C05001(this.$event, this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C05001) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                float f = this.$event.isIndirectPointerEvent() ? -1.0f : 1.0f;
                ScrollingLogic scrollingLogic = this.this$0.scrollingLogic;
                long jM9286timesadjELrA = Velocity.m9286timesadjELrA(this.$event.m1488getVelocity9UxMQ8M(), f);
                this.label = 1;
                if (scrollingLogic.m1616onScrollStoppedBMRW4eQ(jM9286timesadjELrA, false, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollableNode$setScrollSemanticsActions$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollableNode$setScrollSemanticsActions$2", f = "Scrollable.kt", l = {TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<Offset, e02<? super Offset>, Object> {
        /* synthetic */ long J$0;
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = ScrollableNode.this.new AnonymousClass2(e02Var);
            anonymousClass2.J$0 = ((Offset) obj).m5997unboximpl();
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(Offset offset, e02<? super Offset> e02Var) {
            return m1607invoke3MmeM6k(offset.m5997unboximpl(), e02Var);
        }

        /* JADX INFO: renamed from: invoke-3MmeM6k, reason: not valid java name */
        public final Object m1607invoke3MmeM6k(long j, e02<? super Offset> e02Var) {
            return ((AnonymousClass2) create(Offset.m5976boximpl(j), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            long j = this.J$0;
            ScrollingLogic scrollingLogic = ScrollableNode.this.scrollingLogic;
            this.label = 1;
            Object objM1600semanticsScrollByd4ec7I = ScrollableKt.m1600semanticsScrollByd4ec7I(scrollingLogic, j, this);
            return objM1600semanticsScrollByd4ec7I == a32Var ? a32Var : objM1600semanticsScrollByd4ec7I;
        }
    }

    public ScrollableNode(ScrollableState scrollableState, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, Orientation orientation, boolean z, boolean z2, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec) {
        super(ScrollableKt.getCanDragCalculation(), z, mutableInteractionSource, orientation);
        this.overscrollEffect = overscrollEffect;
        this.flingBehavior = flingBehavior;
        NestedScrollDispatcher nestedScrollDispatcher = new NestedScrollDispatcher();
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        ScrollableDefaultFlingBehavior scrollableDefaultFlingBehaviorPlatformScrollableDefaultFlingBehavior = Scrollable_androidKt.platformScrollableDefaultFlingBehavior();
        this.defaultFlingBehavior = scrollableDefaultFlingBehaviorPlatformScrollableDefaultFlingBehavior;
        OverscrollEffect overscrollEffect2 = this.overscrollEffect;
        FlingBehavior flingBehavior2 = this.flingBehavior;
        ScrollingLogic scrollingLogic = new ScrollingLogic(scrollableState, overscrollEffect2, flingBehavior2 == null ? scrollableDefaultFlingBehaviorPlatformScrollableDefaultFlingBehavior : flingBehavior2, orientation, z2, nestedScrollDispatcher, this, new vo1(this, 3));
        this.scrollingLogic = scrollingLogic;
        ScrollableNestedScrollConnection scrollableNestedScrollConnection = new ScrollableNestedScrollConnection(scrollingLogic, z);
        this.nestedScrollConnection = scrollableNestedScrollConnection;
        this.focusTargetModifierNode = (FocusTargetModifierNode) delegate(FocusTargetModifierNodeKt.m5899FocusTargetModifierNodePYyLHbc$default(Focusability.Companion.m5922getNeverLCbbffg(), null, 2, null));
        ContentInViewNode contentInViewNode = (ContentInViewNode) delegate(new ContentInViewNode(orientation, scrollingLogic, z2, bringIntoViewSpec, new xh2(this, 2)));
        this.contentInViewNode = contentInViewNode;
        delegate(NestedScrollNodeKt.nestedScrollModifierNode(scrollableNestedScrollConnection, nestedScrollDispatcher));
        delegate(new BringIntoViewResponderNode(contentInViewNode));
        if (ComposeFoundationFlags.isDelayPressesUsingGestureConsumptionEnabled) {
            return;
        }
        this.scrollableContainerNode = (ScrollableContainerNode) delegate(new ScrollableContainerNode(z));
    }

    private final void clearScrollSemanticsActions() {
        this.scrollByAction = null;
        this.scrollByOffsetAction = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect contentInViewNode$lambda$0(ScrollableNode scrollableNode) {
        return FocusTargetModifierNodeKt.getFocusedRect(scrollableNode.focusTargetModifierNode);
    }

    private final void ensureMouseWheelScrollingLogicInitialized() {
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.mouseWheelScrollingLogic;
        if (mouseWheelScrollingLogic == null) {
            mouseWheelScrollingLogic = new MouseWheelScrollingLogic(this.scrollingLogic, AndroidScrollable_androidKt.platformScrollConfig(this), new AnonymousClass1(this), DelegatableNodeKt.requireDensity(this));
            this.mouseWheelScrollingLogic = mouseWheelScrollingLogic;
        }
        if (mouseWheelScrollingLogic != null) {
            mouseWheelScrollingLogic.startReceivingEvents(getCoroutineScope());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object ensureMouseWheelScrollingLogicInitialized$onWheelScrollStopped(ScrollableNode scrollableNode, long j, e02 e02Var) {
        scrollableNode.m1604onWheelScrollStoppedTH1AsA0(j);
        return j59.a;
    }

    private final void ensureTrackpadScrollingLogicInitialized() {
        TrackpadScrollingLogic trackpadScrollingLogic = this.trackpadScrollingLogic;
        if (trackpadScrollingLogic == null) {
            trackpadScrollingLogic = new TrackpadScrollingLogic(this.scrollingLogic, new C04991(this), DelegatableNodeKt.requireDensity(this));
            this.trackpadScrollingLogic = trackpadScrollingLogic;
        }
        if (trackpadScrollingLogic != null) {
            trackpadScrollingLogic.startReceivingEvents(getCoroutineScope());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object ensureTrackpadScrollingLogicInitialized$onTrackpadScrollStopped(ScrollableNode scrollableNode, long j, e02 e02Var) {
        scrollableNode.m1603onTrackpadScrollStoppedTH1AsA0(j);
        return j59.a;
    }

    /* JADX INFO: renamed from: onTrackpadScrollStopped-TH1AsA0, reason: not valid java name */
    private final void m1603onTrackpadScrollStoppedTH1AsA0(long j) {
        av0.c(this.nestedScrollDispatcher.getCoroutineScope(), null, null, new ScrollableNode$onTrackpadScrollStopped$1(this, j, null), 3);
    }

    /* JADX INFO: renamed from: onWheelScrollStopped-TH1AsA0, reason: not valid java name */
    private final void m1604onWheelScrollStoppedTH1AsA0(long j) {
        av0.c(this.nestedScrollDispatcher.getCoroutineScope(), null, null, new ScrollableNode$onWheelScrollStopped$1(this, j, null), 3);
    }

    private final void setScrollSemanticsActions() {
        this.scrollByAction = new bm3() { // from class: zi7
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(ScrollableNode.setScrollSemanticsActions$lambda$0(this.b, ((Float) obj).floatValue(), ((Float) obj2).floatValue()));
            }
        };
        this.scrollByOffsetAction = new AnonymousClass2(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setScrollSemanticsActions$lambda$0(ScrollableNode scrollableNode, float f, float f2) {
        av0.c(scrollableNode.getCoroutineScope(), null, null, new ScrollableNode$setScrollSemanticsActions$1$1(scrollableNode, f, f2, null), 3);
        return true;
    }

    private final void updateDefaultFlingBehavior() {
        if (isAttached()) {
            this.defaultFlingBehavior.updateDensity(DelegatableNodeKt.requireDensity(this));
        }
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (getEnabled() && (this.scrollByAction == null || this.scrollByOffsetAction == null)) {
            setScrollSemanticsActions();
        }
        bm3<? super Float, ? super Float, Boolean> bm3Var = this.scrollByAction;
        if (bm3Var != null) {
            SemanticsPropertiesKt.scrollBy$default(semanticsPropertyReceiver, null, bm3Var, 1, null);
        }
        bm3<? super Offset, ? super e02<? super Offset>, ? extends Object> bm3Var2 = this.scrollByOffsetAction;
        if (bm3Var2 != null) {
            SemanticsPropertiesKt.scrollByOffset(semanticsPropertyReceiver, bm3Var2);
        }
    }

    @Override // androidx.compose.foundation.gestures.OnScrollChangedDispatcher
    /* JADX INFO: renamed from: dispatchScrollDeltaInfo-k-4lQ0M */
    public void mo1562dispatchScrollDeltaInfok4lQ0M(long j) {
        if (isAttached()) {
            DelegatableNodeKt.m7871dispatchOnScrollChangedUv8p0NA(this, j);
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public Object drag(bm3<? super nl3<? super DragEvent.DragDelta, j59>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        ScrollingLogic scrollingLogic = this.scrollingLogic;
        Object objScroll = scrollingLogic.scroll(MutatePriority.UserInput, new ScrollableNode$drag$2$1(bm3Var, scrollingLogic, null), e02Var);
        return objScroll == a32.COROUTINE_SUSPENDED ? objScroll : j59.a;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        updateDefaultFlingBehavior();
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.mouseWheelScrollingLogic;
        if (mouseWheelScrollingLogic != null) {
            mouseWheelScrollingLogic.updateDensity(DelegatableNodeKt.requireDensity(this));
        }
        TrackpadScrollingLogic trackpadScrollingLogic = this.trackpadScrollingLogic;
        if (trackpadScrollingLogic != null) {
            trackpadScrollingLogic.updateDensity(DelegatableNodeKt.requireDensity(this));
        }
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public void onDensityChange() {
        onCancelPointerInput();
        updateDefaultFlingBehavior();
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.mouseWheelScrollingLogic;
        if (mouseWheelScrollingLogic != null) {
            mouseWheelScrollingLogic.updateDensity(DelegatableNodeKt.requireDensity(this));
        }
        TrackpadScrollingLogic trackpadScrollingLogic = this.trackpadScrollingLogic;
        if (trackpadScrollingLogic != null) {
            trackpadScrollingLogic.updateDensity(DelegatableNodeKt.requireDensity(this));
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* JADX INFO: renamed from: onDragStarted-k-4lQ0M */
    public void mo1452onDragStartedk4lQ0M(long j) {
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public void onDragStopped(DragEvent.DragStopped dragStopped) {
        av0.c(this.nestedScrollDispatcher.getCoroutineScope(), null, null, new C05001(dragStopped, this, null), 3);
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* JADX INFO: renamed from: onKeyEvent-ZmokQxo */
    public boolean mo1258onKeyEventZmokQxo(KeyEvent keyEvent) {
        long jM5979constructorimpl;
        if (!getEnabled()) {
            return false;
        }
        long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
        Key.Companion companion = Key.Companion;
        if ((!Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7280getPageDownEK5gGoQ()) && !Key.m7081equalsimpl0(KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent), companion.m7281getPageUpEK5gGoQ())) || !KeyEventType.m7394equalsimpl0(KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent), KeyEventType.Companion.m7398getKeyDownCS__XNY()) || KeyEvent_androidKt.m7405isCtrlPressedZmokQxo(keyEvent)) {
            return false;
        }
        boolean zIsVertical = this.scrollingLogic.isVertical();
        ContentInViewNode contentInViewNode = this.contentInViewNode;
        if (zIsVertical) {
            int iM1469getViewportSizeOrZeroYbymL2g$foundation = (int) (contentInViewNode.m1469getViewportSizeOrZeroYbymL2g$foundation() & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(Key.m7081equalsimpl0(KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent), companion.m7281getPageUpEK5gGoQ()) ? iM1469getViewportSizeOrZeroYbymL2g$foundation : -iM1469getViewportSizeOrZeroYbymL2g$foundation)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        } else {
            int iM1469getViewportSizeOrZeroYbymL2g$foundation2 = (int) (contentInViewNode.m1469getViewportSizeOrZeroYbymL2g$foundation() >> 32);
            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Key.m7081equalsimpl0(KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent), companion.m7281getPageUpEK5gGoQ()) ? iM1469getViewportSizeOrZeroYbymL2g$foundation2 : -iM1469getViewportSizeOrZeroYbymL2g$foundation2)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        av0.c(getCoroutineScope(), null, null, new ScrollableNode$onKeyEvent$1(this, jM5979constructorimpl, null), 3);
        return true;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo1259onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            if (getCanDrag().invoke(PointerType.m7639boximpl(changes.get(i).m7572getTypeT8wyACA())).booleanValue()) {
                super.mo1259onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
                break;
            }
        }
        initializeGestureCoordination();
        if (getEnabled()) {
            PointerEventPass pointerEventPass2 = PointerEventPass.Initial;
            if (pointerEventPass == pointerEventPass2 && PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), PointerEventType.Companion.m7524getScroll7fucELk())) {
                ensureMouseWheelScrollingLogicInitialized();
            }
            MouseWheelScrollingLogic mouseWheelScrollingLogic = this.mouseWheelScrollingLogic;
            if (mouseWheelScrollingLogic != null) {
                mouseWheelScrollingLogic.mo1554onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
            }
            if (pointerEventPass == pointerEventPass2) {
                int iM7502getType7fucELk = pointerEvent.m7502getType7fucELk();
                PointerEventType.Companion companion = PointerEventType.Companion;
                if (PointerEventType.m7509equalsimpl0(iM7502getType7fucELk, companion.m7518getPanStart7fucELk()) || PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7517getPanMove7fucELk()) || PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7516getPanEnd7fucELk())) {
                    ensureTrackpadScrollingLogicInitialized();
                }
            }
            TrackpadScrollingLogic trackpadScrollingLogic = this.trackpadScrollingLogic;
            if (trackpadScrollingLogic != null) {
                trackpadScrollingLogic.mo1554onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
            }
        }
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* JADX INFO: renamed from: onPreKeyEvent-ZmokQxo */
    public boolean mo1260onPreKeyEventZmokQxo(KeyEvent keyEvent) {
        return false;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public boolean startDragImmediately() {
        return this.scrollingLogic.shouldScrollImmediately();
    }

    public final void update(ScrollableState scrollableState, Orientation orientation, OverscrollEffect overscrollEffect, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec) {
        boolean z3;
        if (getEnabled() != z) {
            this.nestedScrollConnection.setEnabled(z);
            ScrollableContainerNode scrollableContainerNode = this.scrollableContainerNode;
            if (scrollableContainerNode != null) {
                scrollableContainerNode.update(z);
            }
            z3 = true;
        } else {
            z3 = false;
        }
        boolean z4 = z3;
        boolean zUpdate = this.scrollingLogic.update(scrollableState, orientation, overscrollEffect, z2, flingBehavior == null ? this.defaultFlingBehavior : flingBehavior, this.nestedScrollDispatcher);
        this.contentInViewNode.update(orientation, z2, bringIntoViewSpec);
        this.overscrollEffect = overscrollEffect;
        this.flingBehavior = flingBehavior;
        update(ScrollableKt.getCanDragCalculation(), z, mutableInteractionSource, this.scrollingLogic.isVertical() ? Orientation.Vertical : Orientation.Horizontal, zUpdate);
        if (z4) {
            clearScrollSemanticsActions();
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
    }
}
