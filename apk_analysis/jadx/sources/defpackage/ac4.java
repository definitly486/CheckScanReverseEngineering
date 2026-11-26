package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class ac4 extends pc4 implements Iterable<pc4> {
    public final ArrayList<pc4> b = new ArrayList<>();

    @Override // defpackage.pc4
    public final boolean a() {
        return h().a();
    }

    @Override // defpackage.pc4
    public final int b() {
        return h().b();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof ac4) && ((ac4) obj).b.equals(this.b);
        }
        return true;
    }

    @Override // defpackage.pc4
    public final String g() {
        return h().g();
    }

    public final pc4 h() {
        ArrayList<pc4> arrayList = this.b;
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        ah.f(jh.b(size, "Array must have size 1, but has size "));
        return null;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<pc4> iterator() {
        return this.b.iterator();
    }
}
