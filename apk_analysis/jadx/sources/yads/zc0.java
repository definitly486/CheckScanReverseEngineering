package yads;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zc0 {
    public static void a(wc0 wc0Var) {
        if (wc0Var != null) {
            try {
                wc0Var.close();
            } catch (IOException unused) {
            }
        }
    }
}
