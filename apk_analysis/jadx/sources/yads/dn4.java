package yads;

import defpackage.ta8;
import java.io.IOException;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public abstract class dn4 {
    public static t06 a(do4 do4Var) {
        String message;
        String lowerCase;
        String str;
        String str2;
        Throwable cause = do4Var.getCause();
        if (cause == null || (message = cause.getMessage()) == null) {
            message = do4Var.getMessage();
        }
        if (cause instanceof UnknownHostException) {
            u06 u06Var = u06.NETWORK;
            if (message == null) {
                message = "Failed to resolve server address";
            }
            return new t06(u06Var, "unknown_host", message, null);
        }
        if (!(cause instanceof ConnectException)) {
            u06 u06Var2 = u06.NETWORK;
            if (message == null) {
                message = "No connection to server";
            }
            return new t06(u06Var2, "no_connection", message, null);
        }
        String message2 = cause.getMessage();
        if (message2 != null) {
            lowerCase = message2.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = "";
        }
        if (ta8.D(lowerCase, "connection refused", false)) {
            str = "connection_refused";
        } else {
            str = ta8.D(lowerCase, "network unreachable", false) ? "network_unreachable" : "connect_failed";
        }
        if (str.equals("connection_refused")) {
            str2 = "Connection refused";
        } else {
            str2 = str.equals("network_unreachable") ? "Network unreachable" : "Failed to connect to server";
        }
        u06 u06Var3 = u06.NETWORK;
        if (message == null) {
            message = str2;
        }
        return new t06(u06Var3, str, message, null);
    }

    public static t06 a(IOException iOException) {
        String str;
        String message = iOException.getMessage();
        if (message != null) {
            String lowerCase = message.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (ta8.D(lowerCase, "connection reset", false)) {
                str = "connection_reset";
            } else if (ta8.D(lowerCase, "connection abort", false)) {
                str = "connection_aborted";
            } else if (ta8.D(lowerCase, "broken pipe", false)) {
                str = "broken_pipe";
            } else if (ta8.D(lowerCase, "connection closed", false)) {
                str = "connection_closed";
            } else if (ta8.D(lowerCase, "unexpected end of stream", false)) {
                str = "unexpected_eof";
            } else if (ta8.D(lowerCase, "socket closed", false)) {
                str = "socket_closed";
            }
            return new t06(u06.NETWORK, str, message, null);
        }
        return null;
    }
}
