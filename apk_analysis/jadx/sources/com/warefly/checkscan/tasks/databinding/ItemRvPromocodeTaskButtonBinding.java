package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvPromocodeTaskButtonBinding implements ViewBinding {
    public final LoadingButton btnClaimReward;
    private final LoadingButton rootView;

    private ItemRvPromocodeTaskButtonBinding(LoadingButton loadingButton, LoadingButton loadingButton2) {
        this.rootView = loadingButton;
        this.btnClaimReward = loadingButton2;
    }

    public static ItemRvPromocodeTaskButtonBinding bind(View view) {
        if (view != null) {
            LoadingButton loadingButton = (LoadingButton) view;
            return new ItemRvPromocodeTaskButtonBinding(loadingButton, loadingButton);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvPromocodeTaskButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_promocode_task_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LoadingButton getRoot() {
        return this.rootView;
    }

    public static ItemRvPromocodeTaskButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
