package defpackage;

import com.google.gson.internal.bind.JsonElementTypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class pc4 {
    @Deprecated
    public pc4() {
    }

    public boolean a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final ac4 c() {
        if (this instanceof ac4) {
            return (ac4) this;
        }
        qz0.i(this, "Not a JSON Array: ");
        return null;
    }

    public final kd4 d() {
        if (this instanceof kd4) {
            return (kd4) this;
        }
        qz0.i(this, "Not a JSON Object: ");
        return null;
    }

    public final qd4 f() {
        if (this instanceof qd4) {
            return (qd4) this;
        }
        qz0.i(this, "Not a JSON Primitive: ");
        return null;
    }

    public String g() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final String toString() {
        try {
            StringBuilder sb = new StringBuilder();
            JsonWriter jsonWriter = new JsonWriter(new q98(sb));
            jsonWriter.setStrictness(u98.LENIENT);
            JsonElementTypeAdapter.a.getClass();
            JsonElementTypeAdapter.g(this, jsonWriter);
            return sb.toString();
        } catch (IOException e) {
            xg.d(e);
            return null;
        }
    }
}
