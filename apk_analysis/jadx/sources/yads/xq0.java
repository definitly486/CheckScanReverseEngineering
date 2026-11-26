package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class xq0 {
    public static final ak5 a(vq0 vq0Var) {
        lu0 lu0Var = vq0Var.R;
        ak5 ak5Var = lu0Var instanceof ak5 ? (ak5) lu0Var : null;
        if (ak5Var != null) {
            return ak5Var;
        }
        ak5 ak5Var2 = new ak5();
        vq0Var.setActionHandler(ak5Var2);
        return ak5Var2;
    }
}
