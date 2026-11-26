package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface ls5<T> {
    void onComplete();

    void onError(Throwable th);

    void onNext(T t);

    void onSubscribe(cp2 cp2Var);
}
