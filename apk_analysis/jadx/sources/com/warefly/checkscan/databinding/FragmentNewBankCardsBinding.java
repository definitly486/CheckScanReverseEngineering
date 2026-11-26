package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarBackIconBinding;
import com.warefly.checkscan.design.resources.databinding.LayoutPreviewsLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentNewBankCardsBinding implements ViewBinding {
    public final ImageView ivNoData;
    private final LinearLayout rootView;
    public final RecyclerView rvCards;
    public final LayoutToolbarBackIconBinding toolbar;
    public final TextView tvDescription;
    public final TextView tvNoData;
    public final TextView tvTitle;
    public final LayoutPreviewsLoadingBinding viewLoading;

    private FragmentNewBankCardsBinding(LinearLayout linearLayout, ImageView imageView, RecyclerView recyclerView, LayoutToolbarBackIconBinding layoutToolbarBackIconBinding, TextView textView, TextView textView2, TextView textView3, LayoutPreviewsLoadingBinding layoutPreviewsLoadingBinding) {
        this.rootView = linearLayout;
        this.ivNoData = imageView;
        this.rvCards = recyclerView;
        this.toolbar = layoutToolbarBackIconBinding;
        this.tvDescription = textView;
        this.tvNoData = textView2;
        this.tvTitle = textView3;
        this.viewLoading = layoutPreviewsLoadingBinding;
    }

    public static FragmentNewBankCardsBinding bind(View view) {
        int i = R.id.iv_no_data;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_no_data);
        if (imageView != null) {
            i = R.id.rv_cards;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_cards);
            if (recyclerView != null) {
                i = R.id.toolbar;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
                if (viewFindChildViewById != null) {
                    LayoutToolbarBackIconBinding layoutToolbarBackIconBindingBind = LayoutToolbarBackIconBinding.bind(viewFindChildViewById);
                    i = R.id.tv_description;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView != null) {
                        i = R.id.tv_no_data;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_no_data);
                        if (textView2 != null) {
                            i = R.id.tv_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView3 != null) {
                                i = R.id.view_loading;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_loading);
                                if (viewFindChildViewById2 != null) {
                                    return new FragmentNewBankCardsBinding((LinearLayout) view, imageView, recyclerView, layoutToolbarBackIconBindingBind, textView, textView2, textView3, LayoutPreviewsLoadingBinding.bind(viewFindChildViewById2));
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentNewBankCardsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_new_bank_cards, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentNewBankCardsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
