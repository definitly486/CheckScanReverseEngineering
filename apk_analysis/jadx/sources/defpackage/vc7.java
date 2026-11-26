package defpackage;

import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.intl.Locale;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vc7 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ vc7(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        SaverScope saverScope = (SaverScope) obj;
        switch (this.b) {
            case 0:
                return SaversKt.LocaleSaver$lambda$0(saverScope, (Locale) obj2);
            default:
                return TextFieldScrollerPosition.Saver$lambda$0(saverScope, (TextFieldScrollerPosition) obj2);
        }
    }
}
