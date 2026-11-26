package yads;

import android.os.TransactionTooLargeException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class io2 {
    public static final boolean a(Throwable th) {
        Throwable cause;
        return (th instanceof TransactionTooLargeException) || ((cause = th.getCause()) != null && a(cause));
    }
}
