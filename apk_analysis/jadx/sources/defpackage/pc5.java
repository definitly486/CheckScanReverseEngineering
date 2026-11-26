package defpackage;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class pc5 {
    public final if5 a;
    public final a b;

    public static class a {
        public final HashMap a = new HashMap();

        /* JADX INFO: renamed from: pc5$a$a, reason: collision with other inner class name */
        public static class C0315a<Model> {
            public final List<nc5<Model, ?>> a;

            public C0315a(List<nc5<Model, ?>> list) {
                this.a = list;
            }
        }
    }

    public pc5(f53.c cVar) {
        if5 if5Var = new if5(cVar);
        this.b = new a();
        this.a = if5Var;
    }
}
