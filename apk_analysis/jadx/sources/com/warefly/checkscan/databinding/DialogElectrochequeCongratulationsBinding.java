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
public final class DialogElectrochequeCongratulationsBinding implements ViewBinding {
    public final ImageView ivCloseBtnElectro;
    public final ImageView ivIcCongratulation;
    private final ConstraintLayout rootView;
    public final TextView tvCongratulation;
    public final TextView tvNowYouWill;
    public final View viewElectro;

    private DialogElectrochequeCongratulationsBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, View view) {
        this.rootView = constraintLayout;
        this.ivCloseBtnElectro = imageView;
        this.ivIcCongratulation = imageView2;
        this.tvCongratulation = textView;
        this.tvNowYouWill = textView2;
        this.viewElectro = view;
    }

    public static DialogElectrochequeCongratulationsBinding bind(View view) {
        int i = R.id.iv_close_btn_electro;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close_btn_electro);
        if (imageView != null) {
            i = R.id.iv_ic_congratulation;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_ic_congratulation);
            if (imageView2 != null) {
                i = R.id.tv_congratulation;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_congratulation);
                if (textView != null) {
                    i = R.id.tv_now_you_will;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_now_you_will);
                    if (textView2 != null) {
                        i = R.id.view_electro;
                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_electro);
                        if (viewFindChildViewById != null) {
                            return new DialogElectrochequeCongratulationsBinding((ConstraintLayout) view, imageView, imageView2, textView, textView2, viewFindChildViewById);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogElectrochequeCongratulationsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_electrocheque_congratulations, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogElectrochequeCongratulationsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
