package defpackage;

import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.material3.SliderState;
import yads.nq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dk implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ dk(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(AndroidSelectionHandles_androidKt.SelectionHandle_wLIcFTc$lambda$1$0$0$0$0((OffsetProvider) obj));
            case 1:
                return Boolean.valueOf(BasicTextFieldKt.TextFieldCursorHandle$lambda$0$0((TextFieldSelectionState) obj));
            case 2:
                return SliderState.gestureEndAction$lambda$1((SliderState) obj);
            default:
                return nq0.i((nq0) obj);
        }
    }
}
