package com.tapjoy.internal;

import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes4.dex */
public final class j2 implements Observer {
    public final /* synthetic */ p2 a;

    public j2(g2 g2Var) {
        this.a = g2Var;
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        p2 p2Var;
        l2 l2Var;
        s.b.deleteObserver(this);
        Boolean bool = Boolean.TRUE;
        Boolean boolValueOf = Boolean.valueOf(bool.equals(obj));
        if (!(obj instanceof String)) {
            bool = boolValueOf;
        }
        if (bool.booleanValue() || (l2Var = (p2Var = this.a).h) == null || l2Var.a == null) {
            return;
        }
        p2Var.f = new o2(p2Var);
        p2 p2Var2 = this.a;
        p2Var2.c.execute(p2Var2.f);
    }
}
