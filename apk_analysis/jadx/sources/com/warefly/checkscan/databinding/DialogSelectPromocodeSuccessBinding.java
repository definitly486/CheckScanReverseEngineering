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
public final class DialogSelectPromocodeSuccessBinding implements ViewBinding {
    public final View backgroundTop;
    public final TextView btnAction;
    public final TextView btnCopyPromocode;
    public final View divider;
    public final ImageView ivIndicator;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvPromocode;
    public final TextView tvTitle;

    private DialogSelectPromocodeSuccessBinding(ConstraintLayout constraintLayout, View view, TextView textView, TextView textView2, View view2, ImageView imageView, ImageView imageView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.backgroundTop = view;
        this.btnAction = textView;
        this.btnCopyPromocode = textView2;
        this.divider = view2;
        this.ivIndicator = imageView;
        this.ivLogo = imageView2;
        this.tvDescription = textView3;
        this.tvPromocode = textView4;
        this.tvTitle = textView5;
    }

    public static DialogSelectPromocodeSuccessBinding bind(View view) {
        int i = R.id.background_top;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.background_top);
        if (viewFindChildViewById != null) {
            i = R.id.btn_action;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
            if (textView != null) {
                i = R.id.btn_copy_promocode;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_copy_promocode);
                if (textView2 != null) {
                    i = R.id.divider;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.divider);
                    if (viewFindChildViewById2 != null) {
                        i = R.id.iv_indicator;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
                        if (imageView != null) {
                            i = R.id.iv_logo;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                            if (imageView2 != null) {
                                i = R.id.tv_description;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                if (textView3 != null) {
                                    i = R.id.tv_promocode;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_promocode);
                                    if (textView4 != null) {
                                        i = R.id.tv_title;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                        if (textView5 != null) {
                                            return new DialogSelectPromocodeSuccessBinding((ConstraintLayout) view, viewFindChildViewById, textView, textView2, viewFindChildViewById2, imageView, imageView2, textView3, textView4, textView5);
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

    public static DialogSelectPromocodeSuccessBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_select_promocode_success, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogSelectPromocodeSuccessBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
