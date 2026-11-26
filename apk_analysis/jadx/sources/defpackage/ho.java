package defpackage;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ListItemColors;
import androidx.compose.material3.ListItemKt;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ho implements bm3 {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ bm3 c;
    public final /* synthetic */ Modifier d;
    public final /* synthetic */ bm3 e;
    public final /* synthetic */ float f;
    public final /* synthetic */ float g;
    public final /* synthetic */ int h;
    public final /* synthetic */ int i;
    public final /* synthetic */ cm3 j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ ho(bm3 bm3Var, Modifier modifier, bm3 bm3Var2, bm3 bm3Var3, bm3 bm3Var4, bm3 bm3Var5, ListItemColors listItemColors, float f, float f2, int i, int i2) {
        this.c = bm3Var;
        this.d = modifier;
        this.e = bm3Var2;
        this.j = bm3Var3;
        this.k = bm3Var4;
        this.l = bm3Var5;
        this.m = listItemColors;
        this.f = f;
        this.g = f2;
        this.h = i;
        this.i = i2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return AppBarKt.LargeTopAppBar_oKE7A98$lambda$9(this.c, this.d, this.e, (dm3) this.j, this.f, this.g, (WindowInsets) this.k, (TopAppBarColors) this.l, (TopAppBarScrollBehavior) this.m, this.h, this.i, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return ListItemKt.ListItem_HXNGIdc$lambda$6(this.c, this.d, this.e, (bm3) this.j, (bm3) this.k, (bm3) this.l, (ListItemColors) this.m, this.f, this.g, this.h, this.i, (Composer) obj, iIntValue2);
        }
    }

    public /* synthetic */ ho(bm3 bm3Var, Modifier modifier, bm3 bm3Var2, dm3 dm3Var, float f, float f2, WindowInsets windowInsets, TopAppBarColors topAppBarColors, TopAppBarScrollBehavior topAppBarScrollBehavior, int i, int i2) {
        this.c = bm3Var;
        this.d = modifier;
        this.e = bm3Var2;
        this.j = dm3Var;
        this.f = f;
        this.g = f2;
        this.k = windowInsets;
        this.l = topAppBarColors;
        this.m = topAppBarScrollBehavior;
        this.h = i;
        this.i = i2;
    }
}
