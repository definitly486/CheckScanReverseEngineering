package com.warefly.checkscan.personalform.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class PersonalDataFormPopupDropDownBinding implements ViewBinding {
    public final ListView lvOptions;
    private final ConstraintLayout rootView;

    private PersonalDataFormPopupDropDownBinding(ConstraintLayout constraintLayout, ListView listView) {
        this.rootView = constraintLayout;
        this.lvOptions = listView;
    }

    public static PersonalDataFormPopupDropDownBinding bind(View view) {
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.lv_options);
        if (listView != null) {
            return new PersonalDataFormPopupDropDownBinding((ConstraintLayout) view, listView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.lv_options)));
        return null;
    }

    public static PersonalDataFormPopupDropDownBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.personal_data_form_popup_drop_down, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static PersonalDataFormPopupDropDownBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
