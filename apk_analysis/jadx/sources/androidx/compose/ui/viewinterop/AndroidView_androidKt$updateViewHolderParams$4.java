package androidx.compose.ui.viewinterop;

import androidx.compose.ui.node.LayoutNode;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidView_androidKt$updateViewHolderParams$4 extends gh4 implements bm3<LayoutNode, SavedStateRegistryOwner, j59> {
    public static final AndroidView_androidKt$updateViewHolderParams$4 INSTANCE = new AndroidView_androidKt$updateViewHolderParams$4();

    public AndroidView_androidKt$updateViewHolderParams$4() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode, SavedStateRegistryOwner savedStateRegistryOwner) {
        invoke2(layoutNode, savedStateRegistryOwner);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutNode layoutNode, SavedStateRegistryOwner savedStateRegistryOwner) {
        AndroidView_androidKt.requireViewFactoryHolder(layoutNode).setSavedStateRegistryOwner(savedStateRegistryOwner);
    }
}
