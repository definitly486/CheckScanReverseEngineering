package defpackage;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.Reader;

/* JADX INFO: loaded from: classes4.dex */
public final class zs3<T> implements i02<b57, T> {
    public final Gson a;
    public final TypeAdapter<T> b;

    public zs3(Gson gson, TypeAdapter<T> typeAdapter) {
        this.a = gson;
        this.b = typeAdapter;
    }

    @Override // defpackage.i02
    public final Object convert(b57 b57Var) {
        b57 b57Var2 = b57Var;
        Reader readerN = b57Var2.n();
        Gson gson = this.a;
        gson.getClass();
        JsonReader jsonReader = new JsonReader(readerN);
        u98 u98Var = gson.h;
        if (u98Var == null) {
            u98Var = u98.LEGACY_STRICT;
        }
        jsonReader.setStrictness(u98Var);
        try {
            T tB = this.b.b(jsonReader);
            if (jsonReader.peek() != JsonToken.END_DOCUMENT) {
                throw new JsonIOException("JSON document was not fully consumed.");
            }
            b57Var2.close();
            return tB;
        } catch (Throwable th) {
            b57Var2.close();
            throw th;
        }
    }
}
