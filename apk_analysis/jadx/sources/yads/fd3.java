package yads;

import android.graphics.Bitmap;
import defpackage.j59;
import defpackage.r57;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class fd3 {
    public final b05 a;
    public final fe5 b;
    public final bd3 c;

    public fd3(b05 b05Var, fe5 fe5Var) {
        bd3 bd3Var = new bd3();
        this.a = b05Var;
        this.b = fe5Var;
        this.c = bd3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object a(ArrayList arrayList, defpackage.f02 f02Var) {
        cd3 cd3Var;
        if (f02Var instanceof cd3) {
            cd3Var = (cd3) f02Var;
            int i = cd3Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                cd3Var.d = i - Integer.MIN_VALUE;
            } else {
                cd3Var = new cd3(this, f02Var);
            }
        } else {
            cd3Var = new cd3(this, f02Var);
        }
        Object objC = cd3Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = cd3Var.d;
        if (i2 == 0) {
            r57.b(objC);
            ed3 ed3Var = new ed3(arrayList, this, null);
            cd3Var.d = 1;
            objC = defpackage.z22.c(ed3Var, cd3Var);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objC);
        }
        for (defpackage.b36 b36Var : (List) objC) {
            rd3 rd3Var = (rd3) b36Var.b;
            Bitmap bitmap = (Bitmap) b36Var.c;
            if (bitmap != null) {
                b05 b05Var = this.a;
                b05Var.getClass();
                a05 a05VarB = b05.b(rd3Var);
                if (a05VarB != null) {
                    b05Var.c.put(a05VarB, bitmap);
                }
            }
        }
        return j59.a;
    }
}
