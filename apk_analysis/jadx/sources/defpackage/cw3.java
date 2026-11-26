package defpackage;

import androidx.camera.camera2.internal.HighSpeedResolver;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.paging.LegacyPagingSource;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cw3 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ cw3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(HighSpeedResolver.isHighSpeedSupported_delegate$lambda$0((HighSpeedResolver) obj));
            case 1:
                return LegacyPagingSource._init_$lambda$0((LegacyPagingSource) obj);
            case 2:
                op7 op7Var = (op7) obj;
                return Integer.valueOf(x97.a(op7Var, op7Var.k));
            default:
                return TextFieldSelectionManagerKt.contextMenuBuilder$lambda$0$2((TextFieldSelectionManager) obj);
        }
    }
}
