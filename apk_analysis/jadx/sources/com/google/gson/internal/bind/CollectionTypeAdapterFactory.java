package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import defpackage.mq5;
import defpackage.ot3;
import defpackage.px1;
import defpackage.t39;
import defpackage.x39;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class CollectionTypeAdapterFactory implements t39 {
    public final px1 b;

    public static final class Adapter<E> extends TypeAdapter<Collection<E>> {
        public final TypeAdapter<E> a;
        public final mq5<? extends Collection<E>> b;

        public Adapter(TypeAdapter<E> typeAdapter, mq5<? extends Collection<E>> mq5Var) {
            this.a = typeAdapter;
            this.b = mq5Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Collection<E> collectionC = this.b.c();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                collectionC.add(((TypeAdapterRuntimeTypeWrapper) this.a).b.b(jsonReader));
            }
            jsonReader.endArray();
            return collectionC;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) throws IOException {
            Collection collection = (Collection) obj;
            if (collection == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.a.c(jsonWriter, it.next());
            }
            jsonWriter.endArray();
        }
    }

    public CollectionTypeAdapterFactory(px1 px1Var) {
        this.b = px1Var;
    }

    @Override // defpackage.t39
    public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
        Type type = x39Var.b;
        Class<? super T> cls = x39Var.a;
        if (!Collection.class.isAssignableFrom(cls)) {
            return null;
        }
        Type typeF = ot3.f(type, cls, Collection.class);
        Type type2 = typeF instanceof ParameterizedType ? ((ParameterizedType) typeF).getActualTypeArguments()[0] : Object.class;
        return new Adapter(new TypeAdapterRuntimeTypeWrapper(gson, gson.g(new x39<>(type2)), type2), this.b.b(x39Var, false));
    }
}
