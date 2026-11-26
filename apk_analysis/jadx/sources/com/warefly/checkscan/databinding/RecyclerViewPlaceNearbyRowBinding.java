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
public final class RecyclerViewPlaceNearbyRowBinding implements ViewBinding {
    public final TextView placeAddress;
    public final TextView placeName;
    private final LinearLayout rootView;

    private RecyclerViewPlaceNearbyRowBinding(LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.placeAddress = textView;
        this.placeName = textView2;
    }

    public static RecyclerViewPlaceNearbyRowBinding bind(View view) {
        int i = R.id.place_address;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.place_address);
        if (textView != null) {
            i = R.id.place_name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.place_name);
            if (textView2 != null) {
                return new RecyclerViewPlaceNearbyRowBinding((LinearLayout) view, textView, textView2);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static RecyclerViewPlaceNearbyRowBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.recycler_view_place_nearby_row, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static RecyclerViewPlaceNearbyRowBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
