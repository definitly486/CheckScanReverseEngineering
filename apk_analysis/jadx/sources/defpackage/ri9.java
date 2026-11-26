package defpackage;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public final class ri9 {
    public static final cl4 a;
    public static final cl4 b;

    public static final class a extends gh4 implements ll3<Class<?>> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final Class<?> invoke() {
            int i = Build.VERSION.SDK_INT;
            try {
                return Class.forName("com.android.internal.policy.DecorView");
            } catch (Throwable th) {
                Log.d("WindowSpy", "Unexpected exception loading com.android.internal.policy.DecorView on API " + i, th);
                return null;
            }
        }
    }

    public static final class b extends gh4 implements ll3<Field> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final Field invoke() {
            Class cls = (Class) ri9.a.getValue();
            if (cls != null) {
                int i = Build.VERSION.SDK_INT;
                try {
                    Field declaredField = cls.getDeclaredField("mWindow");
                    declaredField.setAccessible(true);
                    return declaredField;
                } catch (NoSuchFieldException e) {
                    Log.d("WindowSpy", "Unexpected exception retrieving " + cls + "#mWindow on API " + i, e);
                }
            }
            return null;
        }
    }

    static {
        po4 po4Var = po4.NONE;
        a = nm4.a(po4Var, a.f);
        b = nm4.a(po4Var, b.f);
    }
}
