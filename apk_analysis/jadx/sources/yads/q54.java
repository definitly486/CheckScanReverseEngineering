package yads;

import java.util.NoSuchElementException;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class q54 {
    public static qy4 a(Exception exc, String str) {
        iy4 iy4Var;
        if (exc instanceof TimeoutCancellationException) {
            iy4Var = iy4.d;
        } else if (exc instanceof IllegalArgumentException) {
            iy4Var = iy4.e;
        } else {
            iy4Var = exc instanceof NoSuchElementException ? iy4.f : iy4.g;
        }
        return ry4.a(str, iy4Var.b(), Integer.valueOf(iy4Var.a()));
    }

    public static qy4 a(String str) {
        iy4 iy4Var = iy4.f;
        return ry4.a(str, iy4Var.b(), Integer.valueOf(iy4Var.a()));
    }

    public static qy4 a() {
        iy4.f.b();
        return ry4.a();
    }
}
