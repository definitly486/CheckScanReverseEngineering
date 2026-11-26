package androidx.compose.foundation.gestures;

import androidx.compose.animation.SplineBasedDecayKt;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNodeKt;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.ib7;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yi7;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Scrollable2DNode extends DragGestureNode implements SemanticsModifierNode {
    public static final int $stable = 8;
    private final DefaultFlingBehavior defaultFlingBehavior;
    private FlingBehavior flingBehavior;
    private final ScrollableNestedScrollConnection nestedScrollConnection;
    private final NestedScrollDispatcher nestedScrollDispatcher;
    private OverscrollEffect overscrollEffect;
    private bm3<? super Float, ? super Float, Boolean> scrollByAction;
    private bm3<? super Offset, ? super e02<? super Offset>, ? extends Object> scrollByOffsetAction;
    private ScrollableContainerNode scrollableContainerNode;
    private final ScrollingLogic2D scrollingLogic;
    private final boolean shouldAutoInvalidate;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.Scrollable2DNode$onDragStopped$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.Scrollable2DNode$onDragStopped$1", f = "Scrollable2D.kt", l = {205}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ DragEvent.DragStopped $event;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DragEvent.DragStopped dragStopped, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$event = dragStopped;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return Scrollable2DNode.this.new AnonymousClass1(this.$event, e02Var);
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
                ScrollingLogic2D scrollingLogic2D = Scrollable2DNode.this.scrollingLogic;
                long jM1488getVelocity9UxMQ8M = this.$event.m1488getVelocity9UxMQ8M();
                this.label = 1;
                if (scrollingLogic2D.m1627onScrollStoppedsFctU(jM1488getVelocity9UxMQ8M, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.Scrollable2DNode$setScrollSemanticsActions$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.Scrollable2DNode$setScrollSemanticsActions$2", f = "Scrollable2D.kt", l = {294}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<Offset, e02<? super Offset>, Object> {
        /* synthetic */ long J$0;
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = Scrollable2DNode.this.new AnonymousClass2(e02Var);
            anonymousClass2.J$0 = ((Offset) obj).m5997unboximpl();
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(Offset offset, e02<? super Offset> e02Var) {
            return m1598invoke3MmeM6k(offset.m5997unboximpl(), e02Var);
        }

        /* JADX INFO: renamed from: invoke-3MmeM6k, reason: not valid java name */
        public final Object m1598invoke3MmeM6k(long j, e02<? super Offset> e02Var) {
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
            ScrollingLogic2D scrollingLogic2D = Scrollable2DNode.this.scrollingLogic;
            this.label = 1;
            Object objM1597semanticsScrollByd4ec7I = Scrollable2DKt.m1597semanticsScrollByd4ec7I(scrollingLogic2D, j, this);
            return objM1597semanticsScrollByd4ec7I == a32Var ? a32Var : objM1597semanticsScrollByd4ec7I;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Scrollable2DNode(Scrollable2DState scrollable2DState, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, boolean z, MutableInteractionSource mutableInteractionSource) {
        super(ScrollableKt.getCanDragCalculation(), z, mutableInteractionSource, null);
        this.overscrollEffect = overscrollEffect;
        this.flingBehavior = flingBehavior;
        NestedScrollDispatcher nestedScrollDispatcher = new NestedScrollDispatcher();
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        DefaultFlingBehavior defaultFlingBehavior = new DefaultFlingBehavior(SplineBasedDecayKt.splineBasedDecay(ScrollableKt.getUnityDensity()), null, 2, 0 == true ? 1 : 0);
        this.defaultFlingBehavior = defaultFlingBehavior;
        OverscrollEffect overscrollEffect2 = this.overscrollEffect;
        FlingBehavior flingBehavior2 = this.flingBehavior;
        ScrollingLogic2D scrollingLogic2D = new ScrollingLogic2D(scrollable2DState, overscrollEffect2, flingBehavior2 == null ? defaultFlingBehavior : flingBehavior2, nestedScrollDispatcher, new ib7(this, 1));
        this.scrollingLogic = scrollingLogic2D;
        ScrollableNestedScrollConnection scrollableNestedScrollConnection = new ScrollableNestedScrollConnection(scrollingLogic2D, z);
        this.nestedScrollConnection = scrollableNestedScrollConnection;
        delegate(NestedScrollNodeKt.nestedScrollModifierNode(scrollableNestedScrollConnection, nestedScrollDispatcher));
        if (ComposeFoundationFlags.isDelayPressesUsingGestureConsumptionEnabled) {
            return;
        }
        this.scrollableContainerNode = (ScrollableContainerNode) delegate(new ScrollableContainerNode(z));
    }

    private final void clearScrollSemanticsActions() {
        this.scrollByAction = null;
        this.scrollByOffsetAction = null;
    }

    private final void setScrollSemanticsActions() {
        this.scrollByAction = new yi7(this, 0);
        this.scrollByOffsetAction = new AnonymousClass2(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setScrollSemanticsActions$lambda$0(Scrollable2DNode scrollable2DNode, float f, float f2) {
        av0.c(scrollable2DNode.getCoroutineScope(), null, null, new Scrollable2DNode$setScrollSemanticsActions$1$1(scrollable2DNode, f, f2, null), 3);
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

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public Object drag(bm3<? super nl3<? super DragEvent.DragDelta, j59>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objScroll = this.scrollingLogic.scroll(MutatePriority.UserInput, new Scrollable2DNode$drag$2$1(bm3Var, null), e02Var);
        return objScroll == a32.COROUTINE_SUSPENDED ? objScroll : j59.a;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        updateDefaultFlingBehavior();
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public void onDensityChange() {
        onCancelPointerInput();
        updateDefaultFlingBehavior();
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* JADX INFO: renamed from: onDragStarted-k-4lQ0M */
    public void mo1452onDragStartedk4lQ0M(long j) {
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public void onDragStopped(DragEvent.DragStopped dragStopped) {
        av0.c(this.nestedScrollDispatcher.getCoroutineScope(), null, null, new AnonymousClass1(dragStopped, null), 3);
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo1259onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            if (getCanDrag().invoke(PointerType.m7639boximpl(changes.get(i).m7572getTypeT8wyACA())).booleanValue()) {
                super.mo1259onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
                return;
            }
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public boolean startDragImmediately() {
        return this.scrollingLogic.shouldScrollImmediately();
    }

    public final void update(Scrollable2DState scrollable2DState, OverscrollEffect overscrollEffect, boolean z, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource) {
        boolean z2;
        if (getEnabled() != z) {
            this.nestedScrollConnection.setEnabled(z);
            ScrollableContainerNode scrollableContainerNode = this.scrollableContainerNode;
            if (scrollableContainerNode != null) {
                scrollableContainerNode.update(z);
            }
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z3 = z2;
        boolean zUpdate = this.scrollingLogic.update(scrollable2DState, overscrollEffect, flingBehavior == null ? this.defaultFlingBehavior : flingBehavior, this.nestedScrollDispatcher);
        this.overscrollEffect = overscrollEffect;
        this.flingBehavior = flingBehavior;
        DragGestureNode.update$default(this, ScrollableKt.getCanDragCalculation(), z, mutableInteractionSource, null, zUpdate, 8, null);
        if (z3) {
            clearScrollSemanticsActions();
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
    }
}
