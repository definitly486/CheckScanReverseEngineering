package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.TouchBoundsExpansion;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.jh2;
import defpackage.n07;
import defpackage.nl3;
import defpackage.r07;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HoverIconModifierNode extends Modifier.Node implements TraversableNode, PointerInputModifierNode, CompositionLocalConsumerModifierNode {
    public static final int $stable = 8;
    private boolean cursorInBoundsOfNode;
    private DpTouchBoundsExpansion dpTouchBoundsExpansion;
    private PointerIcon icon;
    private boolean overrideDescendants;

    /* JADX INFO: renamed from: androidx.compose.ui.input.pointer.HoverIconModifierNode$displayIconFromAncestorNodeWithCursorInBoundsOrDefaultIcon$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<HoverIconModifierNode, Boolean> {
        final /* synthetic */ r07<HoverIconModifierNode> $hoverIconModifierNode;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(r07<HoverIconModifierNode> r07Var) {
            super(1);
            this.$hoverIconModifierNode = r07Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final Boolean invoke(HoverIconModifierNode hoverIconModifierNode) {
            if (this.$hoverIconModifierNode.b == null && hoverIconModifierNode.cursorInBoundsOfNode) {
                this.$hoverIconModifierNode.b = hoverIconModifierNode;
            } else if (this.$hoverIconModifierNode.b != null && hoverIconModifierNode.getOverrideDescendants() && hoverIconModifierNode.cursorInBoundsOfNode) {
                this.$hoverIconModifierNode.b = hoverIconModifierNode;
            }
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.input.pointer.HoverIconModifierNode$displayIconIfDescendantsDoNotHavePriority$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06251 extends gh4 implements nl3<HoverIconModifierNode, TraversableNode.Companion.TraverseDescendantsAction> {
        final /* synthetic */ n07 $hasIconRightsOverDescendants;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06251(n07 n07Var) {
            super(1);
            this.$hasIconRightsOverDescendants = n07Var;
        }

        @Override // defpackage.nl3
        public final TraversableNode.Companion.TraverseDescendantsAction invoke(HoverIconModifierNode hoverIconModifierNode) {
            if (!hoverIconModifierNode.cursorInBoundsOfNode) {
                return TraversableNode.Companion.TraverseDescendantsAction.ContinueTraversal;
            }
            this.$hasIconRightsOverDescendants.b = false;
            return TraversableNode.Companion.TraverseDescendantsAction.CancelTraversal;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.input.pointer.HoverIconModifierNode$findDescendantNodeWithCursorInBounds$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06261 extends gh4 implements nl3<HoverIconModifierNode, TraversableNode.Companion.TraverseDescendantsAction> {
        final /* synthetic */ r07<HoverIconModifierNode> $descendantNodeWithCursorInBounds;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06261(r07<HoverIconModifierNode> r07Var) {
            super(1);
            this.$descendantNodeWithCursorInBounds = r07Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final TraversableNode.Companion.TraverseDescendantsAction invoke(HoverIconModifierNode hoverIconModifierNode) {
            TraversableNode.Companion.TraverseDescendantsAction traverseDescendantsAction = TraversableNode.Companion.TraverseDescendantsAction.ContinueTraversal;
            if (hoverIconModifierNode.cursorInBoundsOfNode) {
                this.$descendantNodeWithCursorInBounds.b = hoverIconModifierNode;
                if (hoverIconModifierNode.getOverrideDescendants()) {
                    return TraversableNode.Companion.TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                }
            }
            return traverseDescendantsAction;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.input.pointer.HoverIconModifierNode$findOverridingAncestorNode$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06271 extends gh4 implements nl3<HoverIconModifierNode, Boolean> {
        final /* synthetic */ r07<HoverIconModifierNode> $hoverIconModifierNode;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06271(r07<HoverIconModifierNode> r07Var) {
            super(1);
            this.$hoverIconModifierNode = r07Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final Boolean invoke(HoverIconModifierNode hoverIconModifierNode) {
            if (hoverIconModifierNode.getOverrideDescendants() && hoverIconModifierNode.cursorInBoundsOfNode) {
                this.$hoverIconModifierNode.b = hoverIconModifierNode;
            }
            return Boolean.TRUE;
        }
    }

    public /* synthetic */ HoverIconModifierNode(PointerIcon pointerIcon, boolean z, DpTouchBoundsExpansion dpTouchBoundsExpansion, int i, jh2 jh2Var) {
        this(pointerIcon, (i & 2) != 0 ? false : z, (i & 4) != 0 ? null : dpTouchBoundsExpansion);
    }

    private final void displayIcon() {
        PointerIcon pointerIcon;
        HoverIconModifierNode hoverIconModifierNodeFindOverridingAncestorNode = findOverridingAncestorNode();
        if (hoverIconModifierNodeFindOverridingAncestorNode == null || (pointerIcon = hoverIconModifierNodeFindOverridingAncestorNode.icon) == null) {
            pointerIcon = this.icon;
        }
        displayIcon(pointerIcon);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void displayIconFromAncestorNodeWithCursorInBoundsOrDefaultIcon() {
        r07 r07Var = new r07();
        TraversableNodeKt.traverseAncestors(this, new AnonymousClass1(r07Var));
        HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) r07Var.b;
        if (hoverIconModifierNode != null) {
            hoverIconModifierNode.displayIcon();
        } else {
            displayIcon(null);
        }
    }

    private final void displayIconFromCurrentNodeOrDescendantsWithCursorInBounds() {
        HoverIconModifierNode hoverIconModifierNodeFindDescendantNodeWithCursorInBounds;
        if (this.cursorInBoundsOfNode) {
            if (!this.overrideDescendants && (hoverIconModifierNodeFindDescendantNodeWithCursorInBounds = findDescendantNodeWithCursorInBounds()) != null) {
                this = hoverIconModifierNodeFindDescendantNodeWithCursorInBounds;
            }
            this.displayIcon();
        }
    }

    private final void displayIconIfDescendantsDoNotHavePriority() {
        n07 n07Var = new n07();
        n07Var.b = true;
        if (!this.overrideDescendants) {
            TraversableNodeKt.traverseDescendants(this, new C06251(n07Var));
        }
        if (n07Var.b) {
            displayIcon();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final HoverIconModifierNode findDescendantNodeWithCursorInBounds() {
        r07 r07Var = new r07();
        TraversableNodeKt.traverseDescendants(this, new C06261(r07Var));
        return (HoverIconModifierNode) r07Var.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final HoverIconModifierNode findOverridingAncestorNode() {
        r07 r07Var = new r07();
        TraversableNodeKt.traverseAncestors(this, new C06271(r07Var));
        return (HoverIconModifierNode) r07Var.b;
    }

    private final void onEnter() {
        this.cursorInBoundsOfNode = true;
        displayIconIfDescendantsDoNotHavePriority();
    }

    private final void onExit() {
        if (this.cursorInBoundsOfNode) {
            this.cursorInBoundsOfNode = false;
            if (isAttached()) {
                displayIconFromAncestorNodeWithCursorInBoundsOrDefaultIcon();
            }
        }
    }

    public abstract void displayIcon(PointerIcon pointerIcon);

    public final DpTouchBoundsExpansion getDpTouchBoundsExpansion() {
        return this.dpTouchBoundsExpansion;
    }

    public final PointerIcon getIcon() {
        return this.icon;
    }

    public final boolean getOverrideDescendants() {
        return this.overrideDescendants;
    }

    public final PointerIconService getPointerIconService() {
        return (PointerIconService) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalPointerIconService());
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: getTouchBoundsExpansion-RZrCHBk */
    public long mo2651getTouchBoundsExpansionRZrCHBk() {
        DpTouchBoundsExpansion dpTouchBoundsExpansion = this.dpTouchBoundsExpansion;
        return dpTouchBoundsExpansion != null ? dpTouchBoundsExpansion.m7912roundToTouchBoundsExpansionTW6G1oQ(DelegatableNodeKt.requireDensity(this)) : TouchBoundsExpansion.Companion.m8120getNoneRZrCHBk();
    }

    /* JADX INFO: renamed from: isRelevantPointerType-uerMTgs, reason: not valid java name */
    public abstract boolean mo7473isRelevantPointerTypeuerMTgs(int i);

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        onExit();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        onExit();
        super.onDetach();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo1259onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        if (pointerEventPass == PointerEventPass.Main) {
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            for (int i = 0; i < size; i++) {
                if (mo7473isRelevantPointerTypeuerMTgs(changes.get(i).m7572getTypeT8wyACA())) {
                    int iM7502getType7fucELk = pointerEvent.m7502getType7fucELk();
                    PointerEventType.Companion companion = PointerEventType.Companion;
                    if (PointerEventType.m7509equalsimpl0(iM7502getType7fucELk, companion.m7513getEnter7fucELk())) {
                        onEnter();
                        return;
                    } else {
                        if (PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7514getExit7fucELk())) {
                            onExit();
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    public final void setDpTouchBoundsExpansion(DpTouchBoundsExpansion dpTouchBoundsExpansion) {
        this.dpTouchBoundsExpansion = dpTouchBoundsExpansion;
    }

    public final void setIcon(PointerIcon pointerIcon) {
        if (aa4.e(this.icon, pointerIcon)) {
            return;
        }
        this.icon = pointerIcon;
        if (this.cursorInBoundsOfNode) {
            displayIconIfDescendantsDoNotHavePriority();
        }
    }

    public final void setOverrideDescendants(boolean z) {
        if (this.overrideDescendants != z) {
            this.overrideDescendants = z;
            boolean z2 = this.cursorInBoundsOfNode;
            if (z) {
                if (z2) {
                    displayIcon();
                }
            } else if (z2) {
                displayIconFromCurrentNodeOrDescendantsWithCursorInBounds();
            }
        }
    }

    public HoverIconModifierNode(PointerIcon pointerIcon, boolean z, DpTouchBoundsExpansion dpTouchBoundsExpansion) {
        this.dpTouchBoundsExpansion = dpTouchBoundsExpansion;
        this.icon = pointerIcon;
        this.overrideDescendants = z;
    }
}
