package yads;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class up5 {
    public static final void a(te teVar) {
        try {
            teVar.b.endTransaction();
        } catch (IllegalStateException unused) {
        }
    }

    public static final void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }
}
