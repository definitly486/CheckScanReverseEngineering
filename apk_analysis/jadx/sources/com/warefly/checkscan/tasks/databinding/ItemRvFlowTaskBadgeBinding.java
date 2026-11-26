package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvFlowTaskBadgeBinding implements ViewBinding {
    public final ImageView ivBadgeIcon;
    private final ImageView rootView;

    private ItemRvFlowTaskBadgeBinding(ImageView imageView, ImageView imageView2) {
        this.rootView = imageView;
        this.ivBadgeIcon = imageView2;
    }

    public static ItemRvFlowTaskBadgeBinding bind(View view) {
        if (view != null) {
            ImageView imageView = (ImageView) view;
            return new ItemRvFlowTaskBadgeBinding(imageView, imageView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvFlowTaskBadgeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_flow_task_badge, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ImageView getRoot() {
        return this.rootView;
    }

    public static ItemRvFlowTaskBadgeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
