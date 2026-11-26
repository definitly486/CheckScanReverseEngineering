package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class AppBarColumnScopeImpl implements AppBarColumnScope, AppBarScope, AppBarItemProvider {
    private final AppBarScopeImpl impl;

    public AppBarColumnScopeImpl(AppBarScopeImpl appBarScopeImpl) {
        this.impl = appBarScopeImpl;
    }

    @Override // androidx.compose.material3.AppBarScope
    public void clickableItem(ll3<j59> ll3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, String str, boolean z) {
        this.impl.clickableItem(ll3Var, bm3Var, str, z);
    }

    @Override // androidx.compose.material3.AppBarScope
    public void customItem(bm3<? super Composer, ? super Integer, j59> bm3Var, dm3<? super AppBarMenuState, ? super Composer, ? super Integer, j59> dm3Var) {
        this.impl.customItem(bm3Var, dm3Var);
    }

    public final AppBarScopeImpl getImpl() {
        return this.impl;
    }

    @Override // androidx.compose.material3.AppBarItemProvider
    public List<AppBarItem> getItems() {
        return this.impl.getItems();
    }

    @Override // androidx.compose.material3.AppBarItemProvider
    public int getItemsCount() {
        return this.impl.getItemsCount();
    }

    @Override // androidx.compose.material3.AppBarScope
    public void toggleableItem(boolean z, nl3<? super Boolean, j59> nl3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, String str, boolean z2) {
        this.impl.toggleableItem(z, nl3Var, bm3Var, str, z2);
    }
}
