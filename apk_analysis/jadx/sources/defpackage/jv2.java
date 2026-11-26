package defpackage;

import androidx.compose.animation.core.TransitionKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.material3.NavigationDrawerKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditProcessor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jv2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ jv2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return EditProcessor.generateBatchErrorMessage$lambda$0$0((EditCommand) obj3, (EditProcessor) obj2, (EditCommand) obj);
            case 1:
                return NavigationDrawerKt.Scrim_Bx497Mc$lambda$69$lambda$68((String) obj3, (ll3) obj2, (SemanticsPropertyReceiver) obj);
            case 2:
                return TextFieldSelectionManager_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$0((ll3) obj3, (ll3) obj2, (TextContextMenuSession) obj);
            default:
                return TransitionKt.rememberTransition$lambda$1$0$0(obj3, (y22) obj2, (ll3) obj);
        }
    }
}
