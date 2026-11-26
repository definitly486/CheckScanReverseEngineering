package defpackage;

import androidx.camera.camera2.internal.HighSpeedResolver;
import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.material3.DefaultModalWideNavigationRailOverride;
import androidx.compose.runtime.State;
import yads.fo2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xh2 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xh2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(DefaultModalWideNavigationRailOverride.ModalWideNavigationRail$lambda$3$lambda$2((State) obj));
            case 1:
                return HighSpeedResolver.supportedSizes_delegate$lambda$0((HighSpeedResolver) obj);
            case 2:
                return ScrollableNode.contentInViewNode$lambda$0((ScrollableNode) obj);
            case 3:
                return Boolean.valueOf(TextFieldSelectionManager_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$3$0$0((TextFieldSelectionManager) obj));
            default:
                return fo2.b((fo2) obj);
        }
    }
}
