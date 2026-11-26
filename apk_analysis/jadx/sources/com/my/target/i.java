package com.my.target;

import defpackage.fo9;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class i {
    public final g2 a;
    public final ArrayList b = new ArrayList();
    public m2.a c;

    public class a implements g2.a {
        public a() {
        }
    }

    public i(ArrayList arrayList, g2 g2Var) {
        this.a = g2Var;
        g2Var.setCarouselListener(new a());
        for (int i : g2Var.getNumbersOfCurrentShowingCards()) {
            if (i < arrayList.size() && i >= 0) {
                fo9 fo9Var = (fo9) arrayList.get(i);
                this.b.add(fo9Var);
                m1.d(fo9Var.a, "show", 1, null);
            }
        }
    }
}
