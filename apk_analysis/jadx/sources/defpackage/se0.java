package defpackage;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.CheckboxColors;
import androidx.compose.material3.CheckboxKt;
import androidx.compose.material3.internal.BasicEdgeToEdgeDialog_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.window.DialogProperties;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class se0 implements bm3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Modifier d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ int f;
    public final /* synthetic */ int g;
    public final /* synthetic */ cm3 h;
    public final /* synthetic */ Object i;
    public final /* synthetic */ Object j;

    public /* synthetic */ se0(ll3 ll3Var, Modifier modifier, DialogProperties dialogProperties, boolean z, boolean z2, dm3 dm3Var, int i, int i2) {
        this.h = ll3Var;
        this.d = modifier;
        this.i = dialogProperties;
        this.c = z;
        this.e = z2;
        this.j = dm3Var;
        this.f = i;
        this.g = i2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return BasicEdgeToEdgeDialog_androidKt.BasicEdgeToEdgeDialog$lambda$12((ll3) this.h, this.d, (DialogProperties) this.i, this.c, this.e, (dm3) this.j, this.f, this.g, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return CheckboxKt.Checkbox$lambda$3(this.c, (nl3) this.h, this.d, this.e, (CheckboxColors) this.i, (MutableInteractionSource) this.j, this.f, this.g, (Composer) obj, iIntValue2);
        }
    }

    public /* synthetic */ se0(boolean z, nl3 nl3Var, Modifier modifier, boolean z2, CheckboxColors checkboxColors, MutableInteractionSource mutableInteractionSource, int i, int i2) {
        this.c = z;
        this.h = nl3Var;
        this.d = modifier;
        this.e = z2;
        this.i = checkboxColors;
        this.j = mutableInteractionSource;
        this.f = i;
        this.g = i2;
    }
}
