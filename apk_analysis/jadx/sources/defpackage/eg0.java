package defpackage;

import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.input.internal.TextFieldKeyEventHandler;
import androidx.compose.foundation.text.input.internal.selection.SelectionMovementDeletionContext;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TimePickerStateImpl;
import androidx.compose.ui.text.TextLayoutResult;
import java.util.List;
import yads.lh1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class eg0 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ eg0(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return BasicTextFieldKt.BasicTextField$lambda$26$0((TextLayoutResult) obj);
            case 1:
                return TextFieldKeyEventHandler.processKeyDownEvent_q0GpTC0$lambda$0$0((SelectionMovementDeletionContext) obj);
            case 2:
                return TextKt.Text_IbK3jfQ$lambda$11$lambda$10((TextLayoutResult) obj);
            case 3:
                return TimePickerStateImpl.Companion.Saver$lambda$1((List) obj);
            default:
                return Boolean.valueOf(lh1.a(obj));
        }
    }
}
