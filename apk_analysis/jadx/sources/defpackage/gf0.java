package defpackage;

import androidx.compose.foundation.text.BasicSecureTextFieldKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavControllerViewModelKt;
import yads.cl5;
import yads.dk5;
import yads.ef1;
import yads.zg1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class gf0 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ gf0(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return BasicSecureTextFieldKt.BasicSecureTextField_ltb6GB4$lambda$4$0((SemanticsPropertyReceiver) obj);
            case 1:
                return NavControllerViewModelKt.FACTORY$lambda$1$lambda$0((CreationExtras) obj);
            case 2:
                return cl5.a((dk5) obj);
            case 3:
                return Boolean.valueOf(ef1.a(obj));
            default:
                return Boolean.valueOf(zg1.d(obj));
        }
    }
}
