package defpackage;

import com.google.android.gms.internal.auth.a;

/* JADX INFO: loaded from: classes4.dex */
public final class gbb {
    public static final a a = new a();
    public static final yab b;

    static {
        yab yabVar = null;
        try {
            yabVar = (yab) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        b = yabVar;
    }
}
