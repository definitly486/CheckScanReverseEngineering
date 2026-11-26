package yads;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class gp4 implements Iterable {
    public static final /* synthetic */ boolean f = true;
    public final ArrayList b = new ArrayList();
    public int c;
    public int d;
    public boolean e;

    public final void a(Object obj) {
        if (obj == null || this.b.contains(obj)) {
            return;
        }
        boolean zAdd = this.b.add(obj);
        if (f || zAdd) {
            this.d++;
        } else {
            defpackage.xp.g();
        }
    }

    public final void b(Object obj) {
        int iIndexOf;
        if (obj == null || (iIndexOf = this.b.indexOf(obj)) == -1) {
            return;
        }
        if (this.c == 0) {
            this.b.remove(iIndexOf);
        } else {
            this.e = true;
            this.b.set(iIndexOf, null);
        }
        int i = this.d - 1;
        this.d = i;
        if (f || i >= 0) {
            return;
        }
        defpackage.xp.g();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new fp4(this);
    }
}
