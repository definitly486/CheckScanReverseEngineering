package defpackage;

import com.google.gson.Gson;
import com.google.gson.JsonParseException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
public final class ht3 {
    public static final fh8 a = nm4.b(a.f);

    public static final class a extends gh4 implements ll3<Gson> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final Gson invoke() {
            return new Gson();
        }
    }

    public static final <T> T a(Gson gson, String str, Type type) {
        gson.getClass();
        str.getClass();
        try {
            return (T) gson.f(str, new x39<>(type));
        } catch (JsonParseException unused) {
            return null;
        }
    }

    public static final Object b(Class cls, String str) {
        str.getClass();
        Gson gsonC = c();
        gsonC.getClass();
        try {
            return gsonC.f(str, new x39(cls));
        } catch (JsonParseException unused) {
            return null;
        }
    }

    public static final Gson c() {
        return (Gson) a.getValue();
    }
}
