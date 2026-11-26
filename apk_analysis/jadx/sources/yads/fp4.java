package yads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class fp4 implements Iterator {
    public final int b;
    public int c;
    public boolean d;
    public final /* synthetic */ gp4 e;

    public fp4(gp4 gp4Var) {
        this.e = gp4Var;
        gp4Var.c++;
        this.b = gp4Var.b.size();
    }

    public final void a() {
        if (this.d) {
            return;
        }
        this.d = true;
        gp4 gp4Var = this.e;
        int i = gp4Var.c - 1;
        gp4Var.c = i;
        boolean z = gp4.f;
        if (!z && i < 0) {
            defpackage.xp.g();
            return;
        }
        if (i <= 0 && gp4Var.e) {
            gp4Var.e = false;
            if (!z && i != 0) {
                defpackage.xp.g();
                return;
            }
            for (int size = gp4Var.b.size() - 1; size >= 0; size--) {
                if (gp4Var.b.get(size) == null) {
                    gp4Var.b.remove(size);
                }
            }
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.c;
        while (i < this.b && this.e.b.get(i) == null) {
            i++;
        }
        if (i < this.b) {
            return true;
        }
        a();
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        while (true) {
            int i = this.c;
            if (i >= this.b || this.e.b.get(i) != null) {
                break;
            }
            this.c++;
        }
        int i2 = this.c;
        if (i2 < this.b) {
            gp4 gp4Var = this.e;
            this.c = i2 + 1;
            return gp4Var.b.get(i2);
        }
        a();
        defpackage.qz0.e();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
