package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import defpackage.h2;
import defpackage.nc4;
import defpackage.ot3;
import defpackage.px1;
import defpackage.t39;
import defpackage.wd4;
import defpackage.x39;
import defpackage.yb4;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements t39 {
    public static final t39 d;
    public static final t39 e;
    public final px1 b;
    public final ConcurrentHashMap c = new ConcurrentHashMap();

    static {
        int i = 0;
        d = new DummyTypeAdapterFactory(i);
        e = new DummyTypeAdapterFactory(i);
    }

    public JsonAdapterAnnotationTypeAdapterFactory(px1 px1Var) {
        this.b = px1Var;
    }

    public final TypeAdapter<?> a(px1 px1Var, Gson gson, x39<?> x39Var, yb4 yb4Var, boolean z) {
        TypeAdapter<?> typeAdapterB;
        Object objC = px1Var.b(new x39(yb4Var.value()), true).c();
        boolean zNullSafe = yb4Var.nullSafe();
        if (objC instanceof TypeAdapter) {
            typeAdapterB = (TypeAdapter) objC;
        } else if (objC instanceof t39) {
            t39 t39Var = (t39) objC;
            if (z) {
                t39 t39Var2 = (t39) this.c.putIfAbsent(x39Var.a, t39Var);
                if (t39Var2 != null) {
                    t39Var = t39Var2;
                }
            }
            typeAdapterB = t39Var.b(gson, x39Var);
        } else {
            boolean z2 = objC instanceof wd4;
            if (!z2 && !(objC instanceof nc4)) {
                h2.d("Invalid attempt to bind an instance of ", objC.getClass().getName(), " as a @JsonAdapter for ", ot3.h(x39Var.b), ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
                return null;
            }
            TreeTypeAdapter treeTypeAdapter = new TreeTypeAdapter(z2 ? (wd4) objC : null, objC instanceof nc4 ? (nc4) objC : null, gson, x39Var, z ? d : e, zNullSafe);
            zNullSafe = false;
            typeAdapterB = treeTypeAdapter;
        }
        return (typeAdapterB == null || !zNullSafe) ? typeAdapterB : typeAdapterB.a();
    }

    @Override // defpackage.t39
    public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
        yb4 yb4Var = (yb4) x39Var.a.getAnnotation(yb4.class);
        if (yb4Var == null) {
            return null;
        }
        return (TypeAdapter<T>) a(this.b, gson, x39Var, yb4Var, true);
    }

    public static class DummyTypeAdapterFactory implements t39 {
        private DummyTypeAdapterFactory() {
        }

        @Override // defpackage.t39
        public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
            throw new AssertionError("Factory should not be used");
        }

        public /* synthetic */ DummyTypeAdapterFactory(int i) {
            this();
        }
    }
}
