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
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemOfferCardBinding implements ViewBinding {
    public final TextView btnInfoAboutCard;
    public final TextView btnIssueCardOffer;
    public final ImageView ivCardBanner;
    public final ItemTransferPhoneMyCardBinding layoutTransferPhoneMyCard;
    private final LinearLayout rootView;
    public final RecyclerView rvCardOptions;
    public final TextView tvTitle;

    private ItemOfferCardBinding(LinearLayout linearLayout, TextView textView, TextView textView2, ImageView imageView, ItemTransferPhoneMyCardBinding itemTransferPhoneMyCardBinding, RecyclerView recyclerView, TextView textView3) {
        this.rootView = linearLayout;
        this.btnInfoAboutCard = textView;
        this.btnIssueCardOffer = textView2;
        this.ivCardBanner = imageView;
        this.layoutTransferPhoneMyCard = itemTransferPhoneMyCardBinding;
        this.rvCardOptions = recyclerView;
        this.tvTitle = textView3;
    }

    public static ItemOfferCardBinding bind(View view) {
        int i = R.id.btn_info_about_card;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_info_about_card);
        if (textView != null) {
            i = R.id.btn_issue_card_offer;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_issue_card_offer);
            if (textView2 != null) {
                i = R.id.iv_card_banner;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_card_banner);
                if (imageView != null) {
                    i = R.id.layout_transfer_phone_my_card;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.layout_transfer_phone_my_card);
                    if (viewFindChildViewById != null) {
                        ItemTransferPhoneMyCardBinding itemTransferPhoneMyCardBindingBind = ItemTransferPhoneMyCardBinding.bind(viewFindChildViewById);
                        i = R.id.rv_card_options;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_card_options);
                        if (recyclerView != null) {
                            i = R.id.tv_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView3 != null) {
                                return new ItemOfferCardBinding((LinearLayout) view, textView, textView2, imageView, itemTransferPhoneMyCardBindingBind, recyclerView, textView3);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemOfferCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_offer_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemOfferCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
