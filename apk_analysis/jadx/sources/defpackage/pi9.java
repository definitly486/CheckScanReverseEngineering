package defpackage;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public final class pi9 {
    public static final cl4 a;
    public static final cl4 b;
    public static final cl4 c;

    public static final class a extends gh4 implements ll3<Field> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final Field invoke() throws NoSuchFieldException {
            Class cls = (Class) pi9.a.getValue();
            if (cls == null) {
                return null;
            }
            Field declaredField = cls.getDeclaredField("mViews");
            declaredField.setAccessible(true);
            return declaredField;
        }
    }

    public static final class b extends gh4 implements ll3<Class<?>> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final Class<?> invoke() {
            try {
                return Class.forName("android.view.WindowManagerGlobal");
            } catch (Throwable th) {
                Log.w("WindowManagerSpy", th);
                return null;
            }
        }
    }

    public static final class c extends gh4 implements ll3<Object> {
        public static final c f = new c(0);

        @Override // defpackage.ll3
        public final Object invoke() {
            Class cls = (Class) pi9.a.getValue();
            if (cls != null) {
                return cls.getMethod("getInstance", null).invoke(null, null);
            }
            return null;
        }
    }

    static {
        po4 po4Var = po4.NONE;
        a = nm4.a(po4Var, b.f);
        b = nm4.a(po4Var, c.f);
        c = nm4.a(po4Var, a.f);
    }
}
