package defpackage;

import android.app.Application;
import android.content.Context;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.SelectionContainerKt;
import androidx.compose.runtime.MutableState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kg4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kg4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                final Context context = (Context) obj2;
                tc5 tc5Var = (tc5) obj;
                tc5Var.getClass();
                if (context instanceof Application) {
                    bm3 bm3Var = new bm3() { // from class: lg4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj3, Object obj4) {
                            ((ze7) obj3).getClass();
                            ((i36) obj4).getClass();
                            return (Application) context;
                        }
                    };
                    cg4 cg4Var = cg4.Singleton;
                    zk1 zk1VarA = x07.a(Application.class);
                    ba8 ba8Var = bf7.e;
                    gi0 gi0Var = new gi0(ba8Var, zk1VarA, null, bm3Var, cg4Var);
                    m08 m08Var = new m08(gi0Var);
                    tc5Var.a(m08Var);
                    zk1 zk1VarA2 = x07.a(Context.class);
                    gi0Var.f.add(zk1VarA2);
                    tc5Var.c.put(oe4.a(zk1VarA2) + "::" + ba8Var, m08Var);
                } else {
                    u4.d(new gi0(bf7.e, x07.a(Context.class), null, new bm3() { // from class: mg4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj3, Object obj4) {
                            ((ze7) obj3).getClass();
                            ((i36) obj4).getClass();
                            return context;
                        }
                    }, cg4.Singleton), tc5Var);
                }
                return j59.a;
            default:
                return SelectionContainerKt.SelectionContainer$lambda$3$0((MutableState) obj2, (Selection) obj);
        }
    }
}
