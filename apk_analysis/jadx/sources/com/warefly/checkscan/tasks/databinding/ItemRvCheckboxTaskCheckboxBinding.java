package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.CheckBox;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvCheckboxTaskCheckboxBinding implements ViewBinding {
    public final CheckBox cbAgreement;
    private final CheckBox rootView;

    private ItemRvCheckboxTaskCheckboxBinding(CheckBox checkBox, CheckBox checkBox2) {
        this.rootView = checkBox;
        this.cbAgreement = checkBox2;
    }

    public static ItemRvCheckboxTaskCheckboxBinding bind(View view) {
        if (view != null) {
            CheckBox checkBox = (CheckBox) view;
            return new ItemRvCheckboxTaskCheckboxBinding(checkBox, checkBox);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvCheckboxTaskCheckboxBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_checkbox_task_checkbox, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CheckBox getRoot() {
        return this.rootView;
    }

    public static ItemRvCheckboxTaskCheckboxBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
