package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemWithdrawalHeaderLogoBannersBinding implements ViewBinding {
    private final RecyclerView rootView;
    public final RecyclerView rvBanners;

    private ItemWithdrawalHeaderLogoBannersBinding(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.rootView = recyclerView;
        this.rvBanners = recyclerView2;
    }

    public static ItemWithdrawalHeaderLogoBannersBinding bind(View view) {
        if (view != null) {
            RecyclerView recyclerView = (RecyclerView) view;
            return new ItemWithdrawalHeaderLogoBannersBinding(recyclerView, recyclerView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemWithdrawalHeaderLogoBannersBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_withdrawal_header_logo_banners, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public RecyclerView getRoot() {
        return this.rootView;
    }

    public static ItemWithdrawalHeaderLogoBannersBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
