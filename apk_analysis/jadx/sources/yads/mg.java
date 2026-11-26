package yads;

import android.content.Context;
import io.appmetrica.analytics.AppMetrica;

/* JADX INFO: loaded from: classes6.dex */
public final class mg {
    public static final String c = "Incorrect AppMetrica Integration. The minimum supported version of AppMetrica SDK is 8.3.0 (inclusive) and the maximum supported version is 9.0.0 (exclusive). Please, check your AppMetrica integration.";
    public static final String d = "Incorrect AppMetrica Version. The minimum supported version of AppMetrica SDK is 8.3.0 (inclusive) and the maximum supported version is 9.0.0 (exclusive). And the current version of AppMetrica SDK is ";
    public final k96 a;
    public final vg b;

    public mg(Context context) {
        k96 k96Var = new k96();
        vg vgVarA = dg.a(context);
        this.a = k96Var;
        this.b = vgVarA;
    }

    public final void a() {
        String libraryVersion;
        vg vgVar = this.b;
        vgVar.getClass();
        try {
            vgVar.b.getClass();
            libraryVersion = AppMetrica.getLibraryVersion();
        } catch (Throwable unused) {
            libraryVersion = null;
        }
        if (libraryVersion == null) {
            throw new vm3(c);
        }
        this.a.getClass();
        j96 j96VarA = k96.a("8.3.0");
        if (j96VarA == null) {
            return;
        }
        this.a.getClass();
        j96 j96VarA2 = k96.a("9.0.0");
        if (j96VarA2 == null) {
            return;
        }
        this.a.getClass();
        j96 j96VarA3 = k96.a(libraryVersion);
        if (j96VarA3 == null || j96VarA3.compareTo(j96VarA) < 0 || j96VarA3.compareTo(j96VarA2) >= 0) {
            throw new vm3(a(libraryVersion));
        }
    }

    public static String a(String str) {
        return defpackage.ni0.c(d, str);
    }
}
