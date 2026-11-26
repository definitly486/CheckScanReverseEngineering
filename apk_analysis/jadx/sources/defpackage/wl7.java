package defpackage;

import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class wl7 implements yl7 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;

    public wl7() {
        this.a = new CopyOnWriteArrayList();
        this.b = new CopyOnWriteArrayList();
        this.c = new CopyOnWriteArrayList();
        this.d = new CopyOnWriteArrayList();
    }

    @Override // defpackage.yl7
    public dm3 a() {
        return (dm3) this.d;
    }

    @Override // defpackage.yl7
    public dm3 b() {
        return (dm3) this.c;
    }

    @Override // defpackage.yl7
    public dm3 c() {
        return (dm3) this.b;
    }

    @Override // defpackage.yl7
    public Object d() {
        return this.a;
    }

    public wl7(Object obj, dm3 dm3Var, dm3 dm3Var2, ju0 ju0Var) {
        this.a = obj;
        this.b = dm3Var;
        this.c = dm3Var2;
        this.d = ju0Var;
    }
}
