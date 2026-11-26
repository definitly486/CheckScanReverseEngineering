package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface o22 {

    public interface a extends o22 {

        /* JADX INFO: renamed from: o22$a$a, reason: collision with other inner class name */
        public static final class C0306a {
            public static <R> R a(a aVar, R r, bm3<? super R, ? super a, ? extends R> bm3Var) {
                bm3Var.getClass();
                return bm3Var.invoke(r, aVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static <E extends a> E b(a aVar, b<E> bVar) {
                bVar.getClass();
                if (aa4.e(aVar.getKey(), bVar)) {
                    return aVar;
                }
                return null;
            }

            public static o22 c(a aVar, b<?> bVar) {
                bVar.getClass();
                return aa4.e(aVar.getKey(), bVar) ? gx2.b : aVar;
            }

            public static o22 d(a aVar, o22 o22Var) {
                o22Var.getClass();
                return o22Var == gx2.b ? aVar : (o22) o22Var.fold(aVar, new ht1(1));
            }
        }

        b<?> getKey();
    }

    public interface b<E extends a> {
    }

    <R> R fold(R r, bm3<? super R, ? super a, ? extends R> bm3Var);

    <E extends a> E get(b<E> bVar);

    o22 minusKey(b<?> bVar);

    o22 plus(o22 o22Var);
}
