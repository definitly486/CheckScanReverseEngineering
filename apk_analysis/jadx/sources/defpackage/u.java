package defpackage;

import android.text.Spanned;
import android.widget.TextView;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.runtime.State;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import yads.bn1;
import yads.c26;
import yads.g82;
import yads.jk1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ u(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return v.toString$lambda$0((v) obj2, obj);
            case 1:
                return DraggableKt.rememberDraggableState$lambda$0$0((State) obj2, ((Float) obj).floatValue());
            case 2:
                return PagerState.prefetchState$lambda$0((PagerState) obj2, (NestedPrefetchScope) obj);
            case 3:
                return TextFieldDecoratorModifierNode.dragAndDropNode$lambda$5((TextFieldDecoratorModifierNode) obj2, (DragAndDropEvent) obj);
            case 4:
                return UseCaseManager.resumeDeferredComponentCreation$lambda$0$0((CameraGraph) obj2, (CameraGraph.Config) obj);
            case 5:
                return c26.a((c26) obj2, ((Boolean) obj).booleanValue());
            case 6:
                return g82.a((TextView) obj2, (Spanned) obj);
            default:
                return jk1.a((bn1) obj2, ((Boolean) obj).booleanValue());
        }
    }
}
