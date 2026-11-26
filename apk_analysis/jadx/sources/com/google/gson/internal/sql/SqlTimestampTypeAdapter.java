package com.google.gson.internal.sql;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import defpackage.t39;
import defpackage.x39;
import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
class SqlTimestampTypeAdapter extends TypeAdapter<Timestamp> {
    public static final t39 b = new t39() { // from class: com.google.gson.internal.sql.SqlTimestampTypeAdapter.1
        @Override // defpackage.t39
        public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
            if (x39Var.a != Timestamp.class) {
                return null;
            }
            gson.getClass();
            return new SqlTimestampTypeAdapter(gson.g(new x39<>(Date.class)));
        }
    };
    public final TypeAdapter<Date> a;

    public SqlTimestampTypeAdapter() {
        throw null;
    }

    public SqlTimestampTypeAdapter(TypeAdapter typeAdapter) {
        this.a = typeAdapter;
    }

    @Override // com.google.gson.TypeAdapter
    public final Timestamp b(JsonReader jsonReader) {
        Date dateB = this.a.b(jsonReader);
        if (dateB != null) {
            return new Timestamp(dateB.getTime());
        }
        return null;
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, Timestamp timestamp) {
        this.a.c(jsonWriter, timestamp);
    }
}
