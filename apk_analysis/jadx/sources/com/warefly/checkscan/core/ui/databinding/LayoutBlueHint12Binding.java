package com.warefly.checkscan.core.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutBlueHint12Binding implements ViewBinding {
    public final LinearLayout layoutHint;
    private final LinearLayout rootView;
    public final TextView tvHint;

    private LayoutBlueHint12Binding(LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView) {
        this.rootView = linearLayout;
        this.layoutHint = linearLayout2;
        this.tvHint = textView;
    }

    public static LayoutBlueHint12Binding bind(View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_hint);
        if (textView != null) {
            return new LayoutBlueHint12Binding(linearLayout, linearLayout, textView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_hint)));
        return null;
    }

    public static LayoutBlueHint12Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_blue_hint_12, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static LayoutBlueHint12Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
