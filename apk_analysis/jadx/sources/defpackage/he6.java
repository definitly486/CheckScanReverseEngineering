package defpackage;

import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class he6 {
    public static final void a(nb6 nb6Var, File file) {
        file.getClass();
        nb6Var.getClass();
        try {
            file.delete();
        } catch (Throwable th) {
            nb6Var.v.a("Error deleting the file " + file.getName() + ": " + th + '.');
        }
    }

    public static final void b(Runnable runnable, Executor executor) {
        executor.getClass();
        try {
            executor.execute(runnable);
        } catch (Throwable unused) {
        }
    }

    public static final boolean c(nb6 nb6Var, File file) {
        try {
            return file.exists();
        } catch (Throwable th) {
            nb6Var.v.a("Error deleting the file " + file.getName() + ": " + th + '.');
            return false;
        }
    }

    public static final boolean d(IOException iOException) {
        if ((iOException instanceof SocketTimeoutException) || (iOException instanceof UnknownHostException)) {
            return true;
        }
        String message = iOException.getMessage();
        return (message != null ? message.contentEquals("Canceled") : false) || (iOException instanceof InterruptedIOException);
    }
}
