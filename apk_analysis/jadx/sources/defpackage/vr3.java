package defpackage;

import androidx.camera.camera2.pipe.internal.GraphSessionLock;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import yads.c26;
import yads.zd2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vr3 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vr3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return GraphSessionLock.asyncUndispatched$lambda$0((nb4) obj2, (Throwable) obj);
            case 1:
                return TextFieldDecoratorModifierNode.dragAndDropNode$lambda$3((TextFieldDecoratorModifierNode) obj2, (DragAndDropEvent) obj);
            default:
                return c26.b((c26) obj2, (zd2) obj);
        }
    }
}
