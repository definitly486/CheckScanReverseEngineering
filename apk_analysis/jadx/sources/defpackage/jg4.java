package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface jg4 {
    default hg4 b() {
        hg4 hg4Var = c.d;
        if (hg4Var != null) {
            return hg4Var;
        }
        ah.f("KoinApplication has not been started");
        return null;
    }
}
