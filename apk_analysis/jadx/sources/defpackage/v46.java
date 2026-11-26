package defpackage;

import androidx.compose.foundation.text.SecureTextFieldController;
import androidx.compose.ui.focus.FocusState;
import java.util.Collection;
import yads.ig6;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class v46 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ v46(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(((Collection) obj2).contains(obj));
            case 1:
                return SecureTextFieldController.focusChangeModifier$lambda$0((SecureTextFieldController) obj2, (FocusState) obj);
            default:
                return ig6.b((ig6) obj2, (String) obj);
        }
    }
}
