package defpackage;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface nc5<Model, Data> {

    public static class a<Data> {
        public final kf4 a;
        public final List<kf4> b;
        public final s82<Data> c;

        public a() {
            throw null;
        }

        public a(kf4 kf4Var, s82<Data> s82Var) {
            List<kf4> list = Collections.EMPTY_LIST;
            r96.c(kf4Var, "Argument must not be null");
            this.a = kf4Var;
            r96.c(list, "Argument must not be null");
            this.b = list;
            r96.c(s82Var, "Argument must not be null");
            this.c = s82Var;
        }
    }

    a<Data> a(Model model, int i, int i2, xz5 xz5Var);

    boolean b(Model model);
}
