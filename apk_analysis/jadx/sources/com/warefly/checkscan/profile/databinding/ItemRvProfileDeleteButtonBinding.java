package com.warefly.checkscan.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvProfileDeleteButtonBinding implements ViewBinding {
    public final TextView btnDelete;
    private final TextView rootView;

    private ItemRvProfileDeleteButtonBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.btnDelete = textView2;
    }

    public static ItemRvProfileDeleteButtonBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new ItemRvProfileDeleteButtonBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvProfileDeleteButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_profile_delete_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemRvProfileDeleteButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
