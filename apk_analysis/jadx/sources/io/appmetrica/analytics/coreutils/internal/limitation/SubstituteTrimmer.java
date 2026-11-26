package io.appmetrica.analytics.coreutils.internal.limitation;

/* JADX INFO: loaded from: classes5.dex */
public class SubstituteTrimmer<T> implements Trimmer<T> {
    private final Trimmer a;
    private final Object b;

    public SubstituteTrimmer(Trimmer<T> trimmer, T t) {
        this.a = trimmer;
        this.b = t;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.Trimmer
    public T trim(T t) {
        return t != this.a.trim(t) ? (T) this.b : t;
    }
}
