package androidx.compose.ui.viewinterop;

import androidx.compose.ui.node.LayoutNode;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes2.dex */
public final class AndroidView_androidKt$AndroidView$3$1<T> extends gh4 implements bm3<LayoutNode, nl3<? super T, ? extends j59>, j59> {
    public static final AndroidView_androidKt$AndroidView$3$1 INSTANCE = new AndroidView_androidKt$AndroidView$3$1();

    public AndroidView_androidKt$AndroidView$3$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode, Object obj) {
        invoke(layoutNode, (nl3) obj);
        return j59.a;
    }

    public final void invoke(LayoutNode layoutNode, nl3<? super T, j59> nl3Var) {
        AndroidView_androidKt.requireViewFactoryHolder(layoutNode).setUpdateBlock(nl3Var);
    }
}
