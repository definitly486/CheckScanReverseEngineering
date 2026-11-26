package defpackage;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class wv1 {
    public static wv1 b;
    public final List<vv1> a = Collections.EMPTY_LIST;

    public static synchronized wv1 a() {
        wv1 wv1Var;
        wv1Var = b;
        if (wv1Var == null) {
            wv1Var = new wv1();
            b = wv1Var;
        }
        return wv1Var;
    }
}
