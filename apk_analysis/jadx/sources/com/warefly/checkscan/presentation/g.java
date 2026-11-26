package com.warefly.checkscan.presentation;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.webview.view.WebviewFlowFragment;
import defpackage.lk3;
import defpackage.n1;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class g implements lk3 {
    public final Deeplink.Webview a;

    public g(Deeplink.Webview webview) {
        this.a = webview;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        WebviewFlowFragment webviewFlowFragment = new WebviewFlowFragment();
        Bundle bundle = new Bundle();
        boolean zIsAssignableFrom = Parcelable.class.isAssignableFrom(Deeplink.Webview.class);
        Parcelable parcelable = this.a;
        if (zIsAssignableFrom) {
            bundle.putParcelable("deeplink", parcelable);
        } else {
            if (!Serializable.class.isAssignableFrom(Deeplink.Webview.class)) {
                n1.e(Deeplink.Webview.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable("deeplink", (Serializable) parcelable);
        }
        webviewFlowFragment.setArguments(bundle);
        return webviewFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return g.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && this.a.equals(((g) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "WebviewFlow(deeplink=" + this.a + ")";
    }
}
