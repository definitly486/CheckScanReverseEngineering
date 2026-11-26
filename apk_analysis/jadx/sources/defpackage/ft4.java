package defpackage;

import kotlinx.datetime.DateTimeFormatException;

/* JADX INFO: loaded from: classes5.dex */
public final class ft4 {
    public static final fh8 a = nm4.b(a.f);
    public static final fh8 b = nm4.b(b.f);
    public static final b44 c = new b44(0);

    public static final class a extends gh4 implements ll3<hc2<ct4>> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final hc2<ct4> invoke() {
            et4 et4Var = et4.f;
            et4Var.getClass();
            dt4.a aVar = new dt4.a(new nq());
            et4Var.invoke(aVar);
            return new dt4(e0.a.c(aVar));
        }
    }

    public static final class b extends gh4 implements ll3<hc2<ct4>> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final hc2<ct4> invoke() {
            gt4 gt4Var = gt4.f;
            gt4Var.getClass();
            dt4.a aVar = new dt4.a(new nq());
            gt4Var.invoke(aVar);
            return new dt4(e0.a.c(aVar));
        }
    }

    public static final void a(Object obj, String str) {
        if (obj == null) {
            throw new DateTimeFormatException(n2.d("Can not create a ", str, " from the given input: the field ", str, " is missing"));
        }
    }
}
