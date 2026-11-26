package androidx.compose.foundation;

import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetModifierNodeKt;
import androidx.compose.ui.focus.Focusability;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.relocation.BringIntoViewModifierNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hp2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.k22;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qm3;
import defpackage.r07;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class FocusableNode extends DelegatingNode implements SemanticsModifierNode, GlobalPositionAwareModifierNode, CompositionLocalConsumerModifierNode, ObserverModifierNode, TraversableNode {
    private final FocusTargetModifierNode focusTargetNode;
    private FocusInteraction.Focus focusedInteraction;
    private LayoutCoordinates globalLayoutCoordinates;
    private MutableInteractionSource interactionSource;
    private final nl3<Boolean, j59> onFocusChange;
    private PinnableContainer.PinnedHandle pinnedHandle;
    private final boolean shouldAutoInvalidate;
    private static final TraverseKey TraverseKey = new TraverseKey(null);
    public static final int $stable = 8;

    /* JADX INFO: renamed from: androidx.compose.foundation.FocusableNode$applySemantics$1, reason: invalid class name */
    public static final /* synthetic */ class AnonymousClass1 extends qm3 implements ll3<Boolean> {
        public AnonymousClass1(Object obj) {
            super(0, obj, FocusableNode.class, "requestFocus", "requestFocus()Z", 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Boolean invoke() {
            return Boolean.valueOf(((FocusableNode) this.receiver).requestFocus());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.FocusableNode$emitWithFallback$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.FocusableNode$emitWithFallback$1", f = "Focusable.kt", l = {322}, m = "invokeSuspend", v = 1)
    public static final class C04731 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ hp2 $handler;
        final /* synthetic */ Interaction $interaction;
        final /* synthetic */ MutableInteractionSource $this_emitWithFallback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04731(MutableInteractionSource mutableInteractionSource, Interaction interaction, hp2 hp2Var, e02<? super C04731> e02Var) {
            super(2, e02Var);
            this.$this_emitWithFallback = mutableInteractionSource;
            this.$interaction = interaction;
            this.$handler = hp2Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C04731(this.$this_emitWithFallback, this.$interaction, this.$handler, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04731) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                MutableInteractionSource mutableInteractionSource = this.$this_emitWithFallback;
                Interaction interaction = this.$interaction;
                this.label = 1;
                if (mutableInteractionSource.emit(interaction, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            hp2 hp2Var = this.$handler;
            if (hp2Var != null) {
                hp2Var.dispose();
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.FocusableNode$onFocusStateChange$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.FocusableNode$onFocusStateChange$1", f = "Focusable.kt", l = {WebmConstants.MkvEbmlElement.AUDIO}, m = "invokeSuspend", v = 1)
    public static final class C04741 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public C04741(e02<? super C04741> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return FocusableNode.this.new C04741(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04741) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                FocusableNode focusableNode = FocusableNode.this;
                this.label = 1;
                if (BringIntoViewModifierNodeKt.bringIntoView$default(focusableNode, null, this, 1, null) == a32Var) {
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
    private FocusableNode(MutableInteractionSource mutableInteractionSource, int i, nl3<? super Boolean, j59> nl3Var) {
        this.interactionSource = mutableInteractionSource;
        this.onFocusChange = nl3Var;
        this.focusTargetNode = (FocusTargetModifierNode) delegate(FocusTargetModifierNodeKt.m5898FocusTargetModifierNodePYyLHbc(i, new FocusableNode$focusTargetNode$1(this)));
    }

    private final void disposeInteractionSource() {
        FocusInteraction.Focus focus;
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null && (focus = this.focusedInteraction) != null) {
            mutableInteractionSource.tryEmit(new FocusInteraction.Unfocus(focus));
        }
        this.focusedInteraction = null;
    }

    private final void emitInteraction(boolean z) {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            FocusInteraction.Focus focus = this.focusedInteraction;
            if (!z) {
                if (focus != null) {
                    emitWithFallback(mutableInteractionSource, new FocusInteraction.Unfocus(focus));
                    this.focusedInteraction = null;
                    return;
                }
                return;
            }
            if (focus != null) {
                emitWithFallback(mutableInteractionSource, new FocusInteraction.Unfocus(focus));
                this.focusedInteraction = null;
            }
            FocusInteraction.Focus focus2 = new FocusInteraction.Focus();
            emitWithFallback(mutableInteractionSource, focus2);
            this.focusedInteraction = focus2;
        }
    }

    private final void emitWithFallback(MutableInteractionSource mutableInteractionSource, Interaction interaction) {
        if (!isAttached()) {
            mutableInteractionSource.tryEmit(interaction);
        } else {
            mb4 mb4Var = (mb4) getCoroutineScope().getCoroutineContext().get(mb4.a.b);
            av0.c(getCoroutineScope(), null, null, new C04731(mutableInteractionSource, interaction, mb4Var != null ? mb4Var.g(new k22(1, mutableInteractionSource, interaction)) : null, null), 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 emitWithFallback$lambda$0(MutableInteractionSource mutableInteractionSource, Interaction interaction, Throwable th) {
        mutableInteractionSource.tryEmit(interaction);
        return j59.a;
    }

    private final FocusedBoundsObserverNode getFocusedBoundsObserver() {
        if (isAttached()) {
            TraversableNode traversableNodeFindNearestAncestor = TraversableNodeKt.findNearestAncestor(this, FocusedBoundsObserverNode.TraverseKey);
            if (traversableNodeFindNearestAncestor instanceof FocusedBoundsObserverNode) {
                return (FocusedBoundsObserverNode) traversableNodeFindNearestAncestor;
            }
        }
        return null;
    }

    private final void notifyObserverWhenAttached() {
        FocusedBoundsObserverNode focusedBoundsObserver;
        LayoutCoordinates layoutCoordinates = this.globalLayoutCoordinates;
        if (layoutCoordinates != null) {
            layoutCoordinates.getClass();
            if (!layoutCoordinates.isAttached() || (focusedBoundsObserver = getFocusedBoundsObserver()) == null) {
                return;
            }
            focusedBoundsObserver.onFocusBoundsChanged(this.globalLayoutCoordinates);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onFocusStateChange(FocusState focusState, FocusState focusState2) {
        boolean zIsFocused;
        if (isAttached() && (zIsFocused = focusState2.isFocused()) != focusState.isFocused()) {
            nl3<Boolean, j59> nl3Var = this.onFocusChange;
            if (nl3Var != null) {
                nl3Var.invoke(Boolean.valueOf(zIsFocused));
            }
            if (zIsFocused) {
                av0.c(getCoroutineScope(), null, null, new C04741(null), 3);
                PinnableContainer pinnableContainerRetrievePinnableContainer = retrievePinnableContainer();
                this.pinnedHandle = pinnableContainerRetrievePinnableContainer != null ? pinnableContainerRetrievePinnableContainer.pin() : null;
                notifyObserverWhenAttached();
            } else {
                PinnableContainer.PinnedHandle pinnedHandle = this.pinnedHandle;
                if (pinnedHandle != null) {
                    pinnedHandle.release();
                }
                this.pinnedHandle = null;
                FocusedBoundsObserverNode focusedBoundsObserver = getFocusedBoundsObserver();
                if (focusedBoundsObserver != null) {
                    focusedBoundsObserver.onFocusBoundsChanged(null);
                }
            }
            SemanticsModifierNodeKt.invalidateSemantics(this);
            emitInteraction(zIsFocused);
        }
    }

    private final PinnableContainer retrievePinnableContainer() {
        final r07 r07Var = new r07();
        ObserverModifierNodeKt.observeReads(this, new ll3() { // from class: ci3
            @Override // defpackage.ll3
            public final Object invoke() {
                return FocusableNode.retrievePinnableContainer$lambda$0(r07Var, this);
            }
        });
        return (PinnableContainer) r07Var.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
    public static final j59 retrievePinnableContainer$lambda$0(r07 r07Var, FocusableNode focusableNode) {
        r07Var.b = CompositionLocalConsumerModifierNodeKt.currentValueOf(focusableNode, PinnableContainerKt.getLocalPinnableContainer());
        return j59.a;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setFocused(semanticsPropertyReceiver, this.focusTargetNode.getFocusState().isFocused());
        SemanticsPropertiesKt.requestFocus$default(semanticsPropertyReceiver, null, new AnonymousClass1(this), 1, null);
    }

    public final FocusState getFocusState() {
        return this.focusTargetNode.getFocusState();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return TraverseKey;
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates layoutCoordinates) {
        this.globalLayoutCoordinates = layoutCoordinates;
        if (this.focusTargetNode.getFocusState().isFocused()) {
            if (layoutCoordinates.isAttached()) {
                notifyObserverWhenAttached();
                return;
            }
            FocusedBoundsObserverNode focusedBoundsObserver = getFocusedBoundsObserver();
            if (focusedBoundsObserver != null) {
                focusedBoundsObserver.onFocusBoundsChanged(null);
            }
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        PinnableContainer pinnableContainerRetrievePinnableContainer = retrievePinnableContainer();
        if (this.focusTargetNode.getFocusState().isFocused()) {
            PinnableContainer.PinnedHandle pinnedHandle = this.pinnedHandle;
            if (pinnedHandle != null) {
                pinnedHandle.release();
            }
            this.pinnedHandle = pinnableContainerRetrievePinnableContainer != null ? pinnableContainerRetrievePinnableContainer.pin() : null;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onReset() {
        PinnableContainer.PinnedHandle pinnedHandle = this.pinnedHandle;
        if (pinnedHandle != null) {
            pinnedHandle.release();
        }
        this.pinnedHandle = null;
    }

    public final boolean requestFocus() {
        return FocusTargetModifierNode.m5894requestFocus3ESFkO8$default(this.focusTargetNode, 0, 1, null);
    }

    public final void update(MutableInteractionSource mutableInteractionSource) {
        if (aa4.e(this.interactionSource, mutableInteractionSource)) {
            return;
        }
        disposeInteractionSource();
        this.interactionSource = mutableInteractionSource;
    }

    public static final class TraverseKey {
        public /* synthetic */ TraverseKey(jh2 jh2Var) {
            this();
        }

        private TraverseKey() {
        }
    }

    public /* synthetic */ FocusableNode(MutableInteractionSource mutableInteractionSource, int i, nl3 nl3Var, jh2 jh2Var) {
        this(mutableInteractionSource, i, nl3Var);
    }

    public /* synthetic */ FocusableNode(MutableInteractionSource mutableInteractionSource, int i, nl3 nl3Var, int i2, jh2 jh2Var) {
        this(mutableInteractionSource, (i2 & 2) != 0 ? Focusability.Companion.m5921getAlwaysLCbbffg() : i, (i2 & 4) != 0 ? null : nl3Var, null);
    }
}
