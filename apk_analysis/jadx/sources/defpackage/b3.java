package defpackage;

import android.view.View;
import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.material3.DateRangePickerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.internal.AccessibilityUtilKt;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import yads.a92;
import yads.sz;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ b3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AccessibilityUtilKt.IncreaseVerticalSemanticsBounds$lambda$5((SemanticsPropertyReceiver) obj);
            case 1:
                return DateRangePickerKt.SwitchableDateEntryContent_eVtQiho$lambda$8$lambda$7((SemanticsPropertyReceiver) obj);
            case 2:
                return IconKt.Icon$lambda$12$lambda$11$lambda$9$lambda$7((ContentDrawScope) obj);
            case 3:
                return TextFieldKeyInput.process_ZmokQxo$lambda$1$6((TextFieldPreparedSelection) obj);
            case 4:
                return Boolean.valueOf(a92.a(obj));
            default:
                return sz.b((View) obj);
        }
    }
}
