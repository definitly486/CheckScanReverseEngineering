package defpackage;

import android.util.Log;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes3.dex */
public final class ey4 implements pr {
    public final rs3<a, Object> a = new rs3<>();
    public final b b = new b(3, (byte) 0);
    public final HashMap c = new HashMap();
    public final HashMap d = new HashMap();
    public final int e;
    public int f;

    public static final class a implements ia6 {
        public final b a;
        public int b;
        public Class<?> c;

        public a(b bVar) {
            this.a = bVar;
        }

        @Override // defpackage.ia6
        public final void a() {
            this.a.l(this);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.b == aVar.b && this.c == aVar.c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i = this.b * 31;
            Class<?> cls = this.c;
            return i + (cls != null ? cls.hashCode() : 0);
        }

        public final String toString() {
            return "Key{size=" + this.b + "array=" + this.c + '}';
        }
    }

    public static final class b extends u1 {
        public final ia6 p() {
            return new a(this);
        }
    }

    public ey4(int i) {
        this.e = i;
    }

    @Override // defpackage.pr
    public final synchronized void a(int i) {
        try {
            if (i >= 40) {
                b();
            } else if (i >= 20 || i == 15) {
                f(this.e / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // defpackage.pr
    public final synchronized void b() {
        f(0);
    }

    @Override // defpackage.pr
    public final synchronized Object c(Class cls, int i) {
        a aVar;
        int i2;
        try {
            Integer numCeilingKey = i(cls).ceilingKey(Integer.valueOf(i));
            boolean z = numCeilingKey != null && ((i2 = this.f) == 0 || this.e / i2 >= 2 || numCeilingKey.intValue() <= i * 8);
            b bVar = this.b;
            if (z) {
                int iIntValue = numCeilingKey.intValue();
                ia6 ia6VarP = (ia6) ((ArrayDeque) bVar.b).poll();
                if (ia6VarP == null) {
                    ia6VarP = bVar.p();
                }
                aVar = (a) ia6VarP;
                aVar.b = iIntValue;
                aVar.c = cls;
            } else {
                ia6 ia6VarP2 = (ia6) ((ArrayDeque) bVar.b).poll();
                if (ia6VarP2 == null) {
                    ia6VarP2 = bVar.p();
                }
                aVar = (a) ia6VarP2;
                aVar.b = i;
                aVar.c = cls;
            }
        } catch (Throwable th) {
            throw th;
        }
        return h(aVar, cls);
    }

    @Override // defpackage.pr
    public final synchronized Object d() {
        a aVar;
        b bVar = this.b;
        ia6 ia6VarP = (ia6) ((ArrayDeque) bVar.b).poll();
        if (ia6VarP == null) {
            ia6VarP = bVar.p();
        }
        aVar = (a) ia6VarP;
        aVar.b = 8;
        aVar.c = byte[].class;
        return h(aVar, byte[].class);
    }

    public final void e(Class cls, int i) {
        NavigableMap<Integer, Integer> navigableMapI = i(cls);
        Integer num = navigableMapI.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapI.remove(Integer.valueOf(i));
                return;
            } else {
                navigableMapI.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    public final void f(int i) {
        while (this.f > i) {
            Object objC = this.a.c();
            r96.b(objC);
            cr crVarG = g(objC.getClass());
            this.f -= crVarG.b() * crVarG.a(objC);
            e(objC.getClass(), crVarG.a(objC));
            if (Log.isLoggable(crVarG.getTag(), 2)) {
                Log.v(crVarG.getTag(), "evicted: " + crVarG.a(objC));
            }
        }
    }

    public final <T> cr<T> g(Class<T> cls) {
        cr<T> mw0Var;
        HashMap map = this.d;
        cr<T> crVar = (cr) map.get(cls);
        if (crVar != null) {
            return crVar;
        }
        if (cls.equals(int[].class)) {
            mw0Var = new a84();
        } else {
            if (!cls.equals(byte[].class)) {
                fg.c("No array pool found for: ".concat(cls.getSimpleName()));
                return null;
            }
            mw0Var = new mw0();
        }
        map.put(cls, mw0Var);
        return mw0Var;
    }

    public final <T> T h(a aVar, Class<T> cls) {
        cr<T> crVarG = g(cls);
        T t = (T) this.a.a(aVar);
        if (t != null) {
            this.f -= crVarG.b() * crVarG.a(t);
            e(cls, crVarG.a(t));
        }
        if (t != null) {
            return t;
        }
        if (Log.isLoggable(crVarG.getTag(), 2)) {
            Log.v(crVarG.getTag(), "Allocated " + aVar.b + " bytes");
        }
        return crVarG.newArray(aVar.b);
    }

    public final NavigableMap<Integer, Integer> i(Class<?> cls) {
        HashMap map = this.c;
        NavigableMap<Integer, Integer> navigableMap = (NavigableMap) map.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(cls, treeMap);
        return treeMap;
    }

    @Override // defpackage.pr
    public final synchronized <T> void put(T t) {
        Class<?> cls = t.getClass();
        cr<T> crVarG = g(cls);
        int iA = crVarG.a(t);
        int iB = crVarG.b() * iA;
        if (iB <= this.e / 2) {
            b bVar = this.b;
            ia6 ia6VarP = (ia6) ((ArrayDeque) bVar.b).poll();
            if (ia6VarP == null) {
                ia6VarP = bVar.p();
            }
            a aVar = (a) ia6VarP;
            aVar.b = iA;
            aVar.c = cls;
            this.a.b(aVar, t);
            NavigableMap<Integer, Integer> navigableMapI = i(cls);
            Integer num = navigableMapI.get(Integer.valueOf(aVar.b));
            Integer numValueOf = Integer.valueOf(aVar.b);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapI.put(numValueOf, Integer.valueOf(iIntValue));
            this.f += iB;
            f(this.e);
        }
    }
}
