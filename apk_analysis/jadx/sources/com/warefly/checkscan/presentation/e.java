package com.warefly.checkscan.presentation;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;
import defpackage.lk3;
import defpackage.n1;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class e implements lk3 {
    public static final e a = new e();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        DesktopFlowFragment desktopFlowFragment = new DesktopFlowFragment();
        Parcelable bonuses = new Deeplink.Desktop.Bonuses(0);
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(Deeplink.Desktop.class)) {
            bundle.putParcelable("deeplink", bonuses);
        } else {
            if (!Serializable.class.isAssignableFrom(Deeplink.Desktop.class)) {
                n1.e(Deeplink.Desktop.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable("deeplink", (Serializable) bonuses);
        }
        desktopFlowFragment.setArguments(bundle);
        return desktopFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return e.class.getName();
    }
}
