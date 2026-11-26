package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface no7<E> {
    boolean close(Throwable th);

    xl7<E, no7<E>> getOnSend();

    void invokeOnClose(nl3<? super Throwable, j59> nl3Var);

    boolean isClosedForSend();

    @ul2
    default boolean offer(E e) throws Throwable {
        Object objMo0trySendJP2dKIU = mo0trySendJP2dKIU(e);
        if (!(objMo0trySendJP2dKIU instanceof p91.b)) {
            return true;
        }
        Throwable thA = p91.a(objMo0trySendJP2dKIU);
        if (thA == null) {
            return false;
        }
        int i = p68.a;
        throw thA;
    }

    Object send(E e, e02<? super j59> e02Var);

    /* JADX INFO: renamed from: trySend-JP2dKIU */
    Object mo0trySendJP2dKIU(E e);
}
