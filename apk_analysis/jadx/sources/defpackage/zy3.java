package defpackage;

import java.io.InputStream;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes3.dex */
public final class zy3 implements nc5<cr3, InputStream> {
    public static final qz5<Integer> b = qz5.a(2500, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout");
    public final lc5<cr3, cr3> a;

    public static class a implements oc5<cr3, InputStream> {
        public final lc5<cr3, cr3> a = new lc5<>();

        @Override // defpackage.oc5
        public final nc5<cr3, InputStream> d(if5 if5Var) {
            return new zy3(this.a);
        }
    }

    public zy3(lc5<cr3, cr3> lc5Var) {
        this.a = lc5Var;
    }

    @Override // defpackage.nc5
    public final nc5.a<InputStream> a(cr3 cr3Var, int i, int i2, xz5 xz5Var) {
        cr3 cr3Var2 = cr3Var;
        kc5 kc5Var = this.a.a;
        lc5.a aVarA = lc5.a.a(cr3Var2);
        Object objA = kc5Var.a(aVarA);
        ArrayDeque arrayDeque = lc5.a.b;
        synchronized (arrayDeque) {
            arrayDeque.offer(aVarA);
        }
        cr3 cr3Var3 = (cr3) objA;
        if (cr3Var3 == null) {
            kc5Var.d(lc5.a.a(cr3Var2), cr3Var2);
        } else {
            cr3Var2 = cr3Var3;
        }
        return new nc5.a<>(cr3Var2, new gz3(cr3Var2, ((Integer) xz5Var.c(b)).intValue()));
    }

    @Override // defpackage.nc5
    public final boolean b(cr3 cr3Var) {
        return true;
    }
}
