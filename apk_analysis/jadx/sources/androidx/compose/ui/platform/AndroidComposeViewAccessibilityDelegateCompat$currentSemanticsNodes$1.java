package androidx.compose.ui.platform;

import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNode_androidKt;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat$currentSemanticsNodes$1 extends gh4 implements nl3<SemanticsNode, Boolean> {
    public static final AndroidComposeViewAccessibilityDelegateCompat$currentSemanticsNodes$1 INSTANCE = new AndroidComposeViewAccessibilityDelegateCompat$currentSemanticsNodes$1();

    public AndroidComposeViewAccessibilityDelegateCompat$currentSemanticsNodes$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public final Boolean invoke(SemanticsNode semanticsNode) {
        return Boolean.valueOf(SemanticsNode_androidKt.isAccessibilityIgnoredLink(semanticsNode));
    }
}
