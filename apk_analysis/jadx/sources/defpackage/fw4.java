package defpackage;

import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;

/* JADX INFO: loaded from: classes4.dex */
public enum fw4 {
    DEFAULT { // from class: fw4.a
        @Override // defpackage.fw4
        public final TypeAdapter<Number> a() {
            return TypeAdapters.k;
        }
    },
    STRING { // from class: fw4.b
        @Override // defpackage.fw4
        public final TypeAdapter<Number> a() {
            return TypeAdapters.l;
        }
    };

    fw4() {
        throw null;
    }

    public abstract TypeAdapter<Number> a();
}
