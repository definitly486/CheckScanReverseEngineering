package defpackage;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class z07 {

    public static abstract class a {
        public static final a a;

        /* JADX INFO: renamed from: z07$a$a, reason: collision with other inner class name */
        public class C0370a extends a {
            public final /* synthetic */ Method b;

            public C0370a(Method method) {
                this.b = method;
            }

            @Override // z07.a
            public final boolean a(Object obj, AccessibleObject accessibleObject) {
                try {
                    return ((Boolean) this.b.invoke(accessibleObject, obj)).booleanValue();
                } catch (Exception e) {
                    mg.e("Failed invoking canAccess", e);
                    return false;
                }
            }
        }

        public class b extends a {
            @Override // z07.a
            public final boolean a(Object obj, AccessibleObject accessibleObject) {
                return true;
            }
        }

        static {
            a c0370a;
            if (hb4.a >= 9) {
                try {
                    c0370a = new C0370a(AccessibleObject.class.getDeclaredMethod("canAccess", Object.class));
                } catch (NoSuchMethodException unused) {
                    c0370a = null;
                }
            } else {
                c0370a = null;
            }
            if (c0370a == null) {
                c0370a = new b();
            }
            a = c0370a;
        }

        public abstract boolean a(Object obj, AccessibleObject accessibleObject);
    }

    public static y07.a a(List<y07> list, Class<?> cls) {
        Iterator<y07> it = list.iterator();
        while (it.hasNext()) {
            y07.a aVarA = it.next().a();
            if (aVarA != y07.a.INDECISIVE) {
                return aVarA;
            }
        }
        return y07.a.ALLOW;
    }
}
