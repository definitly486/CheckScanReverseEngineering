package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qb7 {
    public static final dm3<id3<Object>, Object, e02<? super j59>, Object> a;

    public static final /* synthetic */ class a extends qm3 implements dm3<id3<? super Object>, Object, e02<? super j59>, Object> {
        public static final a c = new a(3, id3.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);

        @Override // defpackage.dm3
        public final Object invoke(id3<? super Object> id3Var, Object obj, e02<? super j59> e02Var) {
            return id3Var.emit(obj, e02Var);
        }
    }

    static {
        a aVar = a.c;
        aVar.getClass();
        v39.c(3, aVar);
        a = aVar;
    }
}
