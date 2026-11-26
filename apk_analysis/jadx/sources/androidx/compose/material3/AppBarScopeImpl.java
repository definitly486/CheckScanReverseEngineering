package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AppBarScopeImpl implements AppBarScope, AppBarItemProvider {
    public static final int $stable = 8;
    private final List<AppBarItem> items = new ArrayList();

    @Override // androidx.compose.material3.AppBarScope
    public void clickableItem(ll3<j59> ll3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, String str, boolean z) {
        getItems().add(new ClickableAppBarItem(ll3Var, bm3Var, z, str));
    }

    @Override // androidx.compose.material3.AppBarScope
    public void customItem(bm3<? super Composer, ? super Integer, j59> bm3Var, dm3<? super AppBarMenuState, ? super Composer, ? super Integer, j59> dm3Var) {
        getItems().add(new CustomAppBarItem(bm3Var, dm3Var));
    }

    @Override // androidx.compose.material3.AppBarItemProvider
    public List<AppBarItem> getItems() {
        return this.items;
    }

    @Override // androidx.compose.material3.AppBarItemProvider
    public int getItemsCount() {
        return getItems().size();
    }

    @Override // androidx.compose.material3.AppBarScope
    public void toggleableItem(boolean z, nl3<? super Boolean, j59> nl3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, String str, boolean z2) {
        getItems().add(new ToggleableAppBarItem(z, nl3Var, bm3Var, z2, str));
    }
}
