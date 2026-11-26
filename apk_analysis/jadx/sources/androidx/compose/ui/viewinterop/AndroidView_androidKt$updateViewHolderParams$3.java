package androidx.compose.ui.viewinterop;

import androidx.compose.ui.node.LayoutNode;
import androidx.lifecycle.LifecycleOwner;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidView_androidKt$updateViewHolderParams$3 extends gh4 implements bm3<LayoutNode, LifecycleOwner, j59> {
    public static final AndroidView_androidKt$updateViewHolderParams$3 INSTANCE = new AndroidView_androidKt$updateViewHolderParams$3();

    public AndroidView_androidKt$updateViewHolderParams$3() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode, LifecycleOwner lifecycleOwner) {
        invoke2(layoutNode, lifecycleOwner);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutNode layoutNode, LifecycleOwner lifecycleOwner) {
        AndroidView_androidKt.requireViewFactoryHolder(layoutNode).setLifecycleOwner(lifecycleOwner);
    }
}
