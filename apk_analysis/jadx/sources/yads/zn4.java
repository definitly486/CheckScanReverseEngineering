package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public final class zn4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ ao4 c;
    public final /* synthetic */ ArrayList d;
    public final /* synthetic */ Context e;
    public final /* synthetic */ sl5 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zn4(Context context, ArrayList arrayList, defpackage.e02 e02Var, ao4 ao4Var, sl5 sl5Var) {
        super(2, e02Var);
        this.c = ao4Var;
        this.d = arrayList;
        this.e = context;
        this.f = sl5Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        ao4 ao4Var = this.c;
        return new zn4(this.e, this.d, e02Var, ao4Var, this.f);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((zn4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            yn4 yn4Var = new yn4(this.e, this.d, null, this.c, this.f);
            this.b = 1;
            obj = defpackage.z22.c(yn4Var, this);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        List list = (List) obj;
        ao4 ao4Var = this.c;
        int size = list.size();
        int size2 = this.d.size();
        ao4Var.getClass();
        ao4.a(size, size2);
        return new JSONArray((Collection) list);
    }
}
