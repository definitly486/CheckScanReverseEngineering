package defpackage;

import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState_androidKt;
import androidx.compose.foundation.text.modifiers.SelectionController;
import androidx.work.impl.WorkDatabase_Impl;
import yads.nq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zm7 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zm7(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return SelectionController.onRemembered$lambda$1((SelectionController) obj);
            case 1:
                return Boolean.valueOf(TextFieldSelectionState_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$2$0$0((TextFieldSelectionState) obj));
            case 2:
                return UseCaseCameraRequestControlImpl.useCaseCameraState_delegate$lambda$0((UseCaseCameraRequestControlImpl) obj);
            case 3:
                return WorkDatabase_Impl._systemIdInfoDao$lambda$3((WorkDatabase_Impl) obj);
            default:
                return nq0.W((nq0) obj);
        }
    }
}
