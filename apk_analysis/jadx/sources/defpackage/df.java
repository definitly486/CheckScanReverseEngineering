package defpackage;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.ViewModelStoreOwner;
import yads.nq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class df implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ df(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return AnchoredDraggableState.targetValue_delegate$lambda$0((AnchoredDraggableState) obj);
            case 1:
                return SavedStateHandleSupport.getSavedStateHandlesVM((ViewModelStoreOwner) obj);
            case 2:
                return Boolean.valueOf(TextFieldDecoratorModifierNode.applySemantics$lambda$7((TextFieldDecoratorModifierNode) obj));
            default:
                return nq0.H((nq0) obj);
        }
    }
}
