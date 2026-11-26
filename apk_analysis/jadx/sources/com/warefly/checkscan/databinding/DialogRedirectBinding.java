package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogRedirectBinding implements ViewBinding {
    public final ImageButton btnCloseDialog;
    public final TextView btnContinueComputer;
    public final TextView btnContinuePhone;
    public final TextView btnCopy;
    public final TextView btnShare;
    public final ImageView ivBanner;
    public final FrameLayout progressBar;
    private final ConstraintLayout rootView;
    public final TextView tvDescriptionInfo;
    public final TextView tvLink;
    public final TextView tvLinkDescription;
    public final TextView tvOr;
    public final TextView tvTitle;
    public final TextView tvTvExpirationLink;

    private DialogRedirectBinding(ConstraintLayout constraintLayout, ImageButton imageButton, TextView textView, TextView textView2, TextView textView3, TextView textView4, ImageView imageView, FrameLayout frameLayout, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10) {
        this.rootView = constraintLayout;
        this.btnCloseDialog = imageButton;
        this.btnContinueComputer = textView;
        this.btnContinuePhone = textView2;
        this.btnCopy = textView3;
        this.btnShare = textView4;
        this.ivBanner = imageView;
        this.progressBar = frameLayout;
        this.tvDescriptionInfo = textView5;
        this.tvLink = textView6;
        this.tvLinkDescription = textView7;
        this.tvOr = textView8;
        this.tvTitle = textView9;
        this.tvTvExpirationLink = textView10;
    }

    public static DialogRedirectBinding bind(View view) {
        int i = R.id.btn_close_dialog;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_close_dialog);
        if (imageButton != null) {
            i = R.id.btn_continue_computer;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_continue_computer);
            if (textView != null) {
                i = R.id.btn_continue_phone;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_continue_phone);
                if (textView2 != null) {
                    i = R.id.btn_copy;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_copy);
                    if (textView3 != null) {
                        i = R.id.btn_share;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_share);
                        if (textView4 != null) {
                            i = R.id.iv_banner;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                            if (imageView != null) {
                                i = R.id.progress_bar;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.progress_bar);
                                if (frameLayout != null) {
                                    i = R.id.tv_description_info;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description_info);
                                    if (textView5 != null) {
                                        i = R.id.tv_link;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_link);
                                        if (textView6 != null) {
                                            i = R.id.tv_link_description;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_link_description);
                                            if (textView7 != null) {
                                                i = R.id.tv_or;
                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_or);
                                                if (textView8 != null) {
                                                    i = R.id.tv_title;
                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                    if (textView9 != null) {
                                                        i = R.id.tv_tv_expiration_link;
                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tv_expiration_link);
                                                        if (textView10 != null) {
                                                            return new DialogRedirectBinding((ConstraintLayout) view, imageButton, textView, textView2, textView3, textView4, imageView, frameLayout, textView5, textView6, textView7, textView8, textView9, textView10);
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
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogRedirectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_redirect, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogRedirectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
