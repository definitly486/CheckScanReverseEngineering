package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class AndroidDragAndDropSource_androidKt__LegacyDragAndDropSourceWithDefaultPainter_androidKt {
    @ul2
    public static final Modifier dragAndDropSource(Modifier modifier, bm3<? super DragAndDropSourceScope, ? super e02<? super j59>, ? extends Object> bm3Var) {
        return modifier.then(new LegacyDragAndDropSourceWithDefaultShadowElement(bm3Var));
    }
}
