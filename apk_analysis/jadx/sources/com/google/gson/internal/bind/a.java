package com.google.gson.internal.bind;

import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import defpackage.b17;
import defpackage.me0;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends ReflectiveTypeAdapterFactory.a {
    public final /* synthetic */ boolean d;
    public final /* synthetic */ Method e;
    public final /* synthetic */ TypeAdapter f;
    public final /* synthetic */ TypeAdapter g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ boolean i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(String str, Field field, boolean z, Method method, TypeAdapter typeAdapter, TypeAdapter typeAdapter2, boolean z2, boolean z3) {
        super(str, field);
        this.d = z;
        this.e = method;
        this.f = typeAdapter;
        this.g = typeAdapter2;
        this.h = z2;
        this.i = z3;
    }

    @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.a
    public final void a(JsonReader jsonReader, int i, Object[] objArr) {
        Object objB = this.g.b(jsonReader);
        if (objB != null || !this.h) {
            objArr[i] = objB;
            return;
        }
        throw new JsonParseException("null is not allowed as value for record component '" + this.c + "' of primitive type; at path " + jsonReader.getPath());
    }

    @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.a
    public final void b(JsonReader jsonReader, Object obj) throws IllegalAccessException {
        Object objB = this.g.b(jsonReader);
        if (objB == null && this.h) {
            return;
        }
        boolean z = this.d;
        Field field = this.b;
        if (z) {
            ReflectiveTypeAdapterFactory.a(obj, field);
        } else if (this.i) {
            throw new JsonIOException("Cannot set value of 'static final' ".concat(b17.d(field, false)));
        }
        field.set(obj, objB);
    }

    @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.a
    public final void c(JsonWriter jsonWriter, Object obj) throws IllegalAccessException {
        Object objInvoke;
        boolean z = this.d;
        Field field = this.b;
        Method method = this.e;
        if (z) {
            if (method == null) {
                ReflectiveTypeAdapterFactory.a(obj, field);
            } else {
                ReflectiveTypeAdapterFactory.a(obj, method);
            }
        }
        if (method != null) {
            try {
                objInvoke = method.invoke(obj, null);
            } catch (InvocationTargetException e) {
                throw new JsonIOException(me0.c("Accessor ", b17.d(method, false), " threw exception"), e.getCause());
            }
        } else {
            objInvoke = field.get(obj);
        }
        if (objInvoke == obj) {
            return;
        }
        jsonWriter.name(this.a);
        this.f.c(jsonWriter, objInvoke);
    }
}
