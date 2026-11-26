package defpackage;

import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.input.internal.TextLayoutState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.SelectionManager_androidKt;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.room.SharedSQLiteStatement;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.bo1;
import yads.gf0;
import yads.nq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jg0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jg0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return BasicTextFieldKt.TextFieldSelectionHandles$lambda$0$0((TextFieldSelectionState) obj);
            case 1:
                return Float.valueOf(MultiParagraphIntrinsics.maxIntrinsicWidth_delegate$lambda$0((MultiParagraphIntrinsics) obj));
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodClearEmbeddedActivityWindowInfoCallbackValid$lambda$41((SafeActivityEmbeddingComponentProvider) obj));
            case 3:
                return SelectionManager_androidKt.addSelectionContainerTextContextMenuComponents$lambda$0$1$0$2((SelectionManager) obj);
            case 4:
                return ((SharedSQLiteStatement) obj).createNewStatement();
            case 5:
                return TextLayoutState.layoutWithNewMeasureInputs__hBUhpc$lambda$0$0((TextLayoutState) obj);
            case 6:
                return bo1.c((bo1) obj);
            case 7:
                return gf0.h((gf0) obj);
            default:
                return nq0.R((nq0) obj);
        }
    }
}
