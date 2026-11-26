package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class q41 implements qw7 {
    public final /* synthetic */ rw7 a = new rw7();
    public String b;

    @Override // defpackage.qw7
    public final void a(String str) {
        str.getClass();
        rw7 rw7Var = this.a;
        rw7Var.getClass();
        rw7Var.b.add(str);
    }

    @Override // defpackage.qw7
    public final boolean b(String str) {
        str.getClass();
        rw7 rw7Var = this.a;
        rw7Var.getClass();
        return rw7Var.b.contains(str);
    }

    @Override // defpackage.qw7
    public final List<b36<String, Integer>> c() {
        return this.a.a;
    }

    @Override // defpackage.qw7
    public final void d() {
        this.a.d();
    }

    @Override // defpackage.qw7
    public final void e(List<b36<String, Integer>> list) {
        rw7 rw7Var = this.a;
        rw7Var.getClass();
        rw7Var.a = list;
    }
}
