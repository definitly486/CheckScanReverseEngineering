package com.warefly.checkscan.presentation.statistics.presenter;

import defpackage.gh4;
import defpackage.kn1;
import defpackage.ld5;
import defpackage.nl3;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends gh4 implements nl3<List<? extends Long>, List<? extends ld5>> {
    public final /* synthetic */ StatisticsPresenter f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(StatisticsPresenter statisticsPresenter) {
        super(1);
        this.f = statisticsPresenter;
    }

    @Override // defpackage.nl3
    public final List<? extends ld5> invoke(List<? extends Long> list) {
        ld5 ld5Var;
        List<? extends Long> list2 = list;
        list2.getClass();
        List<? extends Long> list3 = list2;
        ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
        Iterator<T> it = list3.iterator();
        while (it.hasNext()) {
            long jLongValue = ((Number) it.next()).longValue();
            StatisticsPresenter statisticsPresenter = this.f;
            if (statisticsPresenter.getSelectedMonth() == null) {
                Calendar calendar = Calendar.getInstance();
                int i = calendar.get(2);
                calendar.setTimeInMillis(jLongValue);
                calendar.set(2, i);
                long timeInMillis = calendar.getTimeInMillis();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMM");
                if (jLongValue == timeInMillis) {
                    statisticsPresenter.setSelectedMonth(simpleDateFormat.format(Long.valueOf(jLongValue)));
                }
                ld5Var = new ld5(jLongValue, jLongValue == timeInMillis, jLongValue > Calendar.getInstance().getTimeInMillis());
            } else {
                ld5Var = new ld5(jLongValue, false, false);
            }
            arrayList.add(ld5Var);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!((ld5) obj).c) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }
}
