package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import defpackage.ax8;
import defpackage.bx8;
import defpackage.t39;
import defpackage.x39;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class NumberTypeAdapter extends TypeAdapter<Number> {
    public static final t39 b = d(ax8.LAZILY_PARSED_NUMBER);
    public final bx8 a;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            a = iArr;
            try {
                iArr[JsonToken.NULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[JsonToken.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public NumberTypeAdapter(bx8 bx8Var) {
        this.a = bx8Var;
    }

    public static t39 d(bx8 bx8Var) {
        return new t39() { // from class: com.google.gson.internal.bind.NumberTypeAdapter.1
            @Override // defpackage.t39
            public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
                if (x39Var.a == Number.class) {
                    return NumberTypeAdapter.this;
                }
                return null;
            }
        };
    }

    @Override // com.google.gson.TypeAdapter
    public final Number b(JsonReader jsonReader) throws IOException {
        JsonToken jsonTokenPeek = jsonReader.peek();
        int i = a.a[jsonTokenPeek.ordinal()];
        if (i == 1) {
            jsonReader.nextNull();
            return null;
        }
        if (i == 2 || i == 3) {
            return this.a.a(jsonReader);
        }
        StringBuilder sb = new StringBuilder("Expecting number, got: ");
        sb.append(jsonTokenPeek);
        String path = jsonReader.getPath();
        sb.append("; at path ");
        sb.append(path);
        throw new JsonSyntaxException(sb.toString());
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, Number number) throws IOException {
        jsonWriter.value(number);
    }
}
