package com.warefly.checkscan.presentation;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;
import defpackage.aa4;
import defpackage.lk3;
import defpackage.n1;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class f implements lk3 {
    public final Deeplink.Desktop a;

    public f(Deeplink.Desktop desktop) {
        desktop.getClass();
        this.a = desktop;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        DesktopFlowFragment desktopFlowFragment = new DesktopFlowFragment();
        Parcelable parcelable = this.a;
        parcelable.getClass();
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(Deeplink.Desktop.class)) {
            bundle.putParcelable("deeplink", parcelable);
        } else {
            if (!Serializable.class.isAssignableFrom(Deeplink.Desktop.class)) {
                n1.e(Deeplink.Desktop.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable("deeplink", (Serializable) parcelable);
        }
        desktopFlowFragment.setArguments(bundle);
        return desktopFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return f.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && aa4.e(this.a, ((f) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "SpecifyDesktopFlow(deeplink=" + this.a + ")";
    }
}
