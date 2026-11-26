package defpackage;

import androidx.camera.camera2.pipe.core.Threads;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ro4 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ro4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return LegacyTextInputMethodRequest.baseInputConnection_delegate$lambda$0((LegacyTextInputMethodRequest) obj);
            case 1:
                return TextFieldSelectionManager_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$3$0$2((TextFieldSelectionManager) obj);
            default:
                return Threads._camera2Handler$lambda$0((ll3) obj);
        }
    }
}
