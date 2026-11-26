package defpackage;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.material3.DefaultModalWideNavigationRailOverride;
import androidx.compose.material3.ModalWideNavigationRailOverrideScope;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class yh2 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ yh2(int i, Object obj, Object obj2) {
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
                return DefaultModalWideNavigationRailOverride.ModalWideNavigationRail$lambda$16$lambda$15((x81) obj2, (ModalWideNavigationRailOverrideScope) obj);
            default:
                return TextFieldSelectionManager_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem$1((y22) obj2, (nl3) obj);
        }
    }
}
