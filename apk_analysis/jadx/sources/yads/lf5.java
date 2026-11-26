package yads;

import android.content.SharedPreferences;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class lf5 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ rf5 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lf5(rf5 rf5Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = rf5Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new lf5(this.b, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new lf5(this.b, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        ((SharedPreferences) ((av3) bv3.a(this.b.h, "YadPreferenceFile")).d.getValue()).getAll();
        return j59.a;
    }
}
