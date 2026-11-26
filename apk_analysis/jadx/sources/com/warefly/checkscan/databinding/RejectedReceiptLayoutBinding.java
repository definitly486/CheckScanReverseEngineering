package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class RejectedReceiptLayoutBinding implements ViewBinding {
    public final LoadingButton btnAction;
    public final Group groupNotCorrectFormat;
    public final ImageView ivInfo;
    private final MaterialCardView rootView;
    public final TextView tvDescription;
    public final TextView tvHeader;
    public final TextView tvNotCorrectFormatFirst;
    public final TextView tvNotCorrectFormatSecond;
    public final TextView tvNumFirst;
    public final TextView tvNumSecond;
    public final TextView tvReason;
    public final View viewDescriptionBackground;

    private RejectedReceiptLayoutBinding(MaterialCardView materialCardView, LoadingButton loadingButton, Group group, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, View view) {
        this.rootView = materialCardView;
        this.btnAction = loadingButton;
        this.groupNotCorrectFormat = group;
        this.ivInfo = imageView;
        this.tvDescription = textView;
        this.tvHeader = textView2;
        this.tvNotCorrectFormatFirst = textView3;
        this.tvNotCorrectFormatSecond = textView4;
        this.tvNumFirst = textView5;
        this.tvNumSecond = textView6;
        this.tvReason = textView7;
        this.viewDescriptionBackground = view;
    }

    public static RejectedReceiptLayoutBinding bind(View view) {
        int i = R.id.btn_action;
        LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (loadingButton != null) {
            i = R.id.group_not_correct_format;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_not_correct_format);
            if (group != null) {
                i = R.id.iv_info;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_info);
                if (imageView != null) {
                    i = R.id.tv_description;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView != null) {
                        i = R.id.tv_header;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_header);
                        if (textView2 != null) {
                            i = R.id.tv_not_correct_format_first;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_not_correct_format_first);
                            if (textView3 != null) {
                                i = R.id.tv_not_correct_format_second;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_not_correct_format_second);
                                if (textView4 != null) {
                                    i = R.id.tv_num_first;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_num_first);
                                    if (textView5 != null) {
                                        i = R.id.tv_num_second;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_num_second);
                                        if (textView6 != null) {
                                            i = R.id.tv_reason;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_reason);
                                            if (textView7 != null) {
                                                i = R.id.view_description_background;
                                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_description_background);
                                                if (viewFindChildViewById != null) {
                                                    return new RejectedReceiptLayoutBinding((MaterialCardView) view, loadingButton, group, imageView, textView, textView2, textView3, textView4, textView5, textView6, textView7, viewFindChildViewById);
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

    public static RejectedReceiptLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.rejected_receipt_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static RejectedReceiptLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
