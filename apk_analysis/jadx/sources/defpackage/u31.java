package defpackage;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.CardColors;
import androidx.compose.material3.CardElevation;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class u31 implements bm3 {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ int c;
    public final /* synthetic */ dm3 d;
    public final /* synthetic */ int e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;
    public final /* synthetic */ Object i;
    public final /* synthetic */ Object j;

    public /* synthetic */ u31(int i, bm3 bm3Var, dm3 dm3Var, bm3 bm3Var2, bm3 bm3Var3, WindowInsets windowInsets, bm3 bm3Var4, int i2) {
        this.c = i;
        this.f = bm3Var;
        this.d = dm3Var;
        this.g = bm3Var2;
        this.h = bm3Var3;
        this.i = windowInsets;
        this.j = bm3Var4;
        this.e = i2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return CardKt.Card$lambda$0((Modifier) this.f, (Shape) this.g, (CardColors) this.h, (CardElevation) this.i, (BorderStroke) this.j, this.d, this.c, this.e, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return ScaffoldKt.ScaffoldLayout_FMILGgc$lambda$16(this.c, (bm3) this.f, this.d, (bm3) this.g, (bm3) this.h, (WindowInsets) this.i, (bm3) this.j, this.e, (Composer) obj, iIntValue2);
        }
    }

    public /* synthetic */ u31(Modifier modifier, Shape shape, CardColors cardColors, CardElevation cardElevation, BorderStroke borderStroke, dm3 dm3Var, int i, int i2) {
        this.f = modifier;
        this.g = shape;
        this.h = cardColors;
        this.i = cardElevation;
        this.j = borderStroke;
        this.d = dm3Var;
        this.c = i;
        this.e = i2;
    }
}
