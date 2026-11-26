package defpackage;

import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.foundation.text.selection.SelectionRegistrarImpl;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.material3.SheetDefaultsKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.ui.text.SaversKt;
import androidx.lifecycle.viewmodel.CreationExtrasKt;
import androidx.lifecycle.viewmodel.MutableCreationExtras;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class n62 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ n62(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return CreationExtrasKt.CreationExtras$lambda$0((MutableCreationExtras) obj);
            case 1:
                return SaversKt.TextAlignSaver$lambda$1(obj);
            case 2:
                return SelectionRegistrarImpl.Saver$lambda$1(((Long) obj).longValue());
            case 3:
                return Boolean.valueOf(SheetDefaultsKt.rememberSheetState_AGcomas$lambda$3$lambda$2((SheetValue) obj));
            default:
                return TextFieldKeyInput.process_ZmokQxo$lambda$1$5((TextFieldPreparedSelection) obj);
        }
    }
}
