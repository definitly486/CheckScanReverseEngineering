package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import defpackage.ax8;
import defpackage.bx8;
import defpackage.qz0;
import defpackage.t39;
import defpackage.x39;
import defpackage.xq4;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ObjectTypeAdapter extends TypeAdapter<Object> {
    public static final t39 c = new AnonymousClass1(ax8.DOUBLE);
    public final Gson a;
    public final bx8 b;

    /* JADX INFO: renamed from: com.google.gson.internal.bind.ObjectTypeAdapter$1, reason: invalid class name */
    class AnonymousClass1 implements t39 {
        public final /* synthetic */ bx8 b;

        public AnonymousClass1(bx8 bx8Var) {
            this.b = bx8Var;
        }

        @Override // defpackage.t39
        public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
            if (x39Var.a == Object.class) {
                return new ObjectTypeAdapter(gson, this.b);
            }
            return null;
        }
    }

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

    public ObjectTypeAdapter(Gson gson, bx8 bx8Var) {
        this.a = gson;
        this.b = bx8Var;
    }

    public static t39 d(bx8 bx8Var) {
        return bx8Var == ax8.DOUBLE ? c : new AnonymousClass1(bx8Var);
    }

    public static Serializable f(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
        int i = a.a[jsonToken.ordinal()];
        if (i == 1) {
            jsonReader.beginArray();
            return new ArrayList();
        }
        if (i != 2) {
            return null;
        }
        jsonReader.beginObject();
        return new xq4();
    }

    @Override // com.google.gson.TypeAdapter
    public final Object b(JsonReader jsonReader) throws IOException {
        JsonToken jsonTokenPeek = jsonReader.peek();
        Object objF = f(jsonReader, jsonTokenPeek);
        if (objF == null) {
            return e(jsonReader, jsonTokenPeek);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (jsonReader.hasNext()) {
                String strNextName = objF instanceof Map ? jsonReader.nextName() : null;
                JsonToken jsonTokenPeek2 = jsonReader.peek();
                Serializable serializableF = f(jsonReader, jsonTokenPeek2);
                boolean z = serializableF != null;
                if (serializableF == null) {
                    serializableF = e(jsonReader, jsonTokenPeek2);
                }
                if (objF instanceof List) {
                    ((List) objF).add(serializableF);
                } else {
                    ((Map) objF).put(strNextName, serializableF);
                }
                if (z) {
                    arrayDeque.addLast(objF);
                    objF = serializableF;
                }
            } else {
                if (objF instanceof List) {
                    jsonReader.endArray();
                } else {
                    jsonReader.endObject();
                }
                if (arrayDeque.isEmpty()) {
                    return objF;
                }
                objF = arrayDeque.removeLast();
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        Class<?> cls = obj.getClass();
        Gson gson = this.a;
        gson.getClass();
        TypeAdapter typeAdapterG = gson.g(new x39(cls));
        if (!(typeAdapterG instanceof ObjectTypeAdapter)) {
            typeAdapterG.c(jsonWriter, obj);
        } else {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    public final Serializable e(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
        int i = a.a[jsonToken.ordinal()];
        if (i == 3) {
            return jsonReader.nextString();
        }
        if (i == 4) {
            return this.b.a(jsonReader);
        }
        if (i == 5) {
            return Boolean.valueOf(jsonReader.nextBoolean());
        }
        if (i == 6) {
            jsonReader.nextNull();
            return null;
        }
        qz0.i(jsonToken, "Unexpected token: ");
        return null;
    }
}
