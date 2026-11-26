package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public enum vi9 {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(fx0.c),
    ENUM(null),
    MESSAGE(null);

    private final Object defaultDefault;

    vi9(Serializable serializable) {
        this.defaultDefault = serializable;
    }
}
