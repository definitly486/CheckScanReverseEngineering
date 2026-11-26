package defpackage;

import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes3.dex */
public final class kc5 extends gy4<lc5.a<Object>, Object> {
    @Override // defpackage.gy4
    public final void c(lc5.a<Object> aVar, Object obj) {
        lc5.a<Object> aVar2 = aVar;
        aVar2.getClass();
        ArrayDeque arrayDeque = lc5.a.b;
        synchronized (arrayDeque) {
            arrayDeque.offer(aVar2);
        }
    }
}
