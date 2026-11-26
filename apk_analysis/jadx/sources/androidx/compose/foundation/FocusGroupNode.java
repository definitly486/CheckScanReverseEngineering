package androidx.compose.foundation;

import androidx.compose.ui.focus.FocusTargetModifierNodeKt;
import androidx.compose.ui.focus.Focusability;
import androidx.compose.ui.node.DelegatingNode;

/* JADX INFO: loaded from: classes.dex */
final class FocusGroupNode extends DelegatingNode {
    public FocusGroupNode() {
        delegate(FocusTargetModifierNodeKt.m5899FocusTargetModifierNodePYyLHbc$default(Focusability.Companion.m5922getNeverLCbbffg(), null, 2, null));
    }
}
