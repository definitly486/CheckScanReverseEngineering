package defpackage;

import java.util.concurrent.atomic.AtomicReferenceArray;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final class ru4<E> {
    public static final bh8 e;
    public static final /* synthetic */ long f;
    public static final /* synthetic */ long g;
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;
    public final int a;
    public final boolean b;
    public final int c;
    public final /* synthetic */ AtomicReferenceArray d;

    public static final class a {
        public final int a;

        public a(int i) {
            this.a = i;
        }
    }

    static {
        Unsafe unsafe = pz0.a;
        f = unsafe.objectFieldOffset(ru4.class.getDeclaredField("_next$volatile"));
        g = unsafe.objectFieldOffset(ru4.class.getDeclaredField("_state$volatile"));
        e = new bh8("REMOVE_FROZEN");
    }

    public ru4(int i, boolean z) {
        this.a = i;
        this.b = z;
        int i2 = i - 1;
        this.c = i2;
        this.d = new AtomicReferenceArray(i);
        if (i2 > 1073741823) {
            ah.f("Check failed.");
            throw null;
        }
        if ((i & i2) == 0) {
            return;
        }
        ah.f("Check failed.");
        throw null;
    }

    public final int a(E e2) {
        ru4<E> ru4Var = this;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = g;
            long longVolatile = unsafe.getLongVolatile(ru4Var, j);
            if ((3458764513820540928L & longVolatile) != 0) {
                return (2305843009213693952L & longVolatile) != 0 ? 2 : 1;
            }
            int i = (int) (1073741823 & longVolatile);
            int i2 = (int) ((1152921503533105152L & longVolatile) >> 30);
            int i3 = ru4Var.c;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            boolean z = ru4Var.b;
            AtomicReferenceArray atomicReferenceArray = ru4Var.d;
            if (z || atomicReferenceArray.get(i2 & i3) == null) {
                if (unsafe.compareAndSwapLong(ru4Var, g, longVolatile, ((-1152921503533105153L) & longVolatile) | (((long) ((i2 + 1) & 1073741823)) << 30))) {
                    atomicReferenceArray.set(i2 & i3, e2);
                    ru4<E> ru4VarC = this;
                    while ((pz0.a.getLongVolatile(ru4VarC, j) & 1152921504606846976L) != 0) {
                        ru4VarC = ru4VarC.c();
                        AtomicReferenceArray atomicReferenceArray2 = ru4VarC.d;
                        int i4 = ru4VarC.c & i2;
                        Object obj = atomicReferenceArray2.get(i4);
                        if ((obj instanceof a) && ((a) obj).a == i2) {
                            atomicReferenceArray2.set(i4, e2);
                        } else {
                            ru4VarC = null;
                        }
                        if (ru4VarC == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
                ru4Var = this;
            } else {
                int i5 = ru4Var.a;
                if (i5 < 1024 || ((i2 - i) & 1073741823) > (i5 >> 1)) {
                    return 1;
                }
            }
        }
    }

    public final boolean b() {
        while (true) {
            long longVolatile = pz0.a.getLongVolatile(this, g);
            if ((longVolatile & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & longVolatile) != 0) {
                return false;
            }
            ru4<E> ru4Var = this;
            if (pz0.a.compareAndSwapLong(ru4Var, g, longVolatile, longVolatile | 2305843009213693952L)) {
                return true;
            }
            this = ru4Var;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ru4<E> c() {
        Unsafe unsafe;
        long j;
        long longVolatile;
        long j2;
        Unsafe unsafe2;
        do {
            unsafe = pz0.a;
            j = g;
            longVolatile = unsafe.getLongVolatile(this, j);
            if ((longVolatile & 1152921504606846976L) != 0) {
                j2 = longVolatile;
                break;
            }
            j2 = 1152921504606846976L | longVolatile;
        } while (!unsafe.compareAndSwapLong(this, j, longVolatile, j2));
        while (true) {
            Unsafe unsafe3 = pz0.a;
            long j3 = f;
            ru4<E> ru4Var = (ru4) unsafe3.getObjectVolatile(this, j3);
            if (ru4Var != null) {
                return ru4Var;
            }
            ru4 ru4Var2 = new ru4(this.a * 2, this.b);
            int i = (int) (1073741823 & j2);
            int i2 = (int) ((1152921503533105152L & j2) >> 30);
            while (true) {
                int i3 = this.c;
                int i4 = i & i3;
                if (i4 == (i3 & i2)) {
                    break;
                }
                Object aVar = this.d.get(i4);
                if (aVar == null) {
                    aVar = new a(i);
                }
                ru4Var2.d.set(ru4Var2.c & i, aVar);
                i++;
            }
            pz0.a.putLongVolatile(ru4Var2, g, j2 & (-1152921504606846977L));
            do {
                unsafe2 = pz0.a;
                if (unsafe2.compareAndSwapObject(this, f, (Object) null, ru4Var2)) {
                    break;
                }
            } while (unsafe2.getObjectVolatile(this, j3) == null);
        }
    }

    public final Object d() {
        ru4<E> ru4VarC = this;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = g;
            long longVolatile = unsafe.getLongVolatile(ru4VarC, j);
            if ((longVolatile & 1152921504606846976L) != 0) {
                return e;
            }
            int i = (int) (longVolatile & 1073741823);
            int i2 = ru4VarC.c;
            int i3 = ((int) ((1152921503533105152L & longVolatile) >> 30)) & i2;
            int i4 = i2 & i;
            if (i3 != i4) {
                AtomicReferenceArray atomicReferenceArray = ru4VarC.d;
                Object obj = atomicReferenceArray.get(i4);
                boolean z = ru4VarC.b;
                if (obj == null) {
                    if (z) {
                    }
                } else if (!(obj instanceof a)) {
                    long j2 = (i + 1) & 1073741823;
                    if (unsafe.compareAndSwapLong(ru4VarC, j, longVolatile, (longVolatile & (-1073741824)) | j2)) {
                        atomicReferenceArray.set(i4, null);
                        return obj;
                    }
                    ru4VarC = this;
                    if (z) {
                        while (true) {
                            Unsafe unsafe2 = pz0.a;
                            long j3 = g;
                            long longVolatile2 = unsafe2.getLongVolatile(ru4VarC, j3);
                            int i5 = (int) (longVolatile2 & 1073741823);
                            if ((longVolatile2 & 1152921504606846976L) != 0) {
                                ru4VarC = ru4VarC.c();
                            } else {
                                if (unsafe2.compareAndSwapLong(ru4VarC, j3, longVolatile2, (longVolatile2 & (-1073741824)) | j2)) {
                                    ru4VarC.d.set(ru4VarC.c & i5, null);
                                    ru4VarC = null;
                                } else {
                                    continue;
                                }
                            }
                            if (ru4VarC == null) {
                                return obj;
                            }
                        }
                    }
                }
            }
            return null;
        }
    }
}
