package yads;

import defpackage.fh8;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class rv5 {
    public final et4 a;

    public rv5(e42 e42Var, et4 et4Var, l93 l93Var, yr3 yr3Var) {
        this.a = et4Var;
        new ConcurrentHashMap();
        new ht1(et4Var, new px(new gf3(), new nv5()));
        new LinkedHashMap();
        new LinkedHashMap();
        new fh8(new defpackage.uc6(this, 2));
    }

    public static final MessageDigest a(rv5 rv5Var) {
        try {
            return MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            rv5Var.a.b(new IllegalStateException("Storage cannot work with templates!", e));
            return null;
        }
    }
}
