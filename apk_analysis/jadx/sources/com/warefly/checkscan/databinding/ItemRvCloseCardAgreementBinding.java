package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvCloseCardAgreementBinding implements ViewBinding {
    public final CheckBox cbAgreement;
    private final LinearLayout rootView;
    public final TextView tvAgreement;

    private ItemRvCloseCardAgreementBinding(LinearLayout linearLayout, CheckBox checkBox, TextView textView) {
        this.rootView = linearLayout;
        this.cbAgreement = checkBox;
        this.tvAgreement = textView;
    }

    public static ItemRvCloseCardAgreementBinding bind(View view) {
        int i = R.id.cb_agreement;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.cb_agreement);
        if (checkBox != null) {
            i = R.id.tv_agreement;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_agreement);
            if (textView != null) {
                return new ItemRvCloseCardAgreementBinding((LinearLayout) view, checkBox, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvCloseCardAgreementBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_close_card_agreement, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvCloseCardAgreementBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
