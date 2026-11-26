package com.warefly.checkscan.presentation.operations.base;

import defpackage.fl0;
import defpackage.gh4;
import defpackage.j59;
import defpackage.kz5;
import defpackage.mz7;
import defpackage.nl3;
import defpackage.nz5;
import defpackage.p08;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CatalogCardOperationsPresenter extends OperationsPresenter<OperationsView> {
    private final long cardId;
    private final kz5 operationsInteractor;

    public static final class a extends gh4 implements nl3<Integer, mz7<List<? extends kz5.a>>> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final mz7<List<? extends kz5.a>> invoke(Integer num) {
            int iIntValue = num.intValue();
            CatalogCardOperationsPresenter catalogCardOperationsPresenter = CatalogCardOperationsPresenter.this;
            kz5 kz5Var = catalogCardOperationsPresenter.operationsInteractor;
            mz7 mz7VarD = kz5Var.a.d(iIntValue, catalogCardOperationsPresenter.cardId);
            fl0 fl0Var = new fl0(new nz5(1), 3);
            mz7VarD.getClass();
            return new p08(mz7VarD, fl0Var);
        }
    }

    public CatalogCardOperationsPresenter(long j, kz5 kz5Var) {
        kz5Var.getClass();
        this.cardId = j;
        this.operationsInteractor = kz5Var;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        initOperationsPaginator(new a());
        j59 j59Var = j59.a;
        refreshOperations();
    }
}
