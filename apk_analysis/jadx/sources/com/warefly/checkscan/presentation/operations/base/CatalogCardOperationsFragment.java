package com.warefly.checkscan.presentation.operations.base;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import defpackage.aa4;
import defpackage.c9;
import defpackage.e;
import defpackage.kz5;
import defpackage.l61;
import defpackage.ll3;
import defpackage.m2;
import defpackage.x07;

/* JADX INFO: loaded from: classes5.dex */
public final class CatalogCardOperationsFragment extends OperationsFragment<CatalogCardOperationsPresenter> {
    public CatalogCardOperationsPresenter catalogCardOperationsPresenter;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(l61.class), new a());

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            CatalogCardOperationsFragment catalogCardOperationsFragment = CatalogCardOperationsFragment.this;
            Bundle arguments = catalogCardOperationsFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(catalogCardOperationsFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    @Override // com.warefly.checkscan.presentation.operations.base.OperationsFragment
    public final CatalogCardOperationsPresenter o() {
        CatalogCardOperationsPresenter catalogCardOperationsPresenter = this.catalogCardOperationsPresenter;
        if (catalogCardOperationsPresenter != null) {
            return catalogCardOperationsPresenter;
        }
        aa4.j("catalogCardOperationsPresenter");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CatalogCardOperationsPresenter providePresenter() {
        return new CatalogCardOperationsPresenter(((l61) this.j.getValue()).a, (kz5) m2.c(kz5.class, e.e(this), null, null));
    }
}
