package com.warefly.checkscan.presentation;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.catalog.view.CatalogFlowFragment;
import defpackage.lk3;
import defpackage.n1;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements lk3 {
    public final Deeplink.Catalog a;

    public d(Deeplink.Catalog catalog) {
        this.a = catalog;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        CatalogFlowFragment catalogFlowFragment = new CatalogFlowFragment();
        Bundle bundle = new Bundle();
        boolean zIsAssignableFrom = Parcelable.class.isAssignableFrom(Deeplink.Catalog.class);
        Parcelable parcelable = this.a;
        if (zIsAssignableFrom) {
            bundle.putParcelable("deeplink", parcelable);
        } else {
            if (!Serializable.class.isAssignableFrom(Deeplink.Catalog.class)) {
                n1.e(Deeplink.Catalog.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable("deeplink", (Serializable) parcelable);
        }
        catalogFlowFragment.setArguments(bundle);
        return catalogFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return d.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && this.a.equals(((d) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CatalogFlow(deeplink=" + this.a + ")";
    }
}
