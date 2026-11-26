package defpackage;

import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class v39 {
    public static Collection a(Object obj) {
        if ((obj instanceof re4) && !(obj instanceof se4)) {
            g(obj, "kotlin.collections.MutableCollection");
            throw null;
        }
        try {
            return (Collection) obj;
        } catch (ClassCastException e) {
            aa4.h(e, v39.class.getName());
            throw e;
        }
    }

    public static Map b(Object obj) {
        if ((obj instanceof re4) && !(obj instanceof ue4)) {
            g(obj, "kotlin.collections.MutableMap");
            throw null;
        }
        try {
            return (Map) obj;
        } catch (ClassCastException e) {
            aa4.h(e, v39.class.getName());
            throw e;
        }
    }

    public static void c(int i, Object obj) {
        if (obj == null || d(i, obj)) {
            return;
        }
        g(obj, "kotlin.jvm.functions.Function" + i);
        throw null;
    }

    public static boolean d(int i, Object obj) {
        int arity;
        if (obj instanceof cm3) {
            if (obj instanceof nm3) {
                arity = ((nm3) obj).getArity();
            } else if (obj instanceof ll3) {
                arity = 0;
            } else if (obj instanceof nl3) {
                arity = 1;
            } else if (obj instanceof bm3) {
                arity = 2;
            } else if (obj instanceof dm3) {
                arity = 3;
            } else if (obj instanceof fm3) {
                arity = 4;
            } else if (obj instanceof gm3) {
                arity = 5;
            } else if (obj instanceof hm3) {
                arity = 6;
            } else if (obj instanceof im3) {
                arity = 7;
            } else if (obj instanceof jm3) {
                arity = 8;
            } else if (obj instanceof km3) {
                arity = 9;
            } else if (obj instanceof ml3) {
                arity = 10;
            } else if (obj instanceof ol3) {
                arity = 11;
            } else if (obj instanceof pl3) {
                arity = 12;
            } else if (obj instanceof ql3) {
                arity = 13;
            } else if (obj instanceof rl3) {
                arity = 14;
            } else if (obj instanceof sl3) {
                arity = 15;
            } else if (obj instanceof tl3) {
                arity = 16;
            } else if (obj instanceof ul3) {
                arity = 17;
            } else if (obj instanceof vl3) {
                arity = 18;
            } else if (obj instanceof wl3) {
                arity = 19;
            } else if (obj instanceof yl3) {
                arity = 20;
            } else if (obj instanceof zl3) {
                arity = 21;
            } else {
                arity = obj instanceof am3 ? 22 : -1;
            }
            if (arity == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean e(Object obj) {
        if (obj instanceof Map) {
            return !(obj instanceof re4) || (obj instanceof ue4);
        }
        return false;
    }

    public static boolean f(Object obj) {
        if (obj instanceof Map.Entry) {
            return !(obj instanceof re4) || (obj instanceof ue4.a);
        }
        return false;
    }

    public static void g(Object obj, String str) {
        ClassCastException classCastException = new ClassCastException(me0.c(obj == null ? "null" : obj.getClass().getName(), " cannot be cast to ", str));
        aa4.h(classCastException, v39.class.getName());
        throw classCastException;
    }
}
