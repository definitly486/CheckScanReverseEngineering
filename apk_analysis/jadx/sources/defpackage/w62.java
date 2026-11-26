package defpackage;

import android.util.Log;
import java.lang.reflect.Field;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class w62 {
    public static final cl4 a = nm4.a(po4.NONE, a.f);

    public static final class a extends gh4 implements ll3<y77> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final y77 invoke() {
            Field field;
            y77 y77Var = new y77();
            cl4 cl4Var = pi9.a;
            r4 r4Var = new r4(y77Var, 1);
            try {
                Object value = pi9.b.getValue();
                if (value == null || (field = (Field) pi9.c.getValue()) == null) {
                    return y77Var;
                }
                Object obj = field.get(value);
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.ArrayList<android.view.View> /* = java.util.ArrayList<android.view.View> */");
                }
                field.set(value, r4Var.invoke((ArrayList) obj));
                return y77Var;
            } catch (Throwable th) {
                Log.w("WindowManagerSpy", th);
                return y77Var;
            }
        }
    }
}
