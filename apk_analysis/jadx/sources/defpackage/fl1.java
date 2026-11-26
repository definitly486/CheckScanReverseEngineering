package defpackage;

import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState_androidKt;
import androidx.compose.material3.AppBarMenuState;
import androidx.compose.material3.ClickableAppBarItem;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class fl1 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ fl1(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return ClickableAppBarItem.MenuContent$lambda$2$lambda$1((ClickableAppBarItem) obj2, (AppBarMenuState) obj);
            default:
                return TextFieldSelectionState_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem$1((y22) obj2, (nl3) obj);
        }
    }
}
