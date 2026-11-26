package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvCheckboxTaskStepsButtonBinding implements ViewBinding {
    public final LoadingButton btnAction;
    private final LoadingButton rootView;

    private ItemRvCheckboxTaskStepsButtonBinding(LoadingButton loadingButton, LoadingButton loadingButton2) {
        this.rootView = loadingButton;
        this.btnAction = loadingButton2;
    }

    public static ItemRvCheckboxTaskStepsButtonBinding bind(View view) {
        if (view != null) {
            LoadingButton loadingButton = (LoadingButton) view;
            return new ItemRvCheckboxTaskStepsButtonBinding(loadingButton, loadingButton);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvCheckboxTaskStepsButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_checkbox_task_steps_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LoadingButton getRoot() {
        return this.rootView;
    }

    public static ItemRvCheckboxTaskStepsButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
