package defpackage;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class al1 {
    public final String a;
    public List<? extends Annotation> b = kx2.b;
    public final ArrayList c = new ArrayList();
    public final HashSet d = new HashSet();
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();
    public final ArrayList g = new ArrayList();

    public al1(String str) {
        this.a = str;
    }

    public final void a(String str, mp7 mp7Var) {
        str.getClass();
        mp7Var.getClass();
        if (!this.d.add(str)) {
            h2.c(this.a, n7.d("Element with name '", str, "' is already registered in "));
        } else {
            this.c.add(str);
            this.e.add(mp7Var);
            this.f.add(kx2.b);
            this.g.add(Boolean.FALSE);
        }
    }
}
