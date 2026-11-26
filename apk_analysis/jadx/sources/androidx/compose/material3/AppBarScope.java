package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface AppBarScope {
    static /* synthetic */ void clickableItem$default(AppBarScope appBarScope, ll3 ll3Var, bm3 bm3Var, String str, boolean z, int i, Object obj) {
        if (obj != null) {
            defpackage.n1.e("Super calls with default arguments not supported in this target, function: clickableItem");
            return;
        }
        if ((i & 8) != 0) {
            z = true;
        }
        appBarScope.clickableItem(ll3Var, bm3Var, str, z);
    }

    static /* synthetic */ void toggleableItem$default(AppBarScope appBarScope, boolean z, nl3 nl3Var, bm3 bm3Var, String str, boolean z2, int i, Object obj) {
        if (obj != null) {
            defpackage.n1.e("Super calls with default arguments not supported in this target, function: toggleableItem");
            return;
        }
        if ((i & 16) != 0) {
            z2 = true;
        }
        appBarScope.toggleableItem(z, nl3Var, bm3Var, str, z2);
    }

    void clickableItem(ll3<j59> ll3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, String str, boolean z);

    void customItem(bm3<? super Composer, ? super Integer, j59> bm3Var, dm3<? super AppBarMenuState, ? super Composer, ? super Integer, j59> dm3Var);

    void toggleableItem(boolean z, nl3<? super Boolean, j59> nl3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, String str, boolean z2);
}
