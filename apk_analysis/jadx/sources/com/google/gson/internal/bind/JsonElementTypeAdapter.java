package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import defpackage.ac4;
import defpackage.bl4;
import defpackage.c9;
import defpackage.ce4;
import defpackage.hd4;
import defpackage.kd4;
import defpackage.mz0;
import defpackage.pc4;
import defpackage.qd4;
import defpackage.qz0;
import defpackage.xq4;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class JsonElementTypeAdapter extends TypeAdapter<pc4> {
    public static final JsonElementTypeAdapter a = new JsonElementTypeAdapter();

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private JsonElementTypeAdapter() {
    }

    public static pc4 d(JsonReader jsonReader) throws IOException {
        if (jsonReader instanceof ce4) {
            ce4 ce4Var = (ce4) jsonReader;
            JsonToken jsonTokenPeek = ce4Var.peek();
            if (jsonTokenPeek == JsonToken.NAME || jsonTokenPeek == JsonToken.END_ARRAY || jsonTokenPeek == JsonToken.END_OBJECT || jsonTokenPeek == JsonToken.END_DOCUMENT) {
                c9.g(jsonTokenPeek, "Unexpected ", " when reading a JsonElement.");
                return null;
            }
            pc4 pc4Var = (pc4) ce4Var.o();
            ce4Var.skipValue();
            return pc4Var;
        }
        JsonToken jsonTokenPeek2 = jsonReader.peek();
        pc4 pc4VarF = f(jsonReader, jsonTokenPeek2);
        if (pc4VarF == null) {
            return e(jsonReader, jsonTokenPeek2);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (jsonReader.hasNext()) {
                String strNextName = pc4VarF instanceof kd4 ? jsonReader.nextName() : null;
                JsonToken jsonTokenPeek3 = jsonReader.peek();
                pc4 pc4VarF2 = f(jsonReader, jsonTokenPeek3);
                boolean z = pc4VarF2 != null;
                if (pc4VarF2 == null) {
                    pc4VarF2 = e(jsonReader, jsonTokenPeek3);
                }
                if (pc4VarF instanceof ac4) {
                    ((ac4) pc4VarF).b.add(pc4VarF2 == null ? hd4.b : pc4VarF2);
                } else {
                    ((kd4) pc4VarF).b.put(strNextName, pc4VarF2 == null ? hd4.b : pc4VarF2);
                }
                if (z) {
                    arrayDeque.addLast(pc4VarF);
                    pc4VarF = pc4VarF2;
                }
            } else {
                if (pc4VarF instanceof ac4) {
                    jsonReader.endArray();
                } else {
                    jsonReader.endObject();
                }
                if (arrayDeque.isEmpty()) {
                    return pc4VarF;
                }
                pc4VarF = (pc4) arrayDeque.removeLast();
            }
        }
    }

    public static pc4 e(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
        int i = a.a[jsonToken.ordinal()];
        if (i == 3) {
            return new qd4(jsonReader.nextString());
        }
        if (i == 4) {
            return new qd4(new bl4(jsonReader.nextString()));
        }
        if (i == 5) {
            return new qd4(Boolean.valueOf(jsonReader.nextBoolean()));
        }
        if (i == 6) {
            jsonReader.nextNull();
            return hd4.b;
        }
        qz0.i(jsonToken, "Unexpected token: ");
        return null;
    }

    public static pc4 f(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
        int i = a.a[jsonToken.ordinal()];
        if (i == 1) {
            jsonReader.beginArray();
            return new ac4();
        }
        if (i != 2) {
            return null;
        }
        jsonReader.beginObject();
        return new kd4();
    }

    public static void g(pc4 pc4Var, JsonWriter jsonWriter) throws IOException {
        if (pc4Var == null || (pc4Var instanceof hd4)) {
            jsonWriter.nullValue();
            return;
        }
        if (pc4Var instanceof qd4) {
            qd4 qd4VarF = pc4Var.f();
            Serializable serializable = qd4VarF.b;
            if (serializable instanceof Number) {
                jsonWriter.value(qd4VarF.j());
                return;
            } else if (serializable instanceof Boolean) {
                jsonWriter.value(qd4VarF.a());
                return;
            } else {
                jsonWriter.value(qd4VarF.g());
                return;
            }
        }
        if (pc4Var instanceof ac4) {
            jsonWriter.beginArray();
            Iterator<pc4> it = pc4Var.c().b.iterator();
            while (it.hasNext()) {
                g(it.next(), jsonWriter);
            }
            jsonWriter.endArray();
            return;
        }
        if (!(pc4Var instanceof kd4)) {
            mz0.c(pc4Var.getClass(), "Couldn't write ");
            return;
        }
        jsonWriter.beginObject();
        Iterator it2 = ((xq4.b) pc4Var.d().b.entrySet()).iterator();
        while (((xq4.d) it2).hasNext()) {
            Map.Entry entryA = ((xq4.b.a) it2).a();
            jsonWriter.name((String) entryA.getKey());
            g((pc4) entryA.getValue(), jsonWriter);
        }
        jsonWriter.endObject();
    }

    @Override // com.google.gson.TypeAdapter
    public final /* bridge */ /* synthetic */ pc4 b(JsonReader jsonReader) {
        return d(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public final /* bridge */ /* synthetic */ void c(JsonWriter jsonWriter, pc4 pc4Var) throws IOException {
        g(pc4Var, jsonWriter);
    }
}
