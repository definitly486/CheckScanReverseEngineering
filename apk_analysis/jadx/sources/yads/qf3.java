package yads;

import android.view.View;
import android.widget.FrameLayout;
import androidx.core.internal.view.SupportMenu;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class qf3 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ dh4 d;
    public final /* synthetic */ rf3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qf3(dh4 dh4Var, rf3 rf3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = dh4Var;
        this.e = rf3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        qf3 qf3Var = new qf3(this.d, this.e, e02Var);
        qf3Var.c = obj;
        return qf3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((qf3) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.y22 y22Var;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            y22Var = (defpackage.y22) this.c;
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            y22Var = (defpackage.y22) this.c;
            r57.b(obj);
        }
        while (defpackage.z22.e(y22Var)) {
            View viewA = this.d.d.a();
            if (!(viewA instanceof FrameLayout)) {
                break;
            }
            ln3 ln3Var = this.e.d;
            FrameLayout frameLayout = (FrameLayout) viewA;
            i66 i66VarA = ln3Var.a.a(frameLayout.getContext(), ln3Var.b, false);
            dg3 dg3Var = this.e.a;
            dg3Var.getClass();
            boolean z = i66VarA instanceof f66;
            eg3 eg3Var = dg3Var.a;
            WeakReference weakReference = (WeakReference) eg3Var.d.get(frameLayout);
            yu yuVar = weakReference != null ? (yu) weakReference.get() : null;
            if (yuVar == null) {
                yuVar = new yu(frameLayout.getContext(), eg3Var.c);
                eg3Var.d.put(frameLayout, new WeakReference(yuVar));
                frameLayout.addView(yuVar);
            }
            eg3Var.b.getClass();
            yuVar.setColor(z ? SupportMenu.CATEGORY_MASK : -16711936);
            WeakHashMap weakHashMap = eg3Var.e;
            if (z) {
                WeakReference weakReference2 = (WeakReference) weakHashMap.get(frameLayout);
                jg3 jg3Var = weakReference2 != null ? (jg3) weakReference2.get() : null;
                if (jg3Var == null) {
                    jg3Var = new jg3(frameLayout.getContext(), new ip0());
                    eg3Var.e.put(frameLayout, new WeakReference(jg3Var));
                    frameLayout.addView(jg3Var);
                }
                eg3Var.a.getClass();
                jg3Var.setDescription(qh6.a((f66) i66VarA));
            } else {
                WeakReference weakReference3 = (WeakReference) weakHashMap.get(frameLayout);
                jg3 jg3Var2 = weakReference3 != null ? (jg3) weakReference3.get() : null;
                if (jg3Var2 != null) {
                    eg3Var.e.remove(frameLayout);
                    frameLayout.removeView(jg3Var2);
                }
            }
            this.c = y22Var;
            this.b = 1;
            if (defpackage.yk2.b(300L, this) == a32Var) {
                return a32Var;
            }
        }
        return j59.a;
    }
}
