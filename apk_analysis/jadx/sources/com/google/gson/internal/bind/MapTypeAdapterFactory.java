package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import defpackage.mq5;
import defpackage.ot3;
import defpackage.px1;
import defpackage.t39;
import defpackage.ud4;
import defpackage.x39;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Properties;

/* JADX INFO: loaded from: classes4.dex */
public final class MapTypeAdapterFactory implements t39 {
    public final px1 b;

    public final class Adapter<K, V> extends TypeAdapter<Map<K, V>> {
        public final TypeAdapter<K> a;
        public final TypeAdapter<V> b;
        public final mq5<? extends Map<K, V>> c;

        public Adapter(MapTypeAdapterFactory mapTypeAdapterFactory, TypeAdapter<K> typeAdapter, TypeAdapter<V> typeAdapter2, mq5<? extends Map<K, V>> mq5Var) {
            this.a = typeAdapter;
            this.b = typeAdapter2;
            this.c = mq5Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) throws IOException {
            JsonToken jsonTokenPeek = jsonReader.peek();
            if (jsonTokenPeek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Map<K, V> mapC = this.c.c();
            if (jsonTokenPeek != JsonToken.BEGIN_ARRAY) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    ud4.INSTANCE.promoteNameToValue(jsonReader);
                    Object objB = ((TypeAdapterRuntimeTypeWrapper) this.a).b.b(jsonReader);
                    Object objB2 = ((TypeAdapterRuntimeTypeWrapper) this.b).b.b(jsonReader);
                    if (mapC.containsKey(objB)) {
                        throw new JsonSyntaxException("duplicate key: " + objB);
                    }
                    mapC.put(objB, objB2);
                }
                jsonReader.endObject();
                return mapC;
            }
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                jsonReader.beginArray();
                Object objB3 = ((TypeAdapterRuntimeTypeWrapper) this.a).b.b(jsonReader);
                Object objB4 = ((TypeAdapterRuntimeTypeWrapper) this.b).b.b(jsonReader);
                if (mapC.containsKey(objB3)) {
                    throw new JsonSyntaxException("duplicate key: " + objB3);
                }
                mapC.put(objB3, objB4);
                jsonReader.endArray();
            }
            jsonReader.endArray();
            return mapC;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            for (Map.Entry<K, V> entry : map.entrySet()) {
                jsonWriter.name(String.valueOf(entry.getKey()));
                this.b.c(jsonWriter, entry.getValue());
            }
            jsonWriter.endObject();
        }
    }

    public MapTypeAdapterFactory(px1 px1Var) {
        this.b = px1Var;
    }

    @Override // defpackage.t39
    public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
        Type[] actualTypeArguments;
        Type type = x39Var.b;
        Class<? super T> cls = x39Var.a;
        if (!Map.class.isAssignableFrom(cls)) {
            return null;
        }
        if (Properties.class.isAssignableFrom(cls)) {
            actualTypeArguments = new Type[]{String.class, String.class};
        } else {
            Type typeF = ot3.f(type, cls, Map.class);
            actualTypeArguments = typeF instanceof ParameterizedType ? ((ParameterizedType) typeF).getActualTypeArguments() : new Type[]{Object.class, Object.class};
        }
        Type type2 = actualTypeArguments[0];
        Type type3 = actualTypeArguments[1];
        return new Adapter(this, new TypeAdapterRuntimeTypeWrapper(gson, (type2 == Boolean.TYPE || type2 == Boolean.class) ? TypeAdapters.c : gson.g(new x39<>(type2)), type2), new TypeAdapterRuntimeTypeWrapper(gson, gson.g(new x39<>(type3)), type3), this.b.b(x39Var, false));
    }
}
