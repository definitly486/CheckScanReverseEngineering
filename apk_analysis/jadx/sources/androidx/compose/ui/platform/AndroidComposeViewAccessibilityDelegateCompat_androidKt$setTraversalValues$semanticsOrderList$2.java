package androidx.compose.ui.platform;

import android.content.res.Resources;
import androidx.compose.ui.semantics.SemanticsNode;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2 extends gh4 implements nl3<SemanticsNode, Boolean> {
    final /* synthetic */ Resources $resources;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2(Resources resources) {
        super(1);
        this.$resources = resources;
    }

    @Override // defpackage.nl3
    public final Boolean invoke(SemanticsNode semanticsNode) {
        return Boolean.valueOf(AndroidComposeViewAccessibilityDelegateCompat_androidKt.isScreenReaderFocusable(semanticsNode, this.$resources));
    }
}
