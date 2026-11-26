package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class h79 {
    public static final Unsafe a;
    public static final Class<?> b;
    public static final d c;
    public static final boolean d;
    public static final boolean e;
    public static final long f;
    public static final long g;
    public static final boolean h;

    public static final class a extends d {
        @Override // h79.d
        public final void a(long j, byte[] bArr, long j2, long j3) {
            throw new UnsupportedOperationException();
        }

        @Override // h79.d
        public final boolean b(Object obj, long j) {
            if (h79.h) {
                return h79.f(obj, j) != 0;
            }
            return h79.g(obj, j) != 0;
        }

        @Override // h79.d
        public final byte c(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // h79.d
        public final byte d(Object obj, long j) {
            return h79.h ? h79.f(obj, j) : h79.g(obj, j);
        }

        @Override // h79.d
        public final double e(Object obj, long j) {
            return Double.longBitsToDouble(this.a.getLong(obj, j));
        }

        @Override // h79.d
        public final float f(Object obj, long j) {
            return Float.intBitsToFloat(this.a.getInt(obj, j));
        }

        @Override // h79.d
        public final void g(Object obj, long j, boolean z) {
            if (h79.h) {
                h79.m(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                h79.n(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // h79.d
        public final void h(Object obj, long j, byte b) {
            if (h79.h) {
                h79.m(obj, j, b);
            } else {
                h79.n(obj, j, b);
            }
        }

        @Override // h79.d
        public final void i(Object obj, long j, double d) {
            this.a.putLong(obj, j, Double.doubleToLongBits(d));
        }

        @Override // h79.d
        public final void j(Object obj, long j, float f) {
            this.a.putInt(obj, j, Float.floatToIntBits(f));
        }

        @Override // h79.d
        public final boolean l() {
            return false;
        }
    }

    public static final class b extends d {
        @Override // h79.d
        public final void a(long j, byte[] bArr, long j2, long j3) {
            throw new UnsupportedOperationException();
        }

        @Override // h79.d
        public final boolean b(Object obj, long j) {
            if (h79.h) {
                return h79.f(obj, j) != 0;
            }
            return h79.g(obj, j) != 0;
        }

        @Override // h79.d
        public final byte c(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // h79.d
        public final byte d(Object obj, long j) {
            return h79.h ? h79.f(obj, j) : h79.g(obj, j);
        }

        @Override // h79.d
        public final double e(Object obj, long j) {
            return Double.longBitsToDouble(this.a.getLong(obj, j));
        }

        @Override // h79.d
        public final float f(Object obj, long j) {
            return Float.intBitsToFloat(this.a.getInt(obj, j));
        }

        @Override // h79.d
        public final void g(Object obj, long j, boolean z) {
            if (h79.h) {
                h79.m(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                h79.n(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // h79.d
        public final void h(Object obj, long j, byte b) {
            if (h79.h) {
                h79.m(obj, j, b);
            } else {
                h79.n(obj, j, b);
            }
        }

        @Override // h79.d
        public final void i(Object obj, long j, double d) {
            this.a.putLong(obj, j, Double.doubleToLongBits(d));
        }

        @Override // h79.d
        public final void j(Object obj, long j, float f) {
            this.a.putInt(obj, j, Float.floatToIntBits(f));
        }

        @Override // h79.d
        public final boolean l() {
            return false;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static final class c extends d {
        @Override // h79.d
        public final void a(long j, byte[] bArr, long j2, long j3) {
            this.a.copyMemory((Object) null, j, bArr, h79.f + j2, j3);
        }

        @Override // h79.d
        public final boolean b(Object obj, long j) {
            return this.a.getBoolean(obj, j);
        }

        @Override // h79.d
        public final byte c(long j) {
            return this.a.getByte(j);
        }

        @Override // h79.d
        public final byte d(Object obj, long j) {
            return this.a.getByte(obj, j);
        }

        @Override // h79.d
        public final double e(Object obj, long j) {
            return this.a.getDouble(obj, j);
        }

        @Override // h79.d
        public final float f(Object obj, long j) {
            return this.a.getFloat(obj, j);
        }

        @Override // h79.d
        public final void g(Object obj, long j, boolean z) {
            this.a.putBoolean(obj, j, z);
        }

        @Override // h79.d
        public final void h(Object obj, long j, byte b) {
            this.a.putByte(obj, j, b);
        }

        @Override // h79.d
        public final void i(Object obj, long j, double d) {
            this.a.putDouble(obj, j, d);
        }

        @Override // h79.d
        public final void j(Object obj, long j, float f) {
            this.a.putFloat(obj, j, f);
        }

        @Override // h79.d
        public final boolean k() {
            if (!super.k()) {
                return false;
            }
            try {
                Class<?> cls = this.a.getClass();
                Class cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th) {
                h79.k(th);
                return false;
            }
        }

        @Override // h79.d
        public final boolean l() {
            Unsafe unsafe = this.a;
            if (unsafe != null) {
                try {
                    Class<?> cls = unsafe.getClass();
                    cls.getMethod("objectFieldOffset", Field.class);
                    Class cls2 = Long.TYPE;
                    cls.getMethod("getLong", Object.class, cls2);
                    if (h79.c() != null) {
                        try {
                            Class<?> cls3 = unsafe.getClass();
                            cls3.getMethod("getByte", cls2);
                            cls3.getMethod("putByte", cls2, Byte.TYPE);
                            cls3.getMethod("getInt", cls2);
                            cls3.getMethod("putInt", cls2, Integer.TYPE);
                            cls3.getMethod("getLong", cls2);
                            cls3.getMethod("putLong", cls2, cls2);
                            cls3.getMethod("copyMemory", cls2, cls2, cls2);
                            cls3.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                            return true;
                        } catch (Throwable th) {
                            h79.k(th);
                            return false;
                        }
                    }
                } catch (Throwable th2) {
                    h79.k(th2);
                }
            }
            return false;
        }
    }

    public static abstract class d {
        public final Unsafe a;

        public d(Unsafe unsafe) {
            this.a = unsafe;
        }

        public abstract void a(long j, byte[] bArr, long j2, long j3);

        public abstract boolean b(Object obj, long j);

        public abstract byte c(long j);

        public abstract byte d(Object obj, long j);

        public abstract double e(Object obj, long j);

        public abstract float f(Object obj, long j);

        public abstract void g(Object obj, long j, boolean z);

        public abstract void h(Object obj, long j, byte b);

        public abstract void i(Object obj, long j, double d);

        public abstract void j(Object obj, long j, float f);

        public boolean k() {
            Unsafe unsafe = this.a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                h79.k(th);
                return false;
            }
        }

        public abstract boolean l();
    }

    static {
        Unsafe unsafe;
        d cVar = null;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new g79());
        } catch (Throwable unused) {
            unsafe = null;
        }
        a = unsafe;
        b = xf.a;
        boolean zD = d(Long.TYPE);
        boolean zD2 = d(Integer.TYPE);
        if (unsafe != null) {
            if (!xf.a()) {
                cVar = new c(unsafe);
            } else if (zD) {
                cVar = new b(unsafe);
            } else if (zD2) {
                cVar = new a(unsafe);
            }
        }
        c = cVar;
        d = cVar == null ? false : cVar.l();
        e = cVar == null ? false : cVar.k();
        f = a(byte[].class);
        a(boolean[].class);
        b(boolean[].class);
        a(int[].class);
        b(int[].class);
        a(long[].class);
        b(long[].class);
        a(float[].class);
        b(float[].class);
        a(double[].class);
        b(double[].class);
        a(Object[].class);
        b(Object[].class);
        Field fieldC = c();
        g = (fieldC == null || cVar == null) ? -1L : cVar.a.objectFieldOffset(fieldC);
        h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static int a(Class<?> cls) {
        if (e) {
            return c.a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static void b(Class cls) {
        if (e) {
            c.a.arrayIndexScale(cls);
        }
    }

    public static Field c() {
        Field declaredField;
        Field declaredField2;
        if (xf.a()) {
            try {
                declaredField2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                declaredField2 = null;
            }
            if (declaredField2 != null) {
                return declaredField2;
            }
        }
        try {
            declaredField = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField = null;
        }
        if (declaredField == null || declaredField.getType() != Long.TYPE) {
            return null;
        }
        return declaredField;
    }

    public static boolean d(Class<?> cls) {
        if (!xf.a()) {
            return false;
        }
        try {
            Class<?> cls2 = b;
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

    public static byte e(byte[] bArr, long j) {
        return c.d(bArr, f + j);
    }

    public static byte f(Object obj, long j) {
        return (byte) ((h(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255);
    }

    public static byte g(Object obj, long j) {
        return (byte) ((h(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    public static int h(Object obj, long j) {
        return c.a.getInt(obj, j);
    }

    public static long i(Object obj, long j) {
        return c.a.getLong(obj, j);
    }

    public static Object j(Object obj, long j) {
        return c.a.getObject(obj, j);
    }

    public static void k(Throwable th) {
        Logger.getLogger(h79.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    public static void l(byte[] bArr, long j, byte b2) {
        c.h(bArr, f + j, b2);
    }

    public static void m(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int iH = h(obj, j2);
        int i = ((~((int) j)) & 3) << 3;
        o(obj, j2, ((255 & b2) << i) | (iH & (~(255 << i))));
    }

    public static void n(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        o(obj, j2, ((255 & b2) << i) | (h(obj, j2) & (~(255 << i))));
    }

    public static void o(Object obj, long j, int i) {
        c.a.putInt(obj, j, i);
    }

    public static void p(Object obj, long j, long j2) {
        c.a.putLong(obj, j, j2);
    }

    public static void q(Object obj, long j, Object obj2) {
        c.a.putObject(obj, j, obj2);
    }
}
