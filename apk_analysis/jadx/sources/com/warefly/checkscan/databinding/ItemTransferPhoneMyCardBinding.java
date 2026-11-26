package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemTransferPhoneMyCardBinding implements ViewBinding {
    public final TextView btnContinueIssue;
    public final View btnTransferPhoneCard;
    public final ImageView ivCard;
    public final ImageView ivTransferPhone;
    public final ImageView ivTransferPhoneArrow;
    private final ConstraintLayout rootView;
    public final TextView tvIssueCard;
    public final TextView tvTransferPhone;

    private ItemTransferPhoneMyCardBinding(ConstraintLayout constraintLayout, TextView textView, View view, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnContinueIssue = textView;
        this.btnTransferPhoneCard = view;
        this.ivCard = imageView;
        this.ivTransferPhone = imageView2;
        this.ivTransferPhoneArrow = imageView3;
        this.tvIssueCard = textView2;
        this.tvTransferPhone = textView3;
    }

    public static ItemTransferPhoneMyCardBinding bind(View view) {
        int i = R.id.btn_continue_issue;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_continue_issue);
        if (textView != null) {
            i = R.id.btn_transfer_phone_card;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.btn_transfer_phone_card);
            if (viewFindChildViewById != null) {
                i = R.id.iv_card;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_card);
                if (imageView != null) {
                    i = R.id.iv_transfer_phone;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_transfer_phone);
                    if (imageView2 != null) {
                        i = R.id.iv_transfer_phone_arrow;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_transfer_phone_arrow);
                        if (imageView3 != null) {
                            i = R.id.tv_issue_card;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_issue_card);
                            if (textView2 != null) {
                                i = R.id.tv_transfer_phone;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_transfer_phone);
                                if (textView3 != null) {
                                    return new ItemTransferPhoneMyCardBinding((ConstraintLayout) view, textView, viewFindChildViewById, imageView, imageView2, imageView3, textView2, textView3);
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

    public static ItemTransferPhoneMyCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_transfer_phone_my_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemTransferPhoneMyCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
