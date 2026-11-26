package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeAdapter<T> {

    public final class NullSafeTypeAdapter extends TypeAdapter<T> {
        public NullSafeTypeAdapter() {
        }

        @Override // com.google.gson.TypeAdapter
        public final T b(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return (T) TypeAdapter.this.b(jsonReader);
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter.this.c(jsonWriter, t);
            }
        }

        public final String toString() {
            return "NullSafeTypeAdapter[" + TypeAdapter.this + "]";
        }
    }

    public final TypeAdapter<T> a() {
        return !(this instanceof NullSafeTypeAdapter) ? new NullSafeTypeAdapter() : this;
    }

    public abstract T b(JsonReader jsonReader);

    public abstract void c(JsonWriter jsonWriter, T t);
}
