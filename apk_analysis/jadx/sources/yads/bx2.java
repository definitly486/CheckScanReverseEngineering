package yads;

import android.system.ErrnoException;
import android.system.OsConstants;

/* JADX INFO: loaded from: classes3.dex */
public abstract class bx2 {
    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(Throwable th) {
        return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
    }
}
