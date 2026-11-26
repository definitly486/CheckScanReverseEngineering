package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.ui.Actual_jvmAndAndroidKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.focus.FocusEventModifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusEventModifierNodeKt;
import androidx.compose.ui.focus.FocusOrderModifier;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.focus.FocusPropertiesModifierNodeKt;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.SoftKeyboardInterceptionModifierNode;
import androidx.compose.ui.input.pointer.PointerInputModifier;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.ApproachLayoutModifierNode;
import androidx.compose.ui.layout.BeyondBoundsLayoutProviderModifierNode;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.OnPlacedNode;
import androidx.compose.ui.layout.OnRemeasuredModifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.compose.ui.semantics.SemanticsModifier;

/* JADX INFO: loaded from: classes2.dex */
public final class NodeKindKt {
    private static final int Inserted = 1;
    private static final int Removed = 2;
    private static final int Updated = 0;
    private static final MutableObjectIntMap<Object> classToKindSetMap = ObjectIntMapKt.mutableObjectIntMapOf();

    public static final void autoInvalidateInsertedNode(Modifier.Node node) {
        if (!node.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("autoInvalidateInsertedNode called on unattached node");
        }
        autoInvalidateNodeIncludingDelegates(node, -1, 1);
    }

    public static final void autoInvalidateNodeIncludingDelegates(Modifier.Node node, int i, int i2) {
        if (!(node instanceof DelegatingNode)) {
            autoInvalidateNodeSelf(node, i & node.getKindSet$ui(), i2);
            return;
        }
        DelegatingNode delegatingNode = (DelegatingNode) node;
        autoInvalidateNodeSelf(node, delegatingNode.getSelfKindSet$ui() & i, i2);
        int i3 = (~delegatingNode.getSelfKindSet$ui()) & i;
        for (Modifier.Node delegate$ui = delegatingNode.getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
            autoInvalidateNodeIncludingDelegates(delegate$ui, i3, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final void autoInvalidateNodeSelf(Modifier.Node node, int i, int i2) {
        if (i2 != 0 || node.getShouldAutoInvalidate()) {
            if ((NodeKind.m8019constructorimpl(2) & i) != 0 && (node instanceof LayoutModifierNode)) {
                LayoutModifierNodeKt.invalidateMeasurement((LayoutModifierNode) node);
                if (i2 == 2) {
                    DelegatableNodeKt.m7874requireCoordinator64DMado(node, NodeKind.m8019constructorimpl(2)).onRelease();
                }
            }
            if ((NodeKind.m8019constructorimpl(128) & i) != 0 && i2 != 2) {
                DelegatableNodeKt.requireLayoutNode(node).invalidateMeasurements$ui();
            }
            if ((NodeKind.m8019constructorimpl(4194304) & i) != 0 && i2 != 2) {
                LayoutNode.requestRelayout$ui$default(DelegatableNodeKt.requireLayoutNode(node), false, 1, null);
            }
            if ((NodeKind.m8019constructorimpl(256) & i) != 0 && (node instanceof GlobalPositionAwareModifierNode)) {
                if (i2 == 1) {
                    LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(node);
                    layoutNodeRequireLayoutNode.setGloballyPositionedObservers(layoutNodeRequireLayoutNode.getGloballyPositionedObservers() + 1);
                } else if (i2 == 2) {
                    LayoutNode layoutNodeRequireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(node);
                    layoutNodeRequireLayoutNode2.setGloballyPositionedObservers(layoutNodeRequireLayoutNode2.getGloballyPositionedObservers() - 1);
                }
                if (i2 != 2) {
                    DelegatableNodeKt.requireLayoutNode(node).invalidateOnPositioned$ui();
                }
            }
            if ((NodeKind.m8019constructorimpl(4) & i) != 0 && (node instanceof DrawModifierNode)) {
                DrawModifierNodeKt.invalidateDraw((DrawModifierNode) node);
            }
            if ((NodeKind.m8019constructorimpl(8) & i) != 0 && (node instanceof SemanticsModifierNode)) {
                DelegatableNodeKt.requireLayoutNode(node).setSemanticsInvalidated$ui(true);
            }
            if ((NodeKind.m8019constructorimpl(64) & i) != 0 && (node instanceof ParentDataModifierNode)) {
                ParentDataModifierNodeKt.invalidateParentData((ParentDataModifierNode) node);
            }
            if ((NodeKind.m8019constructorimpl(2048) & i) != 0 && (node instanceof FocusPropertiesModifierNode)) {
                FocusPropertiesModifierNode focusPropertiesModifierNode = (FocusPropertiesModifierNode) node;
                if (specifiesCanFocusProperty(focusPropertiesModifierNode)) {
                    FocusPropertiesModifierNodeKt.invalidateFocusProperties(focusPropertiesModifierNode);
                }
            }
            if ((NodeKind.m8019constructorimpl(4096) & i) != 0 && (node instanceof FocusEventModifierNode)) {
                FocusEventModifierNodeKt.invalidateFocusEvent((FocusEventModifierNode) node);
            }
            if ((i & NodeKind.m8019constructorimpl(2097152)) != 0 && (node instanceof IndirectPointerInputModifierNode) && i2 == 2) {
                ((IndirectPointerInputModifierNode) node).onCancelIndirectPointerInput();
            }
        }
    }

    public static final void autoInvalidateRemovedNode(Modifier.Node node) {
        if (!node.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("autoInvalidateRemovedNode called on unattached node");
        }
        autoInvalidateNodeIncludingDelegates(node, -1, 2);
    }

    public static final void autoInvalidateUpdatedNode(Modifier.Node node) {
        if (!node.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("autoInvalidateUpdatedNode called on unattached node");
        }
        autoInvalidateNodeIncludingDelegates(node, -1, 0);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x008a  */
    /* JADX WARN: Code duplicated, block: B:43:0x0095  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:73:0x0104  */
    /* JADX WARN: Code duplicated, block: B:76:0x010f  */
    /* JADX WARN: Code duplicated, block: B:79:0x011a  */
    public static final int calculateNodeKindSetFrom(Modifier.Node node) {
        int iM8019constructorimpl;
        if (node.getKindSet$ui() != 0) {
            return node.getKindSet$ui();
        }
        MutableObjectIntMap<Object> mutableObjectIntMap = classToKindSetMap;
        Object objClassKeyForObject = Actual_jvmAndAndroidKt.classKeyForObject(node);
        int iFindKeyIndex = mutableObjectIntMap.findKeyIndex(objClassKeyForObject);
        if (iFindKeyIndex >= 0) {
            return mutableObjectIntMap.values[iFindKeyIndex];
        }
        int iM8019constructorimpl2 = NodeKind.m8019constructorimpl(1);
        if (node instanceof LayoutModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(2);
        }
        if (node instanceof DrawModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(4);
        }
        if (node instanceof SemanticsModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(8);
        }
        if (node instanceof PointerInputModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(16);
        }
        if (node instanceof ModifierLocalModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(32);
        }
        if (node instanceof ParentDataModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(64);
        }
        if (node instanceof OnPlacedNode) {
            iM8019constructorimpl = NodeKind.m8019constructorimpl(4194304);
        } else {
            if (!(node instanceof LayoutAwareModifierNode)) {
                if (node instanceof MeasuredSizeAwareModifierNode) {
                    iM8019constructorimpl = NodeKind.m8019constructorimpl(128);
                }
                if (node instanceof GlobalPositionAwareModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(256);
                }
                if (node instanceof ApproachLayoutModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(512);
                }
                if (node instanceof FocusTargetNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(1024);
                }
                if (node instanceof FocusPropertiesModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(2048);
                }
                if (node instanceof FocusEventModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(4096);
                }
                if (node instanceof KeyInputModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(8192);
                }
                if (node instanceof RotaryInputModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(16384);
                }
                if (node instanceof CompositionLocalConsumerModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(32768);
                }
                if (node instanceof SoftKeyboardInterceptionModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(131072);
                }
                if (node instanceof TraversableNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(262144);
                }
                if (node instanceof BringIntoViewModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(524288);
                }
                if (node instanceof UnplacedAwareModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(1048576);
                }
                if (node instanceof IndirectPointerInputModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(2097152);
                }
                if (node instanceof BeyondBoundsLayoutProviderModifierNode) {
                    iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(8388608);
                }
                mutableObjectIntMap.set(objClassKeyForObject, iM8019constructorimpl2);
                return iM8019constructorimpl2;
            }
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(128);
            iM8019constructorimpl = NodeKind.m8019constructorimpl(4194304);
        }
        iM8019constructorimpl2 |= iM8019constructorimpl;
        if (node instanceof GlobalPositionAwareModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(256);
        }
        if (node instanceof ApproachLayoutModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(512);
        }
        if (node instanceof FocusTargetNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(1024);
        }
        if (node instanceof FocusPropertiesModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(2048);
        }
        if (node instanceof FocusEventModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(4096);
        }
        if (node instanceof KeyInputModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(8192);
        }
        if (node instanceof RotaryInputModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(16384);
        }
        if (node instanceof CompositionLocalConsumerModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(32768);
        }
        if (node instanceof SoftKeyboardInterceptionModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(131072);
        }
        if (node instanceof TraversableNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(262144);
        }
        if (node instanceof BringIntoViewModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(524288);
        }
        if (node instanceof UnplacedAwareModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(1048576);
        }
        if (node instanceof IndirectPointerInputModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(2097152);
        }
        if (node instanceof BeyondBoundsLayoutProviderModifierNode) {
            iM8019constructorimpl2 |= NodeKind.m8019constructorimpl(8388608);
        }
        mutableObjectIntMap.set(objClassKeyForObject, iM8019constructorimpl2);
        return iM8019constructorimpl2;
    }

    public static final int calculateNodeKindSetFromIncludingDelegates(Modifier.Node node) {
        if (!(node instanceof DelegatingNode)) {
            return calculateNodeKindSetFrom(node);
        }
        DelegatingNode delegatingNode = (DelegatingNode) node;
        int selfKindSet$ui = delegatingNode.getSelfKindSet$ui();
        for (Modifier.Node delegate$ui = delegatingNode.getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
            selfKindSet$ui |= calculateNodeKindSetFromIncludingDelegates(delegate$ui);
        }
        return selfKindSet$ui;
    }

    /* JADX INFO: renamed from: contains-64DMado, reason: not valid java name */
    public static final boolean m8027contains64DMado(int i, int i2) {
        return (i & i2) != 0;
    }

    /* JADX INFO: renamed from: getIncludeSelfInTraversal-H91voCI, reason: not valid java name */
    public static final boolean m8028getIncludeSelfInTraversalH91voCI(int i) {
        return ((NodeKind.m8019constructorimpl(128) & i) != 0) | ((i & NodeKind.m8019constructorimpl(4194304)) != 0);
    }

    private static /* synthetic */ void getInserted$annotations() {
    }

    private static /* synthetic */ void getRemoved$annotations() {
    }

    private static /* synthetic */ void getUpdated$annotations() {
    }

    /* JADX INFO: renamed from: or-64DMado, reason: not valid java name */
    public static final int m8029or64DMado(int i, int i2) {
        return i | i2;
    }

    private static final boolean specifiesCanFocusProperty(FocusPropertiesModifierNode focusPropertiesModifierNode) {
        CanFocusChecker canFocusChecker = CanFocusChecker.INSTANCE;
        canFocusChecker.reset();
        focusPropertiesModifierNode.applyFocusProperties(canFocusChecker);
        return canFocusChecker.isCanFocusSet();
    }

    public static final int calculateNodeKindSetFrom(Modifier.Element element) {
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1);
        if (element instanceof LayoutModifier) {
            iM8019constructorimpl |= NodeKind.m8019constructorimpl(2);
        }
        if (element instanceof DrawModifier) {
            iM8019constructorimpl |= NodeKind.m8019constructorimpl(4);
        }
        if (element instanceof SemanticsModifier) {
            iM8019constructorimpl |= NodeKind.m8019constructorimpl(8);
        }
        if (element instanceof PointerInputModifier) {
            iM8019constructorimpl |= NodeKind.m8019constructorimpl(16);
        }
        if ((element instanceof ModifierLocalConsumer) || (element instanceof ModifierLocalProvider)) {
            iM8019constructorimpl |= NodeKind.m8019constructorimpl(32);
        }
        if (element instanceof FocusEventModifier) {
            iM8019constructorimpl |= NodeKind.m8019constructorimpl(4096);
        }
        if (element instanceof FocusOrderModifier) {
            iM8019constructorimpl |= NodeKind.m8019constructorimpl(2048);
        }
        if (element instanceof OnGloballyPositionedModifier) {
            iM8019constructorimpl |= NodeKind.m8019constructorimpl(256);
        }
        if (element instanceof ParentDataModifier) {
            iM8019constructorimpl |= NodeKind.m8019constructorimpl(64);
        }
        if (element instanceof OnPlacedModifier) {
            iM8019constructorimpl |= NodeKind.m8019constructorimpl(4194304);
        }
        if (element instanceof OnRemeasuredModifier) {
            iM8019constructorimpl |= NodeKind.m8019constructorimpl(128);
        }
        return element instanceof BringIntoViewModifierNode ? NodeKind.m8019constructorimpl(524288) | iM8019constructorimpl : iM8019constructorimpl;
    }
}
