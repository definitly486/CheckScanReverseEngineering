package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogTransferBonusesBinding implements ViewBinding {
    public final View background;
    public final ImageView btnClose;
    public final TextView btnLoadCode;
    public final ProgressBar pbLoadingCode;
    private final ConstraintLayout rootView;
    public final View separator;
    public final TextView tvCode;
    public final TextView tvTimeExpire;
    public final TextView tvTitle;

    private DialogTransferBonusesBinding(ConstraintLayout constraintLayout, View view, ImageView imageView, TextView textView, ProgressBar progressBar, View view2, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.background = view;
        this.btnClose = imageView;
        this.btnLoadCode = textView;
        this.pbLoadingCode = progressBar;
        this.separator = view2;
        this.tvCode = textView2;
        this.tvTimeExpire = textView3;
        this.tvTitle = textView4;
    }

    public static DialogTransferBonusesBinding bind(View view) {
        int i = R.id.background;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.background);
        if (viewFindChildViewById != null) {
            i = R.id.btn_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
            if (imageView != null) {
                i = R.id.btn_load_code;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_load_code);
                if (textView != null) {
                    i = R.id.pb_loading_code;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading_code);
                    if (progressBar != null) {
                        i = R.id.separator;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.separator);
                        if (viewFindChildViewById2 != null) {
                            i = R.id.tv_code;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_code);
                            if (textView2 != null) {
                                i = R.id.tv_time_expire;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time_expire);
                                if (textView3 != null) {
                                    i = R.id.tv_title;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                    if (textView4 != null) {
                                        return new DialogTransferBonusesBinding((ConstraintLayout) view, viewFindChildViewById, imageView, textView, progressBar, viewFindChildViewById2, textView2, textView3, textView4);
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

    public static DialogTransferBonusesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_transfer_bonuses, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogTransferBonusesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
