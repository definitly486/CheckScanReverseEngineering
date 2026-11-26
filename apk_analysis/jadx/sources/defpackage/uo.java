package defpackage;

import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.DefaultTwoRowsTopAppBarOverride;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class uo implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ ll3 c;

    public /* synthetic */ uo(ll3 ll3Var, int i) {
        this.b = i;
        this.c = ll3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        ll3 ll3Var = this.c;
        switch (i) {
            case 0:
                return AppBarKt.TopAppBarLayout_lyUyIHI$lambda$51$lambda$48$lambda$47(ll3Var, (GraphicsLayerScope) obj);
            default:
                return DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar$lambda$18$lambda$17(ll3Var, (DrawScope) obj);
        }
    }
}
