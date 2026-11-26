package com.google.gson.internal;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import defpackage.b17;
import defpackage.q13;
import defpackage.t39;
import defpackage.x39;
import defpackage.xg;
import java.io.IOException;
import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class Excluder implements t39, Cloneable {
    public static final Excluder d = new Excluder();
    public final List<q13> b;
    public final List<q13> c;

    public Excluder() {
        List<q13> list = Collections.EMPTY_LIST;
        this.b = list;
        this.c = list;
    }

    @Override // defpackage.t39
    public final <T> TypeAdapter<T> b(final Gson gson, final x39<T> x39Var) {
        Class<? super T> cls = x39Var.a;
        final boolean zC = c(cls, true);
        final boolean zC2 = c(cls, false);
        if (zC || zC2) {
            return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1
                public volatile TypeAdapter<T> a;

                @Override // com.google.gson.TypeAdapter
                public final T b(JsonReader jsonReader) throws IOException {
                    if (zC2) {
                        jsonReader.skipValue();
                        return null;
                    }
                    TypeAdapter<T> typeAdapterH = this.a;
                    if (typeAdapterH == null) {
                        typeAdapterH = gson.h(Excluder.this, x39Var);
                        this.a = typeAdapterH;
                    }
                    return typeAdapterH.b(jsonReader);
                }

                @Override // com.google.gson.TypeAdapter
                public final void c(JsonWriter jsonWriter, T t) throws IOException {
                    if (zC) {
                        jsonWriter.nullValue();
                        return;
                    }
                    TypeAdapter<T> typeAdapterH = this.a;
                    if (typeAdapterH == null) {
                        typeAdapterH = gson.h(Excluder.this, x39Var);
                        this.a = typeAdapterH;
                    }
                    typeAdapterH.c(jsonWriter, t);
                }
            };
        }
        return null;
    }

    public final boolean c(Class<?> cls, boolean z) {
        if (!z && !Enum.class.isAssignableFrom(cls)) {
            b17.a aVar = b17.a;
            if (!Modifier.isStatic(cls.getModifiers()) && (cls.isAnonymousClass() || cls.isLocalClass())) {
                return true;
            }
        }
        Iterator<q13> it = (z ? this.b : this.c).iterator();
        while (it.hasNext()) {
            if (it.next().a()) {
                return true;
            }
        }
        return false;
    }

    public final Object clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            xg.d(e);
            return null;
        }
    }
}
