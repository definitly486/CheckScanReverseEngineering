package com.warefly.checkscan.presentation.flows.desktop.view;

import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.warefly.checkscan.R;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends Animatable2Compat.AnimationCallback {
    public final /* synthetic */ DesktopFlowFragment a;

    public a(DesktopFlowFragment desktopFlowFragment) {
        this.a = desktopFlowFragment;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        ze4<Object>[] ze4VarArr = DesktopFlowFragment.s;
        DesktopFlowFragment desktopFlowFragment = this.a;
        Menu menu = desktopFlowFragment.p().bottomNavigation.getMenu();
        menu.getClass();
        MenuItem menuItemFindItem = menu.findItem(R.id.balance);
        menuItemFindItem.setTitle("Баланс");
        menuItemFindItem.setIcon(R.drawable.ic_balance_25);
        desktopFlowFragment.p().menuCostyl.setVisibility(8);
        super.onAnimationEnd(drawable);
    }
}
