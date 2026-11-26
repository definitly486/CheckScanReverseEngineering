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
public final class ShareListItemBinding implements ViewBinding {
    public final View divider;
    private final ConstraintLayout rootView;
    public final TextView tvShareOption;

    private ShareListItemBinding(ConstraintLayout constraintLayout, View view, TextView textView) {
        this.rootView = constraintLayout;
        this.divider = view;
        this.tvShareOption = textView;
    }

    public static ShareListItemBinding bind(View view) {
        int i = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
        if (viewFindChildViewById != null) {
            i = R.id.tv_share_option;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_share_option);
            if (textView != null) {
                return new ShareListItemBinding((ConstraintLayout) view, viewFindChildViewById, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ShareListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.share_list_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ShareListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
