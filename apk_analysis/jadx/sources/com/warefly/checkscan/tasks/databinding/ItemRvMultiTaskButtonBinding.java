package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvMultiTaskButtonBinding implements ViewBinding {
    public final LoadingButton btnClaimReward;
    private final LoadingButton rootView;

    private ItemRvMultiTaskButtonBinding(LoadingButton loadingButton, LoadingButton loadingButton2) {
        this.rootView = loadingButton;
        this.btnClaimReward = loadingButton2;
    }

    public static ItemRvMultiTaskButtonBinding bind(View view) {
        if (view != null) {
            LoadingButton loadingButton = (LoadingButton) view;
            return new ItemRvMultiTaskButtonBinding(loadingButton, loadingButton);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvMultiTaskButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_multi_task_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LoadingButton getRoot() {
        return this.rootView;
    }

    public static ItemRvMultiTaskButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
