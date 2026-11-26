package kotlinx.serialization;

import defpackage.n2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class MissingFieldException extends SerializationException {
    public final List<String> b;
    public final String c;

    public MissingFieldException() {
        throw null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MissingFieldException(String str, String str2) {
        this(n2.d("Field '", str, "' is required for type with serial name '", str2, "', but it was missing"), null, u96.h(str), str2);
        str2.getClass();
    }

    public MissingFieldException(String str, MissingFieldException missingFieldException, List list, String str2) {
        super(str, missingFieldException);
        this.b = list;
        this.c = str2;
    }
}
