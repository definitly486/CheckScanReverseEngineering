package com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.view;

import android.content.Context;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.CategoriesDialogBinding;
import com.warefly.checkscan.databinding.ItemOnlineShopsCategoryBinding;
import com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesPresenter;
import com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesView;
import com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsFragment;
import defpackage.a71;
import defpackage.aa4;
import defpackage.b71;
import defpackage.bs6;
import defpackage.c71;
import defpackage.d71;
import defpackage.em5;
import defpackage.g81;
import defpackage.qn1;
import defpackage.ud9;
import defpackage.x07;
import defpackage.z61;
import defpackage.ze4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CategoriesDialog extends BaseBottomSheetDialog<CategoriesDialogBinding> implements CategoriesView {
    public static final /* synthetic */ ze4<Object>[] i;
    public final int d;
    public final OnlineShopsFragment.a e;
    public final List<g81> f;
    public final ud9 g;
    public em5 h;
    public CategoriesPresenter presenter;

    static {
        bs6 bs6Var = new bs6(CategoriesDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CategoriesDialog(Context context, int i2, OnlineShopsFragment.a aVar, List list) {
        super(context, R.style.BottomSheetDialogTheme);
        list.getClass();
        this.d = i2;
        this.e = aVar;
        this.f = list;
        this.g = new ud9(CategoriesDialogBinding.class, this);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesView
    public final void checkAllCategories(boolean z) {
        e().incldAllProductsCategory.cbCategory.setChecked(z);
    }

    public final CategoriesDialogBinding e() {
        ze4<Object> ze4Var = i[0];
        ud9 ud9Var = this.g;
        ud9Var.getClass();
        ze4Var.getClass();
        return (CategoriesDialogBinding) ud9Var.d;
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesView
    public final void enableButton(boolean z) {
        e().btnCheck.setEnabled(z);
    }

    public final CategoriesPresenter f() {
        CategoriesPresenter categoriesPresenter = this.presenter;
        if (categoriesPresenter != null) {
            return categoriesPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes != null) {
            attributes.windowAnimations = R.style.FloatingDialogTheme;
        }
        RecyclerView recyclerView = e().rvCategories;
        recyclerView.setDescendantFocusability(131072);
        b71 b71Var = new b71(this, 0);
        c71 c71Var = new c71(this, 0);
        d71 d71Var = new d71(this, 0);
        List<g81> list = this.f;
        em5 em5Var = new em5(list, b71Var, c71Var, d71Var);
        this.h = em5Var;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((g81) obj).a.a() == this.d) {
                arrayList.add(obj);
            }
        }
        g81 g81Var = (g81) qn1.V(arrayList);
        if (g81Var != null) {
            g81Var.b = true;
        }
        em5Var.submitList(arrayList);
        recyclerView.setAdapter(em5Var);
        recyclerView.setItemAnimator(null);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        ItemOnlineShopsCategoryBinding itemOnlineShopsCategoryBinding = e().incldAllProductsCategory;
        itemOnlineShopsCategoryBinding.cbCategory.setChecked(false);
        f().enableButton(true);
        itemOnlineShopsCategoryBinding.cbCategory.setOnClickListener(new a71(0, itemOnlineShopsCategoryBinding, this));
        e().btnCheck.setOnClickListener(new z61(this, 0));
    }

    public final CategoriesPresenter providePresenter() {
        return new CategoriesPresenter(this.e);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesView
    public final void showCategories(List<g81> list) {
        list.getClass();
        em5 em5Var = this.h;
        if (em5Var != null) {
            em5Var.submitList(list);
        }
    }
}
