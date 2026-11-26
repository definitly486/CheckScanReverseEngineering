package com.tapjoy.internal;

import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class m2 implements Observer {
    public final /* synthetic */ CountDownLatch a;
    public final /* synthetic */ o2 b;

    public m2(o2 o2Var, CountDownLatch countDownLatch) {
        this.b = o2Var;
        this.a = countDownLatch;
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        s.b.deleteObserver(this);
        if (obj instanceof Boolean) {
            this.b.a = Boolean.TRUE.equals(obj);
        } else if (obj instanceof String) {
            o2 o2Var = this.b;
            String str = (String) obj;
            o2Var.b = str;
            o2Var.e.j = str;
        }
        this.a.countDown();
    }
}
