package androidx.compose.ui.node;

import androidx.compose.ui.layout.LayoutCoordinates;

/* JADX INFO: loaded from: classes2.dex */
public interface GlobalPositionAwareModifierNode extends DelegatableNode {
    void onGloballyPositioned(LayoutCoordinates layoutCoordinates);
}
