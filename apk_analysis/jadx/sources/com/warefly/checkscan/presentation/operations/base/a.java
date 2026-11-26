package com.warefly.checkscan.presentation.operations.base;

import defpackage.gh4;
import defpackage.kn1;
import defpackage.kz5;
import defpackage.nc2;
import defpackage.nl3;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends gh4 implements nl3<List<? extends kz5.a>, List<Object>> {
    public final /* synthetic */ OperationsPresenter<OperationsView> f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(OperationsPresenter<OperationsView> operationsPresenter) {
        super(1);
        this.f = operationsPresenter;
    }

    @Override // defpackage.nl3
    public final List<Object> invoke(List<? extends kz5.a> list) {
        List<? extends kz5.a> list2 = list;
        list2.getClass();
        ArrayList arrayList = new ArrayList();
        List<? extends kz5.a> list3 = list2;
        ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
        for (kz5.a aVar : list3) {
            if (((OperationsPresenter) this.f).operationsDates.add(aVar.a)) {
                arrayList.add(new nc2(aVar.a));
            }
            arrayList2.add(Boolean.valueOf(arrayList.addAll(aVar.b)));
        }
        return qn1.t0(arrayList);
    }
}
