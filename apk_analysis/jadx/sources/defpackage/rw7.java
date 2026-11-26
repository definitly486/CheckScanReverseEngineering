package defpackage;

import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class rw7 implements qw7 {
    public List<b36<String, Integer>> a = kx2.b;
    public final LinkedHashSet b = new LinkedHashSet();

    @Override // defpackage.qw7
    public final void a(String str) {
        str.getClass();
        this.b.add(str);
    }

    @Override // defpackage.qw7
    public final boolean b(String str) {
        str.getClass();
        return this.b.contains(str);
    }

    @Override // defpackage.qw7
    public final List<b36<String, Integer>> c() {
        return this.a;
    }

    @Override // defpackage.qw7
    public final void d() {
        this.b.clear();
    }

    @Override // defpackage.qw7
    public final void e(List<b36<String, Integer>> list) {
        this.a = list;
    }
}
