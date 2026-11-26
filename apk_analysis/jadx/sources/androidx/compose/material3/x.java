package androidx.compose.material3;

import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class x implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ x(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
        switch (this.b) {
            case 0:
                return DateInputKt.AnonymousClass3.invoke$lambda$1$lambda$0(semanticsPropertyReceiver);
            default:
                return SecureTextFieldKt$OutlinedSecureTextField$1.invoke$lambda$1$lambda$0(semanticsPropertyReceiver);
        }
    }
}
