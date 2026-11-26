package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogChequeCashbackAccrualBinding implements ViewBinding {
    public final ImageView btnClose;
    public final Guideline guideline;
    public final Guideline guideline1;
    public final View header;
    private final ConstraintLayout rootView;
    public final TextView tvAboutAccrual;
    public final TextView tvTitle;

    private DialogChequeCashbackAccrualBinding(ConstraintLayout constraintLayout, ImageView imageView, Guideline guideline, Guideline guideline2, View view, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.guideline = guideline;
        this.guideline1 = guideline2;
        this.header = view;
        this.tvAboutAccrual = textView;
        this.tvTitle = textView2;
    }

    public static DialogChequeCashbackAccrualBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.guideline;
            Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline);
            if (guideline != null) {
                i = R.id.guideline1;
                Guideline guideline2 = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline1);
                if (guideline2 != null) {
                    i = R.id.header;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.header);
                    if (viewFindChildViewById != null) {
                        i = R.id.tv_about_accrual;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_about_accrual);
                        if (textView != null) {
                            i = R.id.tv_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView2 != null) {
                                return new DialogChequeCashbackAccrualBinding((ConstraintLayout) view, imageView, guideline, guideline2, viewFindChildViewById, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogChequeCashbackAccrualBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_cheque_cashback_accrual, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogChequeCashbackAccrualBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
