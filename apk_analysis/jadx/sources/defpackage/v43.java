package defpackage;

import com.google.protobuf.k;
import com.google.protobuf.l;

/* JADX INFO: loaded from: classes4.dex */
public final class v43 {
    public static final l a = new l();
    public static final k<?> b;

    static {
        k<?> kVar = null;
        try {
            kVar = (k) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        b = kVar;
    }
}
