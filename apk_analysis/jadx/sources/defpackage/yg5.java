package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public interface yg5 {
    xl7<Object, yg5> getOnLock();

    boolean holdsLock(Object obj);

    boolean isLocked();

    Object lock(Object obj, e02<? super j59> e02Var);

    boolean tryLock(Object obj);

    void unlock(Object obj);
}
