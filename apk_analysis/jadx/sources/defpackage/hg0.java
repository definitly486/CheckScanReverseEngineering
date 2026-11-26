package defpackage;

import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.ui.text.TextLayoutResult;
import yads.cc2;
import yads.lh1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hg0 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ hg0(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return BasicTextFieldKt.BasicTextField$lambda$29$0((TextLayoutResult) obj);
            case 1:
                return TextFieldKeyInput.process_ZmokQxo$lambda$1$0((TextFieldPreparedSelection) obj);
            case 2:
                return Boolean.valueOf(cc2.a(obj));
            default:
                return Boolean.valueOf(lh1.d(obj));
        }
    }
}
