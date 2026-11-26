package defpackage;

import androidx.compose.foundation.layout.FlowColumnOverflowScopeImpl;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState_androidKt;
import androidx.compose.foundation.text.modifiers.SelectionController;
import androidx.window.SafeWindowExtensionsProvider;
import androidx.work.impl.WorkDatabase_Impl;
import yads.nq0;
import yads.vq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kd3 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kd3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Integer.valueOf(FlowColumnOverflowScopeImpl.totalItemCount_delegate$lambda$0((FlowColumnOverflowScopeImpl) obj));
            case 1:
                return SafeWindowExtensionsProvider.isWindowExtensionsPresent$lambda$1((SafeWindowExtensionsProvider) obj);
            case 2:
                return SelectionController.modifier$lambda$0((SelectionController) obj);
            case 3:
                return TextFieldSelectionState_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$2$0$1((TextFieldSelectionState) obj);
            case 4:
                return WorkDatabase_Impl._workNameDao$lambda$4((WorkDatabase_Impl) obj);
            case 5:
                return nq0.b0((nq0) obj);
            default:
                return vq0.d((vq0) obj);
        }
    }
}
