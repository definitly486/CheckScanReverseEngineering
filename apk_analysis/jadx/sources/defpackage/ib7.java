package defpackage;

import androidx.compose.foundation.gestures.Scrollable2DNode;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.rf5;
import yads.yl0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ib7 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ib7(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodIsActivityEmbeddedValid$lambda$2((SafeActivityEmbeddingComponentProvider) obj));
            case 1:
                return Boolean.valueOf(((Scrollable2DNode) obj).isAttached());
            case 2:
                return TextFieldSelectionManagerKt.contextMenuBuilder$lambda$0$1((TextFieldSelectionManager) obj);
            default:
                return rf5.a((yl0) obj);
        }
    }
}
