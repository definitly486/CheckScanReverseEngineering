package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class nw5 implements mw5 {
    public Boolean a;
    public boolean b;

    @Override // defpackage.mw5
    public final void a() {
        this.a = null;
        this.b = false;
    }

    @Override // defpackage.mw5
    public final void b() {
        this.a = Boolean.TRUE;
    }

    @Override // defpackage.mw5
    public final Boolean c() {
        return this.a;
    }

    @Override // defpackage.mw5
    public final boolean d() {
        return this.b;
    }

    @Override // defpackage.mw5
    public final void e(boolean z) {
        this.b = z;
    }
}
