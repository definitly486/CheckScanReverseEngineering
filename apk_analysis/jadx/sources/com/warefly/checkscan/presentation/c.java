package com.warefly.checkscan.presentation;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.cashback.view.CashbackFlowFragment;
import defpackage.aa4;
import defpackage.lk3;
import defpackage.n1;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class c implements lk3 {
    public final Deeplink.CashBackFlow a;

    public c(Deeplink.CashBackFlow cashBackFlow) {
        cashBackFlow.getClass();
        this.a = cashBackFlow;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        CashbackFlowFragment cashbackFlowFragment = new CashbackFlowFragment();
        Parcelable parcelable = this.a;
        parcelable.getClass();
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(Deeplink.CashBackFlow.class)) {
            bundle.putParcelable("deeplink", parcelable);
        } else {
            if (!Serializable.class.isAssignableFrom(Deeplink.CashBackFlow.class)) {
                n1.e(Deeplink.CashBackFlow.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable("deeplink", (Serializable) parcelable);
        }
        cashbackFlowFragment.setArguments(bundle);
        return cashbackFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return c.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && aa4.e(this.a, ((c) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CashbackFlow(deeplink=" + this.a + ")";
    }
}
