package yads;

import com.google.firebase.dynamiclinks.DynamicLink;
import com.google.firebase.perf.util.Constants;
import defpackage.j59;
import defpackage.jd4;
import defpackage.k57;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class b7 {
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v2 yads.n7, still in use, count: 2, list:
          (r3v2 yads.n7) from 0x00a9: MOVE (r17v0 yads.n7) = (r3v2 yads.n7)
          (r3v2 yads.n7) from 0x006f: PHI (r3v5 yads.n7) = (r3v2 yads.n7), (r3v7 yads.n7) binds: [B:20:0x0066, B:25:0x007d] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:59)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:463)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:97)
        */
    public static yads.n7 a(org.json.JSONObject r19) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.b7.a(org.json.JSONObject):yads.n7");
    }

    public static final j59 a(n7 n7Var, defpackage.ld4 ld4Var) {
        for (Map.Entry entry : n7Var.h.entrySet()) {
            String str = (String) entry.getKey();
            ld4Var.getClass();
            str.getClass();
            defpackage.ld4 ld4Var2 = new defpackage.ld4();
            a(entry, ld4Var2);
            ld4Var.a(str, new jd4(ld4Var2.a));
        }
        return j59.a;
    }

    public static final j59 a(Map.Entry entry, defpackage.ld4 ld4Var) {
        defpackage.qc4.f(ld4Var, "usagePercent", Integer.valueOf(((q7) entry.getValue()).a));
        defpackage.qc4.e(ld4Var, "isDisabled", Boolean.valueOf(((q7) entry.getValue()).b));
        return j59.a;
    }

    public static n7 a(String str) {
        Object aVar;
        try {
            aVar = a(new JSONObject(str));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (n7) aVar;
    }

    public static final j59 a(n7 n7Var, defpackage.bc4 bc4Var) {
        Object cd4Var;
        for (String str : n7Var.g) {
            bc4Var.getClass();
            defpackage.i54 i54Var = defpackage.rc4.a;
            if (str == null) {
                cd4Var = defpackage.gd4.INSTANCE;
            } else {
                cd4Var = new defpackage.cd4(str, true);
            }
            cd4Var.getClass();
            bc4Var.a.add(cd4Var);
        }
        return j59.a;
    }

    public static String a(n7 n7Var) {
        defpackage.oc4 cd4Var;
        if (n7Var == null) {
            return null;
        }
        defpackage.ld4 ld4Var = new defpackage.ld4();
        defpackage.qc4.e(ld4Var, Constants.ENABLE_DISABLE, Boolean.valueOf(n7Var.a));
        defpackage.qc4.e(ld4Var, "isInDebug", Boolean.valueOf(n7Var.b));
        String str = n7Var.c;
        defpackage.i54 i54Var = defpackage.rc4.a;
        if (str == null) {
            cd4Var = defpackage.gd4.INSTANCE;
        } else {
            cd4Var = new defpackage.cd4(str, true);
        }
        ld4Var.a(DynamicLink.Builder.KEY_API_KEY, cd4Var);
        defpackage.qc4.f(ld4Var, "validationTimeoutInSec", Long.valueOf(n7Var.d));
        defpackage.qc4.f(ld4Var, "usagePercent", Integer.valueOf(n7Var.e));
        defpackage.qc4.e(ld4Var, "willBlockAdOnInternalError", Boolean.valueOf(n7Var.f));
        defpackage.bc4 bc4Var = new defpackage.bc4();
        a(n7Var, bc4Var);
        ld4Var.a("enabledAdUnits", new defpackage.zb4(bc4Var.a));
        defpackage.ld4 ld4Var2 = new defpackage.ld4();
        a(n7Var, ld4Var2);
        ld4Var.a("adNetworksCustomParameters", new jd4(ld4Var2.a));
        return new jd4(ld4Var.a).toString();
    }
}
