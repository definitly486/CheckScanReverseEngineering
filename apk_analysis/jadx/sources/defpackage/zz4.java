package defpackage;

import com.google.protobuf.y;
import com.google.protobuf.z;

/* JADX INFO: loaded from: classes4.dex */
public final class zz4 {
    public static final y a;
    public static final z b;

    static {
        y yVar = null;
        try {
            yVar = (y) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        a = yVar;
        b = new z();
    }
}
