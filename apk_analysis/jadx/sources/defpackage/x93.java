package defpackage;

import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class x93 {
    public static void a(j46 j46Var, w93 w93Var) {
        if (w93Var.n(j46Var)) {
            return;
        }
        try {
            w93Var.P(j46Var, false).close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final void b(j46 j46Var, w93 w93Var) throws IOException {
        try {
            IOException iOException = null;
            for (j46 j46Var2 : w93Var.o(j46Var)) {
                try {
                    if (w93Var.p(j46Var2).b) {
                        b(j46Var2, w93Var);
                    }
                    w93Var.g(j46Var2);
                } catch (IOException e) {
                    if (iOException == null) {
                        iOException = e;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }
}
