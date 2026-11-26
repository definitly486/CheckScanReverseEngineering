package yads;

import defpackage.ta8;
import java.net.ConnectException;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class nx5 {
    public static t06 a(mx5 mx5Var) {
        String message;
        String message2;
        Throwable cause = mx5Var.getCause();
        if (cause == null || (message = cause.getMessage()) == null) {
            message = mx5Var.getMessage();
        }
        if (cause instanceof SocketTimeoutException) {
            u06 u06Var = u06.TIMEOUT;
            if (message == null) {
                message = "Read timeout";
            }
            return new t06(u06Var, "socket_timeout", message, null);
        }
        if ((cause instanceof ConnectException) && (message2 = cause.getMessage()) != null && ta8.D(message2, "timeout", true)) {
            u06 u06Var2 = u06.TIMEOUT;
            if (message == null) {
                message = "Connection timeout";
            }
            return new t06(u06Var2, "connect_timeout", message, null);
        }
        u06 u06Var3 = u06.TIMEOUT;
        if (message == null) {
            message = "Request timeout";
        }
        return new t06(u06Var3, "timeout", message, null);
    }
}
