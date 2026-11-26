package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutIAgreeReceivedElectrochequesViaBinding implements ViewBinding {
    public final CheckBox cbIAgreeProgram;
    private final FrameLayout rootView;

    private LayoutIAgreeReceivedElectrochequesViaBinding(FrameLayout frameLayout, CheckBox checkBox) {
        this.rootView = frameLayout;
        this.cbIAgreeProgram = checkBox;
    }

    public static LayoutIAgreeReceivedElectrochequesViaBinding bind(View view) {
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.cb_i_agree_program);
        if (checkBox != null) {
            return new LayoutIAgreeReceivedElectrochequesViaBinding((FrameLayout) view, checkBox);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.cb_i_agree_program)));
        return null;
    }

    public static LayoutIAgreeReceivedElectrochequesViaBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_i_agree_received_electrocheques_via, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LayoutIAgreeReceivedElectrochequesViaBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
