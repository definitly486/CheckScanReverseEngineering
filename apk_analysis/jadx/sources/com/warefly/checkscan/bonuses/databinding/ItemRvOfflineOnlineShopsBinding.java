package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvOfflineOnlineShopsBinding implements ViewBinding {
    public final LayoutOfflineOnlineShopBinding firstShop;
    private final LinearLayout rootView;
    public final LayoutOfflineOnlineShopBinding secondShop;

    private ItemRvOfflineOnlineShopsBinding(LinearLayout linearLayout, LayoutOfflineOnlineShopBinding layoutOfflineOnlineShopBinding, LayoutOfflineOnlineShopBinding layoutOfflineOnlineShopBinding2) {
        this.rootView = linearLayout;
        this.firstShop = layoutOfflineOnlineShopBinding;
        this.secondShop = layoutOfflineOnlineShopBinding2;
    }

    public static ItemRvOfflineOnlineShopsBinding bind(View view) {
        int i = R.id.first_shop;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.first_shop);
        if (viewFindChildViewById != null) {
            LayoutOfflineOnlineShopBinding layoutOfflineOnlineShopBindingBind = LayoutOfflineOnlineShopBinding.bind(viewFindChildViewById);
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.second_shop);
            if (viewFindChildViewById2 != null) {
                return new ItemRvOfflineOnlineShopsBinding((LinearLayout) view, layoutOfflineOnlineShopBindingBind, LayoutOfflineOnlineShopBinding.bind(viewFindChildViewById2));
            }
            i = R.id.second_shop;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvOfflineOnlineShopsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_offline_online_shops, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvOfflineOnlineShopsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
