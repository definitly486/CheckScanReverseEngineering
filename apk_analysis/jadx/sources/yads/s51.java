package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public interface s51 {
    default void d() throws Exception {
        l51 l51VarI = i();
        if (l51VarI != null) {
            l51VarI.b();
        }
    }

    default void e() {
        l51 l51VarI = i();
        if (l51VarI != null) {
            l51VarI.d();
        }
    }

    l51 i();

    void setBorder(tt ttVar, f51 f51Var, View view);

    void setNeedClipping(boolean z);
}
