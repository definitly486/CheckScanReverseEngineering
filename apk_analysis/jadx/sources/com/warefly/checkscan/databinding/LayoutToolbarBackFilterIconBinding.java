package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutToolbarBackFilterIconBinding implements ViewBinding {
    public final ImageButton btnBack;
    public final ImageButton btnFilter;
    private final ConstraintLayout rootView;
    public final TextView tvToolbarTitle;

    private LayoutToolbarBackFilterIconBinding(ConstraintLayout constraintLayout, ImageButton imageButton, ImageButton imageButton2, TextView textView) {
        this.rootView = constraintLayout;
        this.btnBack = imageButton;
        this.btnFilter = imageButton2;
        this.tvToolbarTitle = textView;
    }

    public static LayoutToolbarBackFilterIconBinding bind(View view) {
        int i = R.id.btn_back;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageButton != null) {
            i = R.id.btn_filter;
            ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_filter);
            if (imageButton2 != null) {
                i = R.id.tv_toolbar_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                if (textView != null) {
                    return new LayoutToolbarBackFilterIconBinding((ConstraintLayout) view, imageButton, imageButton2, textView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutToolbarBackFilterIconBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_toolbar_back_filter_icon, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutToolbarBackFilterIconBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
