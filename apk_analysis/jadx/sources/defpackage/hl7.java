package defpackage;

import androidx.core.internal.view.SupportMenu;
import defpackage.hl7;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public abstract class hl7<S extends hl7<S>> extends dv1<S> implements no5 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(hl7.class, "cleanedAndPointers$volatile");
    public static final /* synthetic */ long g = pz0.a.objectFieldOffset(hl7.class.getDeclaredField("cleanedAndPointers$volatile"));
    private volatile /* synthetic */ int cleanedAndPointers$volatile;
    public final long e;

    public hl7(long j, S s, int i) {
        super(s);
        this.e = j;
        this.cleanedAndPointers$volatile = i << 16;
    }

    @Override // defpackage.dv1
    public final boolean d() {
        return pz0.a.getIntVolatile(this, g) == g() && c() != null;
    }

    public final boolean f() {
        return f.addAndGet(this, SupportMenu.CATEGORY_MASK) == g() && c() != null;
    }

    public abstract int g();

    public abstract void h(int i, o22 o22Var);

    public final void i() {
        if (f.incrementAndGet(this) == g()) {
            e();
        }
    }

    public final boolean j() {
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = g;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile == this.g() && this.c() != null) {
                return false;
            }
            hl7<S> hl7Var = this;
            if (unsafe.compareAndSwapInt(hl7Var, j, intVolatile, intVolatile + 65536)) {
                return true;
            }
            this = hl7Var;
        }
    }
}
