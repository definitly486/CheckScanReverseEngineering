package defpackage;

import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes3.dex */
public final class lz2 implements e94 {
    public final sy6 a;
    public final gk b;
    public final nj c;
    public final p95 d;

    public static final class a {
        public final x04 a;
        public final boolean b;
        public final z82 c;
        public final String d;

        public a(x04 x04Var, boolean z, z82 z82Var, String str) {
            this.a = x04Var;
            this.b = z;
            this.c = z82Var;
            this.d = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && this.b == aVar.b && this.c == aVar.c && aa4.e(this.d, aVar.d);
        }

        public final int hashCode() {
            int iHashCode = (this.c.hashCode() + tg.c(this.a.hashCode() * 31, 31, this.b)) * 31;
            String str = this.d;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "ExecuteResult(image=" + this.a + ", isSampled=" + this.b + ", dataSource=" + this.c + ", diskCacheKey=" + this.d + ")";
        }
    }

    public lz2(sy6 sy6Var, gk gkVar, nj njVar) {
        this.a = sy6Var;
        this.b = gkVar;
        this.c = njVar;
        this.d = new p95(sy6Var, njVar);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    @Override // defpackage.e94
    public final Object a(fz6 fz6Var, f02 f02Var) throws Throwable {
        qz2 qz2Var;
        fz6 fz6Var2 = fz6Var;
        p95 p95Var = this.d;
        if (f02Var instanceof qz2) {
            qz2Var = (qz2) f02Var;
            int i = qz2Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                qz2Var.o = i - Integer.MIN_VALUE;
            } else {
                qz2Var = new qz2(this, f02Var);
            }
        } else {
            qz2Var = new qz2(this, f02Var);
        }
        qz2 qz2Var2 = qz2Var;
        Object obj = qz2Var2.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = qz2Var2.o;
        if (i2 == 0) {
            r57.b(obj);
            try {
                b24 b24Var = fz6Var2.d;
                Object obj2 = b24Var.b;
                t18 t18Var = fz6Var2.e;
                a13 a13Var = fz6Var2.f;
                zz5 zz5VarC = this.c.c(b24Var, t18Var);
                md7 md7Var = zz5VarC.c;
                List<b36<g05<? extends Object, ? extends Object>, ne4<? extends Object>>> list = this.a.d.b;
                int size = list.size();
                for (int i3 = 0; i3 < size; i3++) {
                    b36<g05<? extends Object, ? extends Object>, ne4<? extends Object>> b36Var = list.get(i3);
                    g05<? extends Object, ? extends Object> g05Var = b36Var.b;
                    if (b36Var.c.e(obj2)) {
                        g05Var.getClass();
                        b99 b99VarA = g05Var.a(obj2, zz5VarC);
                        if (b99VarA != null) {
                            obj2 = b99VarA;
                        }
                    }
                }
                o95.b bVarB = p95Var.b(b24Var, obj2, zz5VarC, a13Var);
                o95.c cVarA = bVarB != null ? p95Var.a(b24Var, bVarB, t18Var, md7Var) : null;
                if (cVarA == null) {
                    o22 o22Var = b24Var.g;
                    rz2 rz2Var = new rz2(this, b24Var, obj2, zz5VarC, a13Var, bVarB, fz6Var2, null);
                    qz2Var2.l = fz6Var2;
                    qz2Var2.o = 1;
                    Object objD = av0.d(o22Var, rz2Var, qz2Var2);
                    return objD == a32Var ? a32Var : objD;
                }
                Map<String, Object> map = cVarA.b;
                x04 x04Var = cVarA.a;
                z82 z82Var = z82.MEMORY_CACHE;
                Object obj3 = map.get("coil#disk_cache_key");
                String str = obj3 instanceof String ? (String) obj3 : null;
                Object obj4 = map.get("coil#is_sampled");
                Boolean bool = obj4 instanceof Boolean ? (Boolean) obj4 : null;
                return new zc8(x04Var, b24Var, z82Var, bVarB, str, bool != null ? bool.booleanValue() : false, fz6Var2.g);
            } catch (Throwable th) {
                th = th;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            fz6 fz6Var3 = qz2Var2.l;
            try {
                r57.b(obj);
                return obj;
            } catch (Throwable th2) {
                th = th2;
                fz6Var2 = fz6Var3;
            }
        }
        if (th instanceof CancellationException) {
            throw th;
        }
        return rb9.a(fz6Var2.getRequest(), th);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0054  */
    /* JADX WARN: Code duplicated, block: B:20:0x0072 A[LOOP:0: B:16:0x0052->B:20:0x0072, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:40:0x0075 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0068 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00a1 -> B:27:0x00a4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object b(defpackage.x48 r7, defpackage.fs1 r8, defpackage.b24 r9, java.lang.Object r10, defpackage.zz5 r11, defpackage.a13 r12, defpackage.f02 r13) {
        /*
            Method dump skipped, instruction units count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lz2.b(x48, fs1, b24, java.lang.Object, zz5, a13, f02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:49:0x011f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0122  */
    /* JADX WARN: Code duplicated, block: B:52:0x0125  */
    /* JADX WARN: Code duplicated, block: B:71:0x016a  */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0147, code lost:
    
        if (r1 == r9) goto L60;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v6, types: [T, fs1] */
    /* JADX WARN: Type inference failed for: r1v8, types: [T, zz5] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(defpackage.b24 r16, java.lang.Object r17, defpackage.zz5 r18, defpackage.a13 r19, defpackage.f02 r20) {
        /*
            Method dump skipped, instruction units count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lz2.c(b24, java.lang.Object, zz5, a13, f02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0056  */
    /* JADX WARN: Code duplicated, block: B:19:0x0072  */
    /* JADX WARN: Code duplicated, block: B:25:0x008d  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x00bb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x007d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00b1 -> B:28:0x00b4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object d(defpackage.fs1 r9, defpackage.b24 r10, java.lang.Object r11, defpackage.zz5 r12, defpackage.a13 r13, defpackage.f02 r14) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lz2.d(fs1, b24, java.lang.Object, zz5, a13, f02):java.lang.Object");
    }
}
