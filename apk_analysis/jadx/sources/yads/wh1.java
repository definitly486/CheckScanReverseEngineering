package yads;

/* JADX INFO: loaded from: classes6.dex */
public interface wh1 extends s51, r16, hs2 {
    br0 a();

    tt c();

    default void release() {
        b();
        setDiv(null);
        setBindingContext(null);
        d();
    }

    void setBindingContext(tt ttVar);

    void setDiv(br0 br0Var);
}
