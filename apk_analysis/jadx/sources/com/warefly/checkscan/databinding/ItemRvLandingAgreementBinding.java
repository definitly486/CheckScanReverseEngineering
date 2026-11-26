package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.CheckBox;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvLandingAgreementBinding implements ViewBinding {
    public final CheckBox cbAgreement;
    private final FrameLayout rootView;

    private ItemRvLandingAgreementBinding(FrameLayout frameLayout, CheckBox checkBox) {
        this.rootView = frameLayout;
        this.cbAgreement = checkBox;
    }

    public static ItemRvLandingAgreementBinding bind(View view) {
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.cb_agreement);
        if (checkBox != null) {
            return new ItemRvLandingAgreementBinding((FrameLayout) view, checkBox);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.cb_agreement)));
        return null;
    }

    public static ItemRvLandingAgreementBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_landing_agreement, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvLandingAgreementBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
