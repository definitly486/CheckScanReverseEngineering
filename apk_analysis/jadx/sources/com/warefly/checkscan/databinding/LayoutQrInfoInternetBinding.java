package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutQrInfoInternetBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final TextView tvINN;
    public final TextView tvLegalFace;
    public final TextView tvTitleINN;

    private LayoutQrInfoInternetBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.tvINN = textView;
        this.tvLegalFace = textView2;
        this.tvTitleINN = textView3;
    }

    public static LayoutQrInfoInternetBinding bind(View view) {
        int i = R.id.tv_INN;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_INN);
        if (textView != null) {
            i = R.id.tv_legal_face;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_legal_face);
            if (textView2 != null) {
                i = R.id.tv_title_INN;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_INN);
                if (textView3 != null) {
                    return new LayoutQrInfoInternetBinding((ConstraintLayout) view, textView, textView2, textView3);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutQrInfoInternetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_qr_info_internet, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutQrInfoInternetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
