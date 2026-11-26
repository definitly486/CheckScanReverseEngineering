package com.warefly.checkscan.shared.infoBottomSheet.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemInfoTextBlockBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvTextBlock;

    private ItemInfoTextBlockBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.tvTextBlock = textView2;
    }

    public static ItemInfoTextBlockBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new ItemInfoTextBlockBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemInfoTextBlockBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_info_text_block, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemInfoTextBlockBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
