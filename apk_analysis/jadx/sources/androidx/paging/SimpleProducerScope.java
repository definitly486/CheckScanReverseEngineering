package androidx.paging;

import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.no7;
import defpackage.o22;
import defpackage.ul2;
import defpackage.xl7;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public interface SimpleProducerScope<T> extends y22, no7<T> {

    public static final class DefaultImpls {
        @ul2
        public static <T> boolean offer(SimpleProducerScope<T> simpleProducerScope, T t) {
            return SimpleProducerScope.super.offer(t);
        }
    }

    Object awaitClose(ll3<j59> ll3Var, e02<? super j59> e02Var);

    @Override // defpackage.no7
    /* synthetic */ boolean close(Throwable th);

    no7<T> getChannel();

    @Override // defpackage.y22
    /* synthetic */ o22 getCoroutineContext();

    @Override // defpackage.no7
    /* synthetic */ xl7 getOnSend();

    @Override // defpackage.no7
    /* synthetic */ void invokeOnClose(nl3 nl3Var);

    @Override // defpackage.no7
    /* synthetic */ boolean isClosedForSend();

    @Override // defpackage.no7
    @ul2
    /* bridge */ /* synthetic */ default boolean offer(Object obj) {
        return super.offer(obj);
    }

    @Override // defpackage.no7
    /* synthetic */ Object send(Object obj, e02 e02Var);

    @Override // defpackage.no7
    /* JADX INFO: renamed from: trySend-JP2dKIU */
    /* synthetic */ Object mo0trySendJP2dKIU(Object obj);
}
