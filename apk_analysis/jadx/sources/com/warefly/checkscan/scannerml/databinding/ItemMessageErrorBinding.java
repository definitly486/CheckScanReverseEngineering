package com.warefly.checkscan.scannerml.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemMessageErrorBinding implements ViewBinding {
    private final AppCompatTextView rootView;

    private ItemMessageErrorBinding(AppCompatTextView appCompatTextView) {
        this.rootView = appCompatTextView;
    }

    public static ItemMessageErrorBinding bind(View view) {
        if (view != null) {
            return new ItemMessageErrorBinding((AppCompatTextView) view);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemMessageErrorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_message_error, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public AppCompatTextView getRoot() {
        return this.rootView;
    }

    public static ItemMessageErrorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
