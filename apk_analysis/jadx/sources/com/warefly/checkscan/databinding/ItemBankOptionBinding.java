package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemBankOptionBinding implements ViewBinding {
    public final Barrier barrierButtons;
    public final Barrier barrierCardHeader;
    public final TextView btnDescription;
    public final TextView btnOrderCard;
    public final Group groupCustomCardPreview;
    public final ImageView ivCardBackground;
    public final ImageView ivCardPreview;
    public final ImageView ivCardShade;
    private final ConstraintLayout rootView;
    public final RecyclerView rvCardDescription;
    public final TextView tvBankOptionName;
    public final TextView tvCardPreviewTitle;

    private ItemBankOptionBinding(ConstraintLayout constraintLayout, Barrier barrier, Barrier barrier2, TextView textView, TextView textView2, Group group, ImageView imageView, ImageView imageView2, ImageView imageView3, RecyclerView recyclerView, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.barrierButtons = barrier;
        this.barrierCardHeader = barrier2;
        this.btnDescription = textView;
        this.btnOrderCard = textView2;
        this.groupCustomCardPreview = group;
        this.ivCardBackground = imageView;
        this.ivCardPreview = imageView2;
        this.ivCardShade = imageView3;
        this.rvCardDescription = recyclerView;
        this.tvBankOptionName = textView3;
        this.tvCardPreviewTitle = textView4;
    }

    public static ItemBankOptionBinding bind(View view) {
        int i = R.id.barrier_buttons;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_buttons);
        if (barrier != null) {
            i = R.id.barrier_card_header;
            Barrier barrier2 = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_card_header);
            if (barrier2 != null) {
                i = R.id.btn_description;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_description);
                if (textView != null) {
                    i = R.id.btn_order_card;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_order_card);
                    if (textView2 != null) {
                        i = R.id.group_custom_card_preview;
                        Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_custom_card_preview);
                        if (group != null) {
                            i = R.id.iv_card_background;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_card_background);
                            if (imageView != null) {
                                i = R.id.iv_card_preview;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_card_preview);
                                if (imageView2 != null) {
                                    i = R.id.iv_card_shade;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_card_shade);
                                    if (imageView3 != null) {
                                        i = R.id.rv_card_description;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_card_description);
                                        if (recyclerView != null) {
                                            i = R.id.tv_bank_option_name;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bank_option_name);
                                            if (textView3 != null) {
                                                i = R.id.tv_card_preview_title;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_preview_title);
                                                if (textView4 != null) {
                                                    return new ItemBankOptionBinding((ConstraintLayout) view, barrier, barrier2, textView, textView2, group, imageView, imageView2, imageView3, recyclerView, textView3, textView4);
                                                }
                                            }
                                        }
                                    }
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

    public static ItemBankOptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_bank_option, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemBankOptionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
