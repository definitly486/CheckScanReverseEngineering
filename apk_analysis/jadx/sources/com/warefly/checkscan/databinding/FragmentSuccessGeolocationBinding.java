package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentSuccessGeolocationBinding implements ViewBinding {
    public final TextView btnContinue;
    public final ImageView ivCloudAnimationSuccess;
    private final ScrollView rootView;
    public final TextView tvHoorayNowWe;

    private FragmentSuccessGeolocationBinding(ScrollView scrollView, TextView textView, ImageView imageView, TextView textView2) {
        this.rootView = scrollView;
        this.btnContinue = textView;
        this.ivCloudAnimationSuccess = imageView;
        this.tvHoorayNowWe = textView2;
    }

    public static FragmentSuccessGeolocationBinding bind(View view) {
        int i = R.id.btn_continue;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_continue);
        if (textView != null) {
            i = R.id.iv_cloud_animation_success;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_cloud_animation_success);
            if (imageView != null) {
                i = R.id.tv_hooray_now_we;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_hooray_now_we);
                if (textView2 != null) {
                    return new FragmentSuccessGeolocationBinding((ScrollView) view, textView, imageView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentSuccessGeolocationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_success_geolocation, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentSuccessGeolocationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
