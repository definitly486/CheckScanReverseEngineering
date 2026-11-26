package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvText14Binding implements ViewBinding {
    private final AppCompatTextView rootView;
    public final AppCompatTextView tvText;

    private ItemRvText14Binding(AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = appCompatTextView;
        this.tvText = appCompatTextView2;
    }

    public static ItemRvText14Binding bind(View view) {
        if (view != null) {
            AppCompatTextView appCompatTextView = (AppCompatTextView) view;
            return new ItemRvText14Binding(appCompatTextView, appCompatTextView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvText14Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_text_14, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public AppCompatTextView getRoot() {
        return this.rootView;
    }

    public static ItemRvText14Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
