package defpackage;

import androidx.camera.camera2.impl.UseCaseSurfaceManager;
import androidx.compose.foundation.text.KeyCommand;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.foundation.text.selection.SelectionGesturesKt;
import androidx.compose.material3.NavigationItemKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import yads.cn1;
import yads.vq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uk5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ uk5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return NavigationItemKt.AnimatedNavigationItem_DQd_Gtc$lambda$15$lambda$14((MutableIntState) obj2, (IntSize) obj);
            case 1:
                return SelectionGesturesKt.touchSelectionSubsequentPress$lambda$0((TextDragObserver) obj2, (PointerInputChange) obj);
            case 2:
                return TextFieldDecoratorModifierNode.clipboardKeyCommandsHandler$lambda$0((TextFieldDecoratorModifierNode) obj2, (KeyCommand) obj);
            case 3:
                return UseCaseSurfaceManager.setupAsync$lambda$0$3$0((List) obj2, (Throwable) obj);
            default:
                return Boolean.valueOf(vq0.a((fr) obj2, (cn1) obj));
        }
    }
}
