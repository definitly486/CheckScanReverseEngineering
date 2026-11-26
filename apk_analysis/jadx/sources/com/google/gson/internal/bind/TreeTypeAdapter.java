package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import defpackage.bg;
import defpackage.hd4;
import defpackage.mc4;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.t39;
import defpackage.vd4;
import defpackage.wd4;
import defpackage.x39;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class TreeTypeAdapter<T> extends SerializationDelegatingTypeAdapter<T> {
    public final wd4<T> a;
    public final nc4<T> b;
    public final Gson c;
    public final x39<T> d;
    public final t39 e;
    public final TreeTypeAdapter<T>.a f;
    public final boolean g;
    public volatile TypeAdapter<T> h;

    public static final class SingleTypeFactory implements t39 {
        public final x39<?> b;
        public final boolean c;
        public final wd4<?> d;
        public final nc4<?> e;

        public SingleTypeFactory(Object obj, x39 x39Var, boolean z) {
            wd4<?> wd4Var = obj instanceof wd4 ? (wd4) obj : null;
            this.d = wd4Var;
            nc4<?> nc4Var = obj instanceof nc4 ? (nc4) obj : null;
            this.e = nc4Var;
            if (wd4Var == null && nc4Var == null) {
                bg.h(obj.getClass().getName(), "Type adapter ", " must implement JsonSerializer or JsonDeserializer");
                throw null;
            }
            this.b = x39Var;
            this.c = z;
        }

        @Override // defpackage.t39
        public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
            x39<?> x39Var2 = this.b;
            if (!x39Var2.equals(x39Var) && (!this.c || x39Var2.b != x39Var.a)) {
                return null;
            }
            return new TreeTypeAdapter(this.d, this.e, gson, x39Var, this, true);
        }
    }

    public final class a implements vd4, mc4 {
        public a() {
        }

        public final Object a(pc4 pc4Var, Class cls) {
            Gson gson = TreeTypeAdapter.this.c;
            gson.getClass();
            return gson.a(pc4Var, new x39<>(cls));
        }

        public final pc4 b(Object obj) {
            return TreeTypeAdapter.this.c.n(obj);
        }
    }

    public TreeTypeAdapter() {
        throw null;
    }

    public TreeTypeAdapter(wd4<T> wd4Var, nc4<T> nc4Var, Gson gson, x39<T> x39Var, t39 t39Var, boolean z) {
        this.f = new a();
        this.a = wd4Var;
        this.b = nc4Var;
        this.c = gson;
        this.d = x39Var;
        this.e = t39Var;
        this.g = z;
    }

    public static t39 e(x39<?> x39Var, Object obj) {
        return new SingleTypeFactory(obj, x39Var, x39Var.b == x39Var.a);
    }

    @Override // com.google.gson.TypeAdapter
    public final T b(JsonReader jsonReader) {
        boolean z;
        pc4 pc4VarD;
        nc4<T> nc4Var = this.b;
        if (nc4Var == null) {
            TypeAdapter<T> typeAdapterH = this.h;
            if (typeAdapterH == null) {
                typeAdapterH = this.c.h(this.e, this.d);
                this.h = typeAdapterH;
            }
            return typeAdapterH.b(jsonReader);
        }
        try {
            try {
                jsonReader.peek();
                z = false;
                try {
                    JsonElementTypeAdapter.a.getClass();
                    pc4VarD = JsonElementTypeAdapter.d(jsonReader);
                } catch (EOFException e) {
                    e = e;
                    if (!z) {
                        throw new JsonSyntaxException(e);
                    }
                    pc4VarD = hd4.b;
                }
            } catch (EOFException e2) {
                e = e2;
                z = true;
            }
            if (this.g) {
                pc4VarD.getClass();
                if (pc4VarD instanceof hd4) {
                    return null;
                }
            }
            return nc4Var.deserialize(pc4VarD, this.d.b, this.f);
        } catch (MalformedJsonException e3) {
            throw new JsonSyntaxException(e3);
        } catch (IOException e4) {
            throw new JsonIOException(e4);
        } catch (NumberFormatException e5) {
            throw new JsonSyntaxException(e5);
        }
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, T t) throws IOException {
        wd4<T> wd4Var = this.a;
        if (wd4Var == null) {
            TypeAdapter<T> typeAdapterH = this.h;
            if (typeAdapterH == null) {
                typeAdapterH = this.c.h(this.e, this.d);
                this.h = typeAdapterH;
            }
            typeAdapterH.c(jsonWriter, t);
            return;
        }
        if (this.g && t == null) {
            jsonWriter.nullValue();
            return;
        }
        pc4 pc4VarSerialize = wd4Var.serialize(t, this.d.b, this.f);
        JsonElementTypeAdapter.a.getClass();
        JsonElementTypeAdapter.g(pc4VarSerialize, jsonWriter);
    }

    @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
    public final TypeAdapter<T> d() {
        if (this.a != null) {
            return this;
        }
        TypeAdapter<T> typeAdapter = this.h;
        if (typeAdapter != null) {
            return typeAdapter;
        }
        TypeAdapter<T> typeAdapterH = this.c.h(this.e, this.d);
        this.h = typeAdapterH;
        return typeAdapterH;
    }
}
