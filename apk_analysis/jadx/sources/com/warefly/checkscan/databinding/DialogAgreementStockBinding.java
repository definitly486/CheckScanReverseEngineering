package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogAgreementStockBinding implements ViewBinding {
    public final TextView btnAgreementContinue;
    public final TextView btnBackAgreement;
    public final CheckBox cbAgreement;
    public final Guideline guideline2;
    private final ConstraintLayout rootView;
    public final View viewAgreement;

    private DialogAgreementStockBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, CheckBox checkBox, Guideline guideline, View view) {
        this.rootView = constraintLayout;
        this.btnAgreementContinue = textView;
        this.btnBackAgreement = textView2;
        this.cbAgreement = checkBox;
        this.guideline2 = guideline;
        this.viewAgreement = view;
    }

    public static DialogAgreementStockBinding bind(View view) {
        int i = R.id.btn_agreement_continue;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_agreement_continue);
        if (textView != null) {
            i = R.id.btn_back_agreement;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_back_agreement);
            if (textView2 != null) {
                i = R.id.cb_agreement;
                CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.cb_agreement);
                if (checkBox != null) {
                    i = R.id.guideline2;
                    Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline2);
                    if (guideline != null) {
                        i = R.id.view_agreement;
                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_agreement);
                        if (viewFindChildViewById != null) {
                            return new DialogAgreementStockBinding((ConstraintLayout) view, textView, textView2, checkBox, guideline, viewFindChildViewById);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogAgreementStockBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_agreement_stock, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogAgreementStockBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
