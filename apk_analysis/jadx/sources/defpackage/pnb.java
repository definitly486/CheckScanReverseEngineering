package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class pnb {
    public static final Unsafe a;
    public static final Class b;
    public static final dta c;
    public static final boolean d;
    public static final boolean e;
    public static final boolean f;

    /* JADX WARN: Code duplicated, block: B:15:0x004a  */
    static {
        Unsafe unsafe;
        boolean z;
        boolean z2;
        dta dtaVar;
        dta dnbVar = null;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new anb());
        } catch (Throwable unused) {
            unsafe = null;
        }
        a = unsafe;
        int i = b7b.a;
        b = Memory.class;
        Class cls = Long.TYPE;
        boolean zJ = j(cls);
        Class cls2 = Integer.TYPE;
        boolean zJ2 = j(cls2);
        if (unsafe != null) {
            if (zJ) {
                dnbVar = new inb(unsafe);
            } else if (zJ2) {
                dnbVar = new dnb(unsafe);
            }
        }
        c = dnbVar;
        if (dnbVar == null) {
            z = false;
        } else {
            try {
                Class<?> cls3 = dnbVar.a.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("getLong", Object.class, cls);
                if (m() == null) {
                    z = false;
                } else {
                    z = true;
                }
            } catch (Throwable th) {
                Logger.getLogger(pnb.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
            }
        }
        d = z;
        dta dtaVar2 = c;
        if (dtaVar2 == null) {
            z2 = false;
        } else {
            try {
                Class<?> cls4 = dtaVar2.a.getClass();
                cls4.getMethod("objectFieldOffset", Field.class);
                cls4.getMethod("arrayBaseOffset", Class.class);
                cls4.getMethod("arrayIndexScale", Class.class);
                cls4.getMethod("getInt", Object.class, cls);
                cls4.getMethod("putInt", Object.class, cls, cls2);
                cls4.getMethod("getLong", Object.class, cls);
                cls4.getMethod("putLong", Object.class, cls, cls);
                cls4.getMethod("getObject", Object.class, cls);
                cls4.getMethod("putObject", Object.class, cls, Object.class);
                z2 = true;
            } catch (Throwable th2) {
                Logger.getLogger(pnb.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
                z2 = false;
            }
        }
        e = z2;
        k(byte[].class);
        k(boolean[].class);
        l(boolean[].class);
        k(int[].class);
        l(int[].class);
        k(long[].class);
        l(long[].class);
        k(float[].class);
        l(float[].class);
        k(double[].class);
        l(double[].class);
        k(Object[].class);
        l(Object[].class);
        Field fieldM = m();
        if (fieldM != null && (dtaVar = c) != null) {
            dtaVar.a.objectFieldOffset(fieldM);
        }
        f = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static int a(Object obj, long j) {
        return c.a.getInt(obj, j);
    }

    public static long b(Object obj, long j) {
        return c.a.getLong(obj, j);
    }

    public static Object c(Object obj, long j) {
        return c.a.getObject(obj, j);
    }

    public static /* synthetic */ void d(Object obj, long j, boolean z) {
        dta dtaVar = c;
        long j2 = (-4) & j;
        int i = dtaVar.a.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        dtaVar.a.putInt(obj, j2, ((z ? 1 : 0) << i2) | ((~(255 << i2)) & i));
    }

    public static /* synthetic */ void e(Object obj, long j, boolean z) {
        dta dtaVar = c;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        dtaVar.a.putInt(obj, j2, ((z ? 1 : 0) << i) | ((~(255 << i)) & dtaVar.a.getInt(obj, j2)));
    }

    public static void f(int i, long j, Object obj) {
        c.a.putInt(obj, j, i);
    }

    public static void g(long j, Object obj, Object obj2) {
        c.a.putObject(obj, j, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean h(Object obj, long j) {
        return ((byte) ((c.a.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean i(Object obj, long j) {
        return ((byte) ((c.a.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    public static boolean j(Class cls) {
        int i = b7b.a;
        try {
            Class cls2 = b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void k(Class cls) {
        if (e) {
            c.a.arrayBaseOffset(cls);
        }
    }

    public static void l(Class cls) {
        if (e) {
            c.a.arrayIndexScale(cls);
        }
    }

    public static Field m() {
        Field declaredField;
        Field declaredField2;
        int i = b7b.a;
        try {
            declaredField = Buffer.class.getDeclaredField("effectiveDirectAddress");
        } catch (Throwable unused) {
            declaredField = null;
        }
        if (declaredField != null) {
            return declaredField;
        }
        try {
            declaredField2 = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField2 = null;
        }
        if (declaredField2 == null || declaredField2.getType() != Long.TYPE) {
            return null;
        }
        return declaredField2;
    }
}
