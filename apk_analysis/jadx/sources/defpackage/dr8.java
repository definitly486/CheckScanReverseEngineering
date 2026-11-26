package defpackage;

import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import yads.h81;
import yads.lh1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dr8 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ dr8(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return TextFieldKeyInput.process_ZmokQxo$lambda$1$2((TextFieldPreparedSelection) obj);
            case 1:
                return h81.a((String) obj);
            default:
                return Boolean.valueOf(lh1.f(obj));
        }
    }
}
