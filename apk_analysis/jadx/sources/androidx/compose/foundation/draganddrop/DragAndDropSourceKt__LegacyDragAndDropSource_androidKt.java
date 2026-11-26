package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class DragAndDropSourceKt__LegacyDragAndDropSource_androidKt {
    @ul2
    public static final Modifier dragAndDropSource(Modifier modifier, nl3<? super DrawScope, j59> nl3Var, bm3<? super DragAndDropSourceScope, ? super e02<? super j59>, ? extends Object> bm3Var) {
        return modifier.then(new LegacyDragAndDropSourceElement(nl3Var, bm3Var));
    }
}
