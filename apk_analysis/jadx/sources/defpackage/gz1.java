package defpackage;

import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.material3.MotionScheme;
import androidx.compose.material3.Shapes;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.window.PopupPositionProvider;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gz1 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;
    public final /* synthetic */ cm3 i;

    public /* synthetic */ gz1(Object obj, Object obj2, Object obj3, Object obj4, cm3 cm3Var, int i, int i2, int i3) {
        this.b = i3;
        this.e = obj;
        this.f = obj2;
        this.g = obj3;
        this.h = obj4;
        this.i = cm3Var;
        this.c = i;
        this.d = i2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return ContextMenuUiKt.ContextMenuPopup$lambda$2((PopupPositionProvider) this.e, (ll3) this.f, (Modifier) this.g, (ContextMenuColors) this.h, (nl3) this.i, this.c, this.d, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return MaterialThemeKt.MaterialExpressiveTheme$lambda$2((ColorScheme) this.e, (MotionScheme) this.f, (Shapes) this.g, (Typography) this.h, (bm3) this.i, this.c, this.d, (Composer) obj, iIntValue2);
        }
    }
}
