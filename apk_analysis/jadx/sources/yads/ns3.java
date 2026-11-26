package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ns3 {
    public static os3 a() {
        os3 os3Var;
        os3 os3Var2 = os3.c;
        if (os3Var2 != null) {
            return os3Var2;
        }
        synchronized (os3.b) {
            os3Var = os3.c;
            if (os3Var == null) {
                os3Var = new os3();
                os3.c = os3Var;
            }
        }
        return os3Var;
    }
}
