package yads;

import android.view.View;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public final class cd implements gg6 {
    public final String a;
    public final zt4 b;
    public final gg6 c;
    public final dg6 d;
    public final LinkedBlockingQueue e;
    public final AtomicInteger f;
    public final AtomicBoolean g;
    public final boolean h;
    public volatile int i;

    public cd(String str, zt4 zt4Var, gg6 gg6Var, dg6 dg6Var, int i) {
        this.a = str;
        this.b = zt4Var;
        this.c = gg6Var;
        this.d = dg6Var;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.e = linkedBlockingQueue;
        this.f = new AtomicInteger(i);
        this.g = new AtomicBoolean(false);
        this.h = !linkedBlockingQueue.isEmpty();
        this.i = i;
        for (int i2 = 0; i2 < i; i2++) {
            this.d.a.c.offer(new bg6(this, 0));
        }
    }

    @Override // yads.gg6
    public final View a() {
        System.nanoTime();
        Object objPoll = this.e.poll();
        System.nanoTime();
        if (objPoll == null) {
            System.nanoTime();
            try {
                this.d.a(this);
                objPoll = (View) this.e.poll(16L, TimeUnit.MILLISECONDS);
                if (objPoll != null) {
                    this.f.decrementAndGet();
                } else {
                    objPoll = this.c.a();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                objPoll = this.c.a();
            }
            System.nanoTime();
            zt4 zt4Var = this.b;
            this.e.size();
            zt4Var.getClass();
        } else {
            this.f.decrementAndGet();
            zt4 zt4Var2 = this.b;
            this.e.size();
            zt4Var2.getClass();
        }
        if (this.i > this.f.get()) {
            System.nanoTime();
            this.d.a.c.offer(new bg6(this, this.e.size()));
            this.f.incrementAndGet();
            System.nanoTime();
        }
        objPoll.getClass();
        return (View) objPoll;
    }
}
