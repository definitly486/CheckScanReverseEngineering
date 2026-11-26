package defpackage;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.RadioButtonColors;
import androidx.compose.material3.RadioButtonKt;
import androidx.compose.material3.TooltipState;
import androidx.compose.material3.internal.BasicTooltipKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class yh0 implements bm3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Modifier d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ int f;
    public final /* synthetic */ int g;
    public final /* synthetic */ Object h;
    public final /* synthetic */ Object i;
    public final /* synthetic */ Object j;

    public /* synthetic */ yh0(boolean z, ll3 ll3Var, Modifier modifier, boolean z2, RadioButtonColors radioButtonColors, MutableInteractionSource mutableInteractionSource, int i, int i2) {
        this.c = z;
        this.h = ll3Var;
        this.d = modifier;
        this.e = z2;
        this.i = radioButtonColors;
        this.j = mutableInteractionSource;
        this.f = i;
        this.g = i2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return BasicTooltipKt.WrappedAnchor$lambda$7(this.c, (TooltipState) this.h, (MutableState) this.i, this.e, this.d, (bm3) this.j, this.f, this.g, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return RadioButtonKt.RadioButton$lambda$2(this.c, (ll3) this.h, this.d, this.e, (RadioButtonColors) this.i, (MutableInteractionSource) this.j, this.f, this.g, (Composer) obj, iIntValue2);
        }
    }

    public /* synthetic */ yh0(boolean z, TooltipState tooltipState, MutableState mutableState, boolean z2, Modifier modifier, bm3 bm3Var, int i, int i2) {
        this.c = z;
        this.h = tooltipState;
        this.i = mutableState;
        this.e = z2;
        this.d = modifier;
        this.j = bm3Var;
        this.f = i;
        this.g = i2;
    }
}
