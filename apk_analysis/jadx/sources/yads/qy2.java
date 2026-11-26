package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public final class qy2 extends pg8 implements defpackage.bm3 {
    public defpackage.yg5 b;
    public ry2 c;
    public cz2 d;
    public byte[] e;
    public int f;
    public final /* synthetic */ ry2 g;
    public final /* synthetic */ cz2 h;
    public final /* synthetic */ byte[] i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qy2(ry2 ry2Var, cz2 cz2Var, byte[] bArr, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.g = ry2Var;
        this.h = cz2Var;
        this.i = bArr;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new qy2(this.g, this.h, this.i, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((qy2) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.yg5 yg5Var;
        ry2 ry2Var;
        cz2 cz2Var;
        byte[] bArr;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.f;
        if (i == 0) {
            r57.b(obj);
            ry2 ry2Var2 = this.g;
            cz2 cz2Var2 = this.h;
            byte[] bArr2 = ry2.d;
            defpackage.yg5 yg5VarC = ry2Var2.c(cz2Var2);
            ry2 ry2Var3 = this.g;
            cz2 cz2Var3 = this.h;
            byte[] bArr3 = this.i;
            this.b = yg5VarC;
            this.c = ry2Var3;
            this.d = cz2Var3;
            this.e = bArr3;
            this.f = 1;
            if (yg5VarC.lock(null, this) == a32Var) {
                return a32Var;
            }
            yg5Var = yg5VarC;
            ry2Var = ry2Var3;
            cz2Var = cz2Var3;
            bArr = bArr3;
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            bArr = this.e;
            cz2Var = this.d;
            ry2Var = this.c;
            yg5Var = this.b;
            r57.b(obj);
        }
        try {
            byte[] bArr4 = ry2.d;
            File fileB = ry2Var.b(cz2Var);
            if (!fileB.exists() || !ry2.a(fileB)) {
                File fileA = ry2.a(ry2Var, bArr, cz2Var);
                if (fileA == null) {
                    fileB = null;
                } else if (!ry2.a(fileA) || !fileA.renameTo(fileB)) {
                    try {
                        fileA.delete();
                    } catch (Exception unused) {
                    }
                    fileB = null;
                }
            }
            return fileB;
        } finally {
            yg5Var.unlock(null);
        }
    }
}
