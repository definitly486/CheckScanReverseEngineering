package androidx.compose.ui.viewinterop;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Density;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidView_androidKt$updateViewHolderParams$2 extends gh4 implements bm3<LayoutNode, Density, j59> {
    public static final AndroidView_androidKt$updateViewHolderParams$2 INSTANCE = new AndroidView_androidKt$updateViewHolderParams$2();

    public AndroidView_androidKt$updateViewHolderParams$2() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode, Density density) {
        invoke2(layoutNode, density);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutNode layoutNode, Density density) {
        AndroidView_androidKt.requireViewFactoryHolder(layoutNode).setDensity(density);
    }
}
