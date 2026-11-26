package androidx.navigation.serialization;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes3.dex */
enum InternalType {
    INT,
    INT_NULLABLE,
    BOOL,
    BOOL_NULLABLE,
    DOUBLE,
    DOUBLE_NULLABLE,
    FLOAT,
    FLOAT_NULLABLE,
    LONG,
    LONG_NULLABLE,
    STRING,
    STRING_NULLABLE,
    INT_ARRAY,
    BOOL_ARRAY,
    DOUBLE_ARRAY,
    FLOAT_ARRAY,
    LONG_ARRAY,
    ARRAY,
    LIST,
    ENUM,
    ENUM_NULLABLE,
    UNKNOWN;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<InternalType> getEntries() {
        return $ENTRIES;
    }
}
