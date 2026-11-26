package yads;

import defpackage.kv2;

/* JADX INFO: loaded from: classes6.dex */
public abstract class na3 {
    public static t06 a(int i, String str) {
        if (400 <= i && i < 500) {
            u06 u06Var = u06.CLIENT;
            if (str == null) {
                str = kv2.b(i, "Client error (HTTP ", ")");
            }
            return new t06(u06Var, "client_error", str, Integer.valueOf(i));
        }
        if (500 > i || i >= 600) {
            u06 u06Var2 = u06.UNKNOWN;
            if (str == null) {
                str = defpackage.jh.b(i, "Unknown HTTP code: ");
            }
            return new t06(u06Var2, "unknown_http_code", str, Integer.valueOf(i));
        }
        u06 u06Var3 = u06.SERVER;
        if (str == null) {
            str = kv2.b(i, "Server error (HTTP ", ")");
        }
        return new t06(u06Var3, "server_error", str, Integer.valueOf(i));
    }
}
