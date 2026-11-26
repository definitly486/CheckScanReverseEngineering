package androidx.compose.ui.platform;

import androidx.collection.IntObjectMap;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1 extends gh4 implements nl3<SemanticsNode, Boolean> {
    final /* synthetic */ IntObjectMap<SemanticsNodeWithAdjustedBounds> $currentSemanticsNodes;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1(IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap) {
        super(1);
        this.$currentSemanticsNodes = intObjectMap;
    }

    @Override // defpackage.nl3
    public final Boolean invoke(SemanticsNode semanticsNode) {
        return Boolean.valueOf(this.$currentSemanticsNodes.containsKey(semanticsNode.getId()));
    }
}
