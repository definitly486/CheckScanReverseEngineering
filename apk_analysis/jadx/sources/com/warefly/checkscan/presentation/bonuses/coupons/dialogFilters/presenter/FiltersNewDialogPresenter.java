package com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view.FilterNewDialogView;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.nb8;
import defpackage.nl3;
import defpackage.p61;
import defpackage.vy4;
import defpackage.yb8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class FiltersNewDialogPresenter extends BasePresenter<FilterNewDialogView> {
    private final long discountId;
    private final boolean discountType;
    private final p61 interactor;
    private final int pageId;

    public static final class a extends gh4 implements nl3<List<? extends vy4>, j59> {
        public a(int i, boolean z) {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends vy4> list) {
            List<? extends vy4> list2 = list;
            list2.getClass();
            ArrayList arrayList = new ArrayList(list2);
            ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                throw null;
            }
            FiltersNewDialogPresenter filtersNewDialogPresenter = FiltersNewDialogPresenter.this;
            p61 p61Var = filtersNewDialogPresenter.interactor;
            int i = filtersNewDialogPresenter.pageId;
            p61Var.getClass();
            p61Var.b.c(i, arrayList2);
            FilterNewDialogView filterNewDialogView = (FilterNewDialogView) filtersNewDialogPresenter.getViewState();
            if (filterNewDialogView != null) {
                filterNewDialogView.setUpdatedList(arrayList2);
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<List<? extends vy4>, j59> {
        public b(int i, boolean z) {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends vy4> list) {
            List<? extends vy4> list2 = list;
            list2.getClass();
            ArrayList arrayList = new ArrayList(list2);
            ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                throw null;
            }
            FiltersNewDialogPresenter filtersNewDialogPresenter = FiltersNewDialogPresenter.this;
            p61 p61Var = filtersNewDialogPresenter.interactor;
            int i = filtersNewDialogPresenter.pageId;
            p61Var.getClass();
            p61Var.b.c(i, arrayList2);
            FilterNewDialogView filterNewDialogView = (FilterNewDialogView) filtersNewDialogPresenter.getViewState();
            if (filterNewDialogView != null) {
                filterNewDialogView.setUpdatedList(arrayList2);
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<List<? extends vy4>, j59> {
        public c() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(List<? extends vy4> list) {
            List<? extends vy4> list2 = list;
            list2.getClass();
            FilterNewDialogView filterNewDialogView = (FilterNewDialogView) FiltersNewDialogPresenter.this.getViewState();
            if (filterNewDialogView != 0) {
                filterNewDialogView.setFiltersList(list2);
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<List<? extends vy4>, j59> {
        public d() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(List<? extends vy4> list) {
            List<? extends vy4> list2 = list;
            list2.getClass();
            FilterNewDialogView filterNewDialogView = (FilterNewDialogView) FiltersNewDialogPresenter.this.getViewState();
            if (filterNewDialogView != 0) {
                filterNewDialogView.setFiltersList(list2);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<List<? extends vy4>, j59> {
        public e(int i, boolean z, int i2) {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends vy4> list) {
            List<? extends vy4> list2 = list;
            list2.getClass();
            ArrayList arrayList = new ArrayList(list2);
            ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                throw null;
            }
            FiltersNewDialogPresenter filtersNewDialogPresenter = FiltersNewDialogPresenter.this;
            p61 p61Var = filtersNewDialogPresenter.interactor;
            long j = filtersNewDialogPresenter.discountId;
            p61Var.getClass();
            p61Var.e.b(j, arrayList2);
            FilterNewDialogView filterNewDialogView = (FilterNewDialogView) filtersNewDialogPresenter.getViewState();
            if (filterNewDialogView != null) {
                filterNewDialogView.setUpdatedList(arrayList2);
            }
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<List<? extends vy4>, j59> {
        public f(int i, boolean z, int i2) {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends vy4> list) {
            List<? extends vy4> list2 = list;
            list2.getClass();
            ArrayList arrayList = new ArrayList(list2);
            ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                throw null;
            }
            FiltersNewDialogPresenter filtersNewDialogPresenter = FiltersNewDialogPresenter.this;
            p61 p61Var = filtersNewDialogPresenter.interactor;
            int i = filtersNewDialogPresenter.pageId;
            p61Var.getClass();
            p61Var.b.c(i, arrayList2);
            FilterNewDialogView filterNewDialogView = (FilterNewDialogView) filtersNewDialogPresenter.getViewState();
            if (filterNewDialogView != null) {
                filterNewDialogView.setUpdatedList(arrayList2);
            }
            return j59.a;
        }
    }

    public FiltersNewDialogPresenter(int i, p61 p61Var, boolean z, long j) {
        p61Var.getClass();
        this.pageId = i;
        this.interactor = p61Var;
        this.discountType = z;
        this.discountId = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkHaveSecondLevelSub(nb8 nb8Var) {
        nb8Var.getClass();
        if (((FilterNewDialogView) getViewState()) != null) {
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkHaveSubFilters(vy4 vy4Var) {
        vy4Var.getClass();
        if (((FilterNewDialogView) getViewState()) != null) {
            throw null;
        }
    }

    private final void setFilters() {
        boolean z = this.discountType;
        p61 p61Var = this.interactor;
        if (z) {
            BasePresenter.disposeOnDestroy$default(this, yb8.f(p61Var.e.a(this.discountId), null, new c(), 1), null, 1, null);
        } else {
            BasePresenter.disposeOnDestroy$default(this, yb8.f(p61Var.b.b(this.pageId), null, new d(), 1), null, 1, null);
        }
    }

    public final void onFilterClick(int i, boolean z) {
        boolean z2 = this.discountType;
        p61 p61Var = this.interactor;
        if (z2) {
            BasePresenter.disposeOnDestroy$default(this, yb8.f(p61Var.e.a(this.discountId), null, new a(i, z), 1), null, 1, null);
        } else {
            BasePresenter.disposeOnDestroy$default(this, yb8.f(p61Var.b.b(this.pageId), null, new b(i, z), 1), null, 1, null);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        setFilters();
    }

    public final void onSimpleFilterClick(int i, String str) {
        str.getClass();
        FilterNewDialogView filterNewDialogView = (FilterNewDialogView) getViewState();
        if (filterNewDialogView != null) {
            filterNewDialogView.showSelectedFilterCategory(i, str);
        }
    }

    public final void subFilterClick(int i, int i2, boolean z) {
        boolean z2 = this.discountType;
        p61 p61Var = this.interactor;
        if (z2) {
            BasePresenter.disposeOnDestroy$default(this, yb8.f(p61Var.e.a(this.discountId), null, new e(i, z, i2), 1), null, 1, null);
        } else {
            BasePresenter.disposeOnDestroy$default(this, yb8.f(p61Var.b.b(this.pageId), null, new f(i, z, i2), 1), null, 1, null);
        }
    }

    public /* synthetic */ FiltersNewDialogPresenter(int i, p61 p61Var, boolean z, long j, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 1 : i, p61Var, z, j);
    }
}
