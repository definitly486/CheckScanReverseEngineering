package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvTaskCardBinding implements ViewBinding {
    public final Space bottomSpacer;
    public final ImageView btnArrow;
    public final LoadingButton btnClaimReward;
    public final View clickableRv;
    public final View fadeBackground;
    public final ImageView ivLogo;
    private final MaterialCardView rootView;
    public final RecyclerView rvBadges;
    public final TextView tvCounter;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private ItemRvTaskCardBinding(MaterialCardView materialCardView, Space space, ImageView imageView, LoadingButton loadingButton, View view, View view2, ImageView imageView2, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = materialCardView;
        this.bottomSpacer = space;
        this.btnArrow = imageView;
        this.btnClaimReward = loadingButton;
        this.clickableRv = view;
        this.fadeBackground = view2;
        this.ivLogo = imageView2;
        this.rvBadges = recyclerView;
        this.tvCounter = textView;
        this.tvSubtitle = textView2;
        this.tvTitle = textView3;
    }

    public static ItemRvTaskCardBinding bind(View view) {
        int i = R.id.bottom_spacer;
        Space space = (Space) ViewBindings.findChildViewById(view, R.id.bottom_spacer);
        if (space != null) {
            i = R.id.btn_arrow;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_arrow);
            if (imageView != null) {
                i = R.id.btn_claim_reward;
                LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_claim_reward);
                if (loadingButton != null) {
                    i = R.id.clickable_rv;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.clickable_rv);
                    if (viewFindChildViewById != null) {
                        i = R.id.fade_background;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.fade_background);
                        if (viewFindChildViewById2 != null) {
                            i = R.id.iv_logo;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                            if (imageView2 != null) {
                                i = R.id.rv_badges;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_badges);
                                if (recyclerView != null) {
                                    i = R.id.tv_counter;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_counter);
                                    if (textView != null) {
                                        i = R.id.tv_subtitle;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                                        if (textView2 != null) {
                                            i = R.id.tv_title;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                            if (textView3 != null) {
                                                return new ItemRvTaskCardBinding((MaterialCardView) view, space, imageView, loadingButton, viewFindChildViewById, viewFindChildViewById2, imageView2, recyclerView, textView, textView2, textView3);
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

    public static ItemRvTaskCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_task_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvTaskCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
