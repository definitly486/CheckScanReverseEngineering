package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemPollVariantBinding implements ViewBinding {
    public final RadioButton rb;
    private final RadioButton rootView;

    private ItemPollVariantBinding(RadioButton radioButton, RadioButton radioButton2) {
        this.rootView = radioButton;
        this.rb = radioButton2;
    }

    public static ItemPollVariantBinding bind(View view) {
        if (view != null) {
            RadioButton radioButton = (RadioButton) view;
            return new ItemPollVariantBinding(radioButton, radioButton);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemPollVariantBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_poll_variant, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public RadioButton getRoot() {
        return this.rootView;
    }

    public static ItemPollVariantBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
