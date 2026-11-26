package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvSbpTransferButtonBinding implements ViewBinding {
    public final LoadingButton btnTransfer;
    private final LoadingButton rootView;

    private ItemRvSbpTransferButtonBinding(LoadingButton loadingButton, LoadingButton loadingButton2) {
        this.rootView = loadingButton;
        this.btnTransfer = loadingButton2;
    }

    public static ItemRvSbpTransferButtonBinding bind(View view) {
        if (view != null) {
            LoadingButton loadingButton = (LoadingButton) view;
            return new ItemRvSbpTransferButtonBinding(loadingButton, loadingButton);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvSbpTransferButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_sbp_transfer_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LoadingButton getRoot() {
        return this.rootView;
    }

    public static ItemRvSbpTransferButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
