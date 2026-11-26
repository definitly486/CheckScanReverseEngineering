package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class DragAndDropSourceKt__DragAndDropSourceKt {
    public static final Modifier dragAndDropSource(Modifier modifier, nl3<? super Offset, DragAndDropTransferData> nl3Var) {
        return modifier.then(new DragAndDropSourceWithDefaultShadowElement(DragAndDropSourceDefaults.INSTANCE.getDefaultStartDetector(), nl3Var));
    }

    public static final Modifier dragAndDropSource(Modifier modifier, nl3<? super DrawScope, j59> nl3Var, nl3<? super Offset, DragAndDropTransferData> nl3Var2) {
        return modifier.then(new DragAndDropSourceElement(nl3Var, DragAndDropSourceDefaults.INSTANCE.getDefaultStartDetector(), nl3Var2));
    }
}
