package androidx.compose.ui.viewinterop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidView_androidKt$updateViewHolderParams$1 extends gh4 implements bm3<LayoutNode, Modifier, j59> {
    public static final AndroidView_androidKt$updateViewHolderParams$1 INSTANCE = new AndroidView_androidKt$updateViewHolderParams$1();

    public AndroidView_androidKt$updateViewHolderParams$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode, Modifier modifier) {
        invoke2(layoutNode, modifier);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutNode layoutNode, Modifier modifier) {
        AndroidView_androidKt.requireViewFactoryHolder(layoutNode).setModifier(modifier);
    }
}
