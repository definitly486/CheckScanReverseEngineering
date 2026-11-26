package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class bg6 implements Runnable, Comparable {
    public static final /* synthetic */ defpackage.ze4[] e = {cb.a(bg6.class, "channelRef", "getChannelRef()Lcom/yandex/div/internal/viewpool/AdvanceViewPool$Channel;", 0)};
    public final int b;
    public final String c;
    public final uj6 d;

    public bg6(cd cdVar, int i) {
        this.b = i;
        this.c = cdVar.a;
        this.d = new uj6(cdVar);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        bg6 bg6Var = (bg6) obj;
        int i = this.b - bg6Var.b;
        return i != 0 ? i : !defpackage.aa4.e(this.c, bg6Var.c) ? 1 : 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!bg6.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        bg6 bg6Var = (bg6) obj;
        return defpackage.aa4.e(this.c, bg6Var.c) && this.b == bg6Var.b;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b + 6913) * 31);
    }

    @Override // java.lang.Runnable
    public final void run() {
        cd cdVar = (cd) this.d.getValue(this, e[0]);
        if (cdVar == null || cdVar.g.get()) {
            return;
        }
        try {
            cdVar.e.offer(cdVar.c.a());
        } catch (Exception unused) {
        }
    }
}
