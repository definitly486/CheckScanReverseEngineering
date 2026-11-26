package defpackage;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import yads.tq3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class mca implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mca(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return tq3.U3((tq3) obj);
            case 1:
                return tq3.E5((tq3) obj);
            case 2:
                return tq3.c7((tq3) obj);
            case 3:
                return tq3.e((tq3) obj);
            case 4:
                return tq3.ka((tq3) obj);
            case 5:
                return tq3.D2((tq3) obj);
            default:
                return TextFieldSelectionManager_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$3$0$1((TextFieldSelectionManager) obj);
        }
    }
}
