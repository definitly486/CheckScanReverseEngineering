package defpackage;

import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider_androidKt;
import androidx.compose.material3.SnackbarData;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class uk implements bm3 {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ Modifier c;
    public final /* synthetic */ int d;
    public final /* synthetic */ int e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ cm3 g;

    public /* synthetic */ uk(SnackbarData snackbarData, Modifier modifier, dm3 dm3Var, int i, int i2) {
        this.f = snackbarData;
        this.c = modifier;
        this.g = dm3Var;
        this.d = i;
        this.e = i2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return AndroidTextContextMenuToolbarProvider_androidKt.ProvidePlatformTextContextMenuToolbar$lambda$6(this.c, (nl3) this.f, (bm3) this.g, this.d, this.e, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return SnackbarHostKt.FadeInFadeOutWithScale$lambda$7((SnackbarData) this.f, this.c, (dm3) this.g, this.d, this.e, (Composer) obj, iIntValue2);
        }
    }

    public /* synthetic */ uk(Modifier modifier, nl3 nl3Var, bm3 bm3Var, int i, int i2) {
        this.c = modifier;
        this.f = nl3Var;
        this.g = bm3Var;
        this.d = i;
        this.e = i2;
    }
}
