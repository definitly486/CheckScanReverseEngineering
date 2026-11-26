package com.warefly.checkscan.databinding;

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
public final class ItemAdmitadNewDescriptionBinding implements ViewBinding {
    public final TextView btnGoToOperations;
    private final LinearLayout rootView;
    public final TextView tvDescription;
    public final TextView tvDescriptionTitle;

    private ItemAdmitadNewDescriptionBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.btnGoToOperations = textView;
        this.tvDescription = textView2;
        this.tvDescriptionTitle = textView3;
    }

    public static ItemAdmitadNewDescriptionBinding bind(View view) {
        int i = R.id.btn_go_to_operations;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_go_to_operations);
        if (textView != null) {
            i = R.id.tv_description;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
            if (textView2 != null) {
                i = R.id.tv_description_title;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description_title);
                if (textView3 != null) {
                    return new ItemAdmitadNewDescriptionBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemAdmitadNewDescriptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_admitad_new_description, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemAdmitadNewDescriptionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
