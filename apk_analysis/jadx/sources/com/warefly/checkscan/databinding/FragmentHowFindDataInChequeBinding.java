package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentHowFindDataInChequeBinding implements ViewBinding {
    public final ImageView btnBack;
    private final LinearLayout rootView;

    private FragmentHowFindDataInChequeBinding(LinearLayout linearLayout, ImageView imageView) {
        this.rootView = linearLayout;
        this.btnBack = imageView;
    }

    public static FragmentHowFindDataInChequeBinding bind(View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            return new FragmentHowFindDataInChequeBinding((LinearLayout) view, imageView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.btn_back)));
        return null;
    }

    public static FragmentHowFindDataInChequeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_how_find_data_in_cheque, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentHowFindDataInChequeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
