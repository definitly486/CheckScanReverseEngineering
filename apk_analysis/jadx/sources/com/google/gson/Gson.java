package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.JsonElementTypeAdapter;
import com.google.gson.internal.bind.SerializationDelegatingTypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import defpackage.ah;
import defpackage.ce4;
import defpackage.ge4;
import defpackage.gg6;
import defpackage.hd4;
import defpackage.kd4;
import defpackage.pc4;
import defpackage.px1;
import defpackage.q98;
import defpackage.r01;
import defpackage.t39;
import defpackage.u98;
import defpackage.wi3;
import defpackage.ws3;
import defpackage.x39;
import defpackage.y07;
import defpackage.yb4;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class Gson {
    public final ThreadLocal<Map<x39<?>, TypeAdapter<?>>> a;
    public final ConcurrentHashMap b;
    public final px1 c;
    public final JsonAdapterAnnotationTypeAdapterFactory d;
    public final List<t39> e;
    public final boolean f;
    public final wi3 g;
    public final u98 h;
    public final List<t39> i;
    public final List<t39> j;
    public final List<y07> k;

    public static class FutureTypeAdapter<T> extends SerializationDelegatingTypeAdapter<T> {
        public TypeAdapter<T> a = null;

        @Override // com.google.gson.TypeAdapter
        public final T b(JsonReader jsonReader) {
            TypeAdapter<T> typeAdapter = this.a;
            if (typeAdapter != null) {
                return typeAdapter.b(jsonReader);
            }
            ah.f("Adapter for type with cyclic dependency has been used before dependency has been resolved");
            return null;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, T t) {
            TypeAdapter<T> typeAdapter = this.a;
            if (typeAdapter != null) {
                typeAdapter.c(jsonWriter, t);
            } else {
                ah.f("Adapter for type with cyclic dependency has been used before dependency has been resolved");
            }
        }

        @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
        public final TypeAdapter<T> d() {
            TypeAdapter<T> typeAdapter = this.a;
            if (typeAdapter != null) {
                return typeAdapter;
            }
            ah.f("Adapter for type with cyclic dependency has been used before dependency has been resolved");
            return null;
        }
    }

    public Gson(ws3 ws3Var) {
        this.a = new ThreadLocal<>();
        this.b = new ConcurrentHashMap();
        Excluder excluder = ws3Var.a;
        HashMap map = new HashMap(ws3Var.d);
        this.f = true;
        this.g = ws3Var.g;
        this.h = ws3Var.h;
        this.i = ws3.b(ws3Var.e);
        this.j = ws3.b(ws3Var.f);
        List<y07> listB = ws3.b(ws3Var.k);
        this.k = listB;
        if (ws3Var == ws3.r) {
            this.c = ws3.p;
            this.d = ws3.q;
            this.e = ws3.s;
        } else {
            px1 px1Var = new px1(listB, map);
            this.c = px1Var;
            JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(px1Var);
            this.d = jsonAdapterAnnotationTypeAdapterFactory;
            this.e = ws3Var.a(px1Var, jsonAdapterAnnotationTypeAdapterFactory);
        }
    }

    public final <T> T a(pc4 pc4Var, x39<T> x39Var) {
        if (pc4Var == null) {
            return null;
        }
        ce4 ce4Var = new ce4(ce4.f);
        ce4Var.b = new Object[32];
        ce4Var.c = 0;
        ce4Var.d = new String[32];
        ce4Var.e = new int[32];
        ce4Var.v(pc4Var);
        return (T) c(ce4Var, x39Var);
    }

    public final Object b(kd4 kd4Var, Class cls) {
        return a(kd4Var, new x39(cls));
    }

    public final <T> T c(JsonReader jsonReader, x39<T> x39Var) {
        boolean z;
        u98 strictness = jsonReader.getStrictness();
        u98 u98Var = this.h;
        if (u98Var != null) {
            jsonReader.setStrictness(u98Var);
        } else if (jsonReader.getStrictness() == u98.LEGACY_STRICT) {
            jsonReader.setStrictness(u98.LENIENT);
        }
        try {
            try {
                try {
                    try {
                        jsonReader.peek();
                        z = false;
                        try {
                            TypeAdapter<T> typeAdapterG = g(x39Var);
                            Class<? super T> cls = x39Var.a;
                            T tB = typeAdapterG.b(jsonReader);
                            Class clsA = gg6.a(cls);
                            if (tB != null && !clsA.isInstance(tB)) {
                                throw new ClassCastException("Type adapter '" + typeAdapterG + "' returned wrong type; requested " + cls + " but got instance of " + tB.getClass() + "\nVerify that the adapter was registered for the correct type.");
                            }
                            jsonReader.setStrictness(strictness);
                            return tB;
                        } catch (EOFException e) {
                            e = e;
                            if (!z) {
                                throw new JsonSyntaxException(e);
                            }
                            jsonReader.setStrictness(strictness);
                            return null;
                        }
                    } catch (EOFException e2) {
                        e = e2;
                        z = true;
                    }
                } catch (Throwable th) {
                    jsonReader.setStrictness(strictness);
                    throw th;
                }
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON 2.14.0): " + e3.getMessage(), e3);
            }
        } catch (IOException e4) {
            throw new JsonSyntaxException(e4);
        } catch (IllegalStateException e5) {
            throw new JsonSyntaxException(e5);
        }
    }

    public final <T> T d(Reader reader, x39<T> x39Var) {
        JsonReader jsonReader = new JsonReader(reader);
        u98 u98Var = this.h;
        if (u98Var == null) {
            u98Var = u98.LEGACY_STRICT;
        }
        jsonReader.setStrictness(u98Var);
        T t = (T) c(jsonReader, x39Var);
        if (t != null) {
            try {
                if (jsonReader.peek() != JsonToken.END_DOCUMENT) {
                    throw new JsonSyntaxException("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        }
        return t;
    }

    public final <T> T e(Reader reader, Type type) {
        return (T) d(reader, new x39<>(type));
    }

    public final <T> T f(String str, x39<T> x39Var) {
        if (str == null) {
            return null;
        }
        return (T) d(new StringReader(str), x39Var);
    }

    public final <T> TypeAdapter<T> g(x39<T> x39Var) {
        boolean z;
        Objects.requireNonNull(x39Var, "type must not be null");
        ConcurrentHashMap concurrentHashMap = this.b;
        TypeAdapter<T> typeAdapter = (TypeAdapter) concurrentHashMap.get(x39Var);
        if (typeAdapter != null) {
            return typeAdapter;
        }
        ThreadLocal<Map<x39<?>, TypeAdapter<?>>> threadLocal = this.a;
        Map map = threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set((Map<x39<?>, TypeAdapter<?>>) map);
            z = true;
        } else {
            TypeAdapter<T> typeAdapter2 = (TypeAdapter) map.get(x39Var);
            if (typeAdapter2 != null) {
                return typeAdapter2;
            }
            z = false;
        }
        try {
            FutureTypeAdapter futureTypeAdapter = new FutureTypeAdapter();
            map.put(x39Var, futureTypeAdapter);
            Iterator<t39> it = this.e.iterator();
            TypeAdapter<T> typeAdapterB = null;
            while (it.hasNext()) {
                typeAdapterB = it.next().b(this, x39Var);
                if (typeAdapterB != null) {
                    if (futureTypeAdapter.a != null) {
                        throw new AssertionError("Delegate is already set");
                    }
                    futureTypeAdapter.a = typeAdapterB;
                    map.put(x39Var, typeAdapterB);
                    break;
                }
            }
            if (z) {
                threadLocal.remove();
            }
            if (typeAdapterB == null) {
                r01.e(x39Var, "GSON (2.14.0) cannot handle ");
                return null;
            }
            if (z) {
                concurrentHashMap.putAll(map);
            }
            return typeAdapterB;
        } catch (Throwable th) {
            if (z) {
                threadLocal.remove();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0058  */
    public final <T> TypeAdapter<T> h(t39 t39Var, x39<T> x39Var) {
        Objects.requireNonNull(t39Var, "skipPast must not be null");
        Objects.requireNonNull(x39Var, "type must not be null");
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = this.d;
        jsonAdapterAnnotationTypeAdapterFactory.getClass();
        ConcurrentHashMap concurrentHashMap = jsonAdapterAnnotationTypeAdapterFactory.c;
        if (t39Var == JsonAdapterAnnotationTypeAdapterFactory.d) {
            t39Var = jsonAdapterAnnotationTypeAdapterFactory;
        } else {
            Class<? super T> cls = x39Var.a;
            t39 t39Var2 = (t39) concurrentHashMap.get(cls);
            if (t39Var2 == null) {
                yb4 yb4Var = (yb4) cls.getAnnotation(yb4.class);
                if (yb4Var != null) {
                    Class<?> clsValue = yb4Var.value();
                    if (t39.class.isAssignableFrom(clsValue)) {
                        t39 t39Var3 = (t39) jsonAdapterAnnotationTypeAdapterFactory.b.b(new x39<>(clsValue), true).c();
                        t39 t39Var4 = (t39) concurrentHashMap.putIfAbsent(cls, t39Var3);
                        if (t39Var4 != null) {
                            t39Var3 = t39Var4;
                        }
                        if (t39Var3 == t39Var) {
                            t39Var = jsonAdapterAnnotationTypeAdapterFactory;
                        }
                    }
                }
            } else if (t39Var2 == t39Var) {
                t39Var = jsonAdapterAnnotationTypeAdapterFactory;
            }
        }
        boolean z = false;
        for (t39 t39Var5 : this.e) {
            if (z) {
                TypeAdapter<T> typeAdapterB = t39Var5.b(this, x39Var);
                if (typeAdapterB != null) {
                    return typeAdapterB;
                }
            } else if (t39Var5 == t39Var) {
                z = true;
            }
        }
        if (!z) {
            return g(x39Var);
        }
        r01.e(x39Var, "GSON cannot serialize or deserialize ");
        return null;
    }

    public final JsonWriter i(Writer writer) {
        JsonWriter jsonWriter = new JsonWriter(writer);
        jsonWriter.setFormattingStyle(this.g);
        jsonWriter.setHtmlSafe(this.f);
        u98 u98Var = this.h;
        if (u98Var == null) {
            u98Var = u98.LEGACY_STRICT;
        }
        jsonWriter.setStrictness(u98Var);
        jsonWriter.setSerializeNulls(false);
        return jsonWriter;
    }

    public final String j(Object obj) {
        if (obj != null) {
            Type type = obj.getClass();
            StringBuilder sb = new StringBuilder();
            m(obj, type, sb);
            return sb.toString();
        }
        pc4 pc4Var = hd4.b;
        StringBuilder sb2 = new StringBuilder();
        try {
            k(pc4Var, i(new q98(sb2)));
            return sb2.toString();
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public final void k(pc4 pc4Var, JsonWriter jsonWriter) {
        u98 strictness = jsonWriter.getStrictness();
        boolean zIsHtmlSafe = jsonWriter.isHtmlSafe();
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setHtmlSafe(this.f);
        jsonWriter.setSerializeNulls(false);
        u98 u98Var = this.h;
        if (u98Var != null) {
            jsonWriter.setStrictness(u98Var);
        } else if (jsonWriter.getStrictness() == u98.LEGACY_STRICT) {
            jsonWriter.setStrictness(u98.LENIENT);
        }
        try {
            try {
                JsonElementTypeAdapter.a.getClass();
                JsonElementTypeAdapter.g(pc4Var, jsonWriter);
                jsonWriter.setStrictness(strictness);
                jsonWriter.setHtmlSafe(zIsHtmlSafe);
                jsonWriter.setSerializeNulls(serializeNulls);
            } catch (IOException e) {
                throw new JsonIOException(e);
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.14.0): " + e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            jsonWriter.setStrictness(strictness);
            jsonWriter.setHtmlSafe(zIsHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
            throw th;
        }
    }

    public final void l(Object obj, Type type, JsonWriter jsonWriter) {
        TypeAdapter typeAdapterG = g(new x39(type));
        u98 strictness = jsonWriter.getStrictness();
        u98 u98Var = this.h;
        if (u98Var != null) {
            jsonWriter.setStrictness(u98Var);
        } else if (jsonWriter.getStrictness() == u98.LEGACY_STRICT) {
            jsonWriter.setStrictness(u98.LENIENT);
        }
        boolean zIsHtmlSafe = jsonWriter.isHtmlSafe();
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setHtmlSafe(this.f);
        jsonWriter.setSerializeNulls(false);
        try {
            try {
                try {
                    typeAdapterG.c(jsonWriter, obj);
                    jsonWriter.setStrictness(strictness);
                    jsonWriter.setHtmlSafe(zIsHtmlSafe);
                    jsonWriter.setSerializeNulls(serializeNulls);
                } catch (IOException e) {
                    throw new JsonIOException(e);
                }
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.14.0): " + e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            jsonWriter.setStrictness(strictness);
            jsonWriter.setHtmlSafe(zIsHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
            throw th;
        }
    }

    public final void m(Object obj, Type type, Appendable appendable) {
        try {
            l(obj, type, i(appendable instanceof Writer ? (Writer) appendable : new q98(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public final pc4 n(Object obj) {
        if (obj == null) {
            return hd4.b;
        }
        Type type = obj.getClass();
        ge4 ge4Var = new ge4();
        l(obj, type, ge4Var);
        return ge4Var.m();
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.e + ",instanceCreators:" + this.c + "}";
    }

    public Gson() {
        this(ws3.r);
    }
}
