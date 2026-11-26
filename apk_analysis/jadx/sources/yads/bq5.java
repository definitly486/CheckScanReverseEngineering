package yads;

import defpackage.ta8;
import java.util.Locale;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bq5 {
    /* JADX WARN: Code duplicated, block: B:36:0x006c  */
    public static t06 a(SSLException sSLException) {
        String lowerCase;
        String str;
        String str2;
        String message = sSLException.getMessage();
        if (message != null) {
            lowerCase = message.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = "";
        }
        if ((sSLException instanceof SSLHandshakeException) || ta8.D(lowerCase, "handshake", false)) {
            str = "ssl_handshake";
        } else if (ta8.D(lowerCase, "certificate", false)) {
            str = "ssl_certificate";
        } else {
            str = ta8.D(lowerCase, "protocol", false) ? "ssl_protocol" : "ssl_error";
        }
        int iHashCode = str.hashCode();
        if (iHashCode != -1027298332) {
            if (iHashCode != 362550660) {
                if (iHashCode == 821366635 && str.equals("ssl_protocol")) {
                    str2 = "SSL protocol error";
                } else {
                    str2 = "SSL error";
                }
            } else if (str.equals("ssl_handshake")) {
                str2 = "SSL handshake error";
            } else {
                str2 = "SSL error";
            }
        } else if (str.equals("ssl_certificate")) {
            str2 = "SSL certificate error";
        } else {
            str2 = "SSL error";
        }
        u06 u06Var = u06.SSL;
        if (message == null) {
            message = str2;
        }
        return new t06(u06Var, str, message, null);
    }
}
