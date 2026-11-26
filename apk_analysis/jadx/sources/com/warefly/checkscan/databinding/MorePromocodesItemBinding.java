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
public final class MorePromocodesItemBinding implements ViewBinding {
    public final TextView btnMorePromocodes;
    private final ConstraintLayout rootView;

    private MorePromocodesItemBinding(ConstraintLayout constraintLayout, TextView textView) {
        this.rootView = constraintLayout;
        this.btnMorePromocodes = textView;
    }

    public static MorePromocodesItemBinding bind(View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_more_promocodes);
        if (textView != null) {
            return new MorePromocodesItemBinding((ConstraintLayout) view, textView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.btn_more_promocodes)));
        return null;
    }

    public static MorePromocodesItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.more_promocodes_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static MorePromocodesItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
