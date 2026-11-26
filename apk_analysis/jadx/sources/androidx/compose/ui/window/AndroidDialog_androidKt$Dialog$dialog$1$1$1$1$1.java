package androidx.compose.ui.window;

import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidDialog_androidKt$Dialog$dialog$1$1$1$1$1 extends gh4 implements nl3<SemanticsPropertyReceiver, j59> {
    public static final AndroidDialog_androidKt$Dialog$dialog$1$1$1$1$1 INSTANCE = new AndroidDialog_androidKt$Dialog$dialog$1$1$1$1$1();

    public AndroidDialog_androidKt$Dialog$dialog$1$1$1$1$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        invoke2(semanticsPropertyReceiver);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.dialog(semanticsPropertyReceiver);
    }
}
