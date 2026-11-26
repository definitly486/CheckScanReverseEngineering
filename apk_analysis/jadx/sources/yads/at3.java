package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public final class at3 extends pg8 implements defpackage.bm3 {
    public defpackage.yg5 b;
    public Object c;
    public String d;
    public int e;
    public final /* synthetic */ ct3 f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public at3(ct3 ct3Var, String str, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.f = ct3Var;
        this.g = str;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new at3(this.f, this.g, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new at3(this.f, this.g, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [yg5] */
    /* JADX WARN: Type inference failed for: r1v4, types: [yg5] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r7v11, types: [yg5] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [yg5] */
    /* JADX WARN: Type inference failed for: r7v9 */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        ?? r1;
        Throwable th;
        String str;
        ct3 ct3Var;
        ?? r7;
        String str2;
        Object objValueOf;
        ?? r8;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.e;
        try {
            try {
                if (i == 0) {
                    r57.b(obj);
                    ct3 ct3Var2 = this.f;
                    defpackage.yg5 yg5Var = ct3Var2.d;
                    str = this.g;
                    this.b = yg5Var;
                    this.c = ct3Var2;
                    this.d = str;
                    this.e = 1;
                    if (yg5Var.lock(null, this) != a32Var) {
                        ct3Var = ct3Var2;
                        r1 = yg5Var;
                    }
                    return a32Var;
                }
                if (i != 1) {
                    if (i != 2) {
                        defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    str2 = (String) this.c;
                    r7 = this.b;
                    try {
                        r57.b(obj);
                        r7 = r7;
                        File file = (File) obj;
                        File file2 = new File(file, "light_bundle_script.js");
                        File file3 = new File(file, "light_bundle_script.js.tmp");
                        defpackage.da3.f(file3, str2);
                        objValueOf = Boolean.valueOf(file3.renameTo(file2));
                        r8 = r7;
                    } catch (Exception unused) {
                        objValueOf = j59.a;
                        r8 = r7;
                    }
                    r8.unlock(null);
                    return objValueOf;
                }
                String str3 = this.d;
                ct3Var = (ct3) this.c;
                defpackage.yg5 yg5Var2 = this.b;
                r57.b(obj);
                str = str3;
                r1 = yg5Var2;
                this.b = r1;
                this.c = str;
                this.d = null;
                this.e = 2;
                ct3Var.getClass();
                defpackage.oi2 oi2Var = defpackage.qo2.a;
                obj = defpackage.av0.d(defpackage.sh2.c, new ws3(ct3Var, null), this);
                if (obj != a32Var) {
                    r7 = r1;
                    str2 = str;
                    File file4 = (File) obj;
                    File file5 = new File(file4, "light_bundle_script.js");
                    File file6 = new File(file4, "light_bundle_script.js.tmp");
                    defpackage.da3.f(file6, str2);
                    objValueOf = Boolean.valueOf(file6.renameTo(file5));
                    r8 = r7;
                    r8.unlock(null);
                    return objValueOf;
                }
                return a32Var;
            } catch (Exception unused2) {
                r7 = r1;
                objValueOf = j59.a;
                r8 = r7;
            } catch (Throwable th2) {
                th = th2;
                r1.unlock(null);
                throw th;
            }
        } catch (Throwable th3) {
            r1 = this;
            th = th3;
        }
    }
}
