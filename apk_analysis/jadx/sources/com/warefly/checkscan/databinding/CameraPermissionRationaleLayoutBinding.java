package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class CameraPermissionRationaleLayoutBinding implements ViewBinding {
    public final TextView btnRationale;
    private final ConstraintLayout rootView;
    public final TextView tvRationale;

    private CameraPermissionRationaleLayoutBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnRationale = textView;
        this.tvRationale = textView2;
    }

    public static CameraPermissionRationaleLayoutBinding bind(View view) {
        int i = R.id.btn_rationale;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_rationale);
        if (textView != null) {
            i = R.id.tv_rationale;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_rationale);
            if (textView2 != null) {
                return new CameraPermissionRationaleLayoutBinding((ConstraintLayout) view, textView, textView2);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static CameraPermissionRationaleLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.camera_permission_rationale_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static CameraPermissionRationaleLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
