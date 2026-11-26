package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import defpackage.x39;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes4.dex */
final class TypeAdapterRuntimeTypeWrapper<T> extends TypeAdapter<T> {
    public final Gson a;
    public final TypeAdapter<T> b;
    public final Type c;

    public TypeAdapterRuntimeTypeWrapper(Gson gson, TypeAdapter<T> typeAdapter, Type type) {
        this.a = gson;
        this.b = typeAdapter;
        this.c = type;
    }

    @Override // com.google.gson.TypeAdapter
    public final T b(JsonReader jsonReader) {
        return this.b.b(jsonReader);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003c  */
    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, T t) {
        TypeAdapter<T> typeAdapterD;
        Type type = this.c;
        Type type2 = (t == null || !((type instanceof Class) || (type instanceof TypeVariable))) ? type : t.getClass();
        TypeAdapter<T> typeAdapter = this.b;
        if (type2 != type) {
            TypeAdapter<T> typeAdapterG = this.a.g(new x39<>(type2));
            if (typeAdapterG instanceof ReflectiveTypeAdapterFactory.Adapter) {
                TypeAdapter<T> typeAdapter2 = typeAdapter;
                while ((typeAdapter2 instanceof SerializationDelegatingTypeAdapter) && (typeAdapterD = ((SerializationDelegatingTypeAdapter) typeAdapter2).d()) != typeAdapter2) {
                    typeAdapter2 = typeAdapterD;
                }
                if (typeAdapter2 instanceof ReflectiveTypeAdapterFactory.Adapter) {
                    typeAdapter = typeAdapterG;
                }
            } else {
                typeAdapter = typeAdapterG;
            }
        }
        typeAdapter.c(jsonWriter, t);
    }
}
