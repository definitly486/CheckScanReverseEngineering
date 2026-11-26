package defpackage;

import java.util.function.BinaryOperator;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ia8 implements BinaryOperator {
    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        ja8.a aVar = (ja8.a) obj;
        ja8.a aVar2 = (ja8.a) obj2;
        String strK = ja8.k(aVar2.a);
        aVar2.a = null;
        yb9.e(aVar.a);
        aVar.a.append((Object) strK);
        return aVar;
    }
}
