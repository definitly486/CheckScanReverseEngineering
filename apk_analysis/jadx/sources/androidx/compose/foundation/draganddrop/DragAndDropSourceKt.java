package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class DragAndDropSourceKt {
    public static final Modifier dragAndDropSource(Modifier modifier, nl3<? super Offset, DragAndDropTransferData> nl3Var) {
        return DragAndDropSourceKt__DragAndDropSourceKt.dragAndDropSource(modifier, nl3Var);
    }

    public static final Modifier dragAndDropSource(Modifier modifier, nl3<? super DrawScope, j59> nl3Var, nl3<? super Offset, DragAndDropTransferData> nl3Var2) {
        return DragAndDropSourceKt__DragAndDropSourceKt.dragAndDropSource(modifier, nl3Var, nl3Var2);
    }

    @ul2
    public static final Modifier dragAndDropSource(Modifier modifier, nl3<? super DrawScope, j59> nl3Var, bm3<? super DragAndDropSourceScope, ? super e02<? super j59>, ? extends Object> bm3Var) {
        return DragAndDropSourceKt__LegacyDragAndDropSource_androidKt.dragAndDropSource(modifier, nl3Var, bm3Var);
    }
}
