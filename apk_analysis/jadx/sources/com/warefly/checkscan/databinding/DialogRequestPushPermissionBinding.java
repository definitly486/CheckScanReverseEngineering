package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogRequestPushPermissionBinding implements ViewBinding {
    public final AppCompatTextView btnNegative;
    public final AppCompatTextView btnPositive;
    private final LinearLayout rootView;
    public final AppCompatTextView tvDescription;
    public final AppCompatTextView tvTitle;

    private DialogRequestPushPermissionBinding(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.rootView = linearLayout;
        this.btnNegative = appCompatTextView;
        this.btnPositive = appCompatTextView2;
        this.tvDescription = appCompatTextView3;
        this.tvTitle = appCompatTextView4;
    }

    public static DialogRequestPushPermissionBinding bind(View view) {
        int i = R.id.btn_negative;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_negative);
        if (appCompatTextView != null) {
            i = R.id.btn_positive;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_positive);
            if (appCompatTextView2 != null) {
                i = R.id.tv_description;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                if (appCompatTextView3 != null) {
                    i = R.id.tv_title;
                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (appCompatTextView4 != null) {
                        return new DialogRequestPushPermissionBinding((LinearLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogRequestPushPermissionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_request_push_permission, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogRequestPushPermissionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
