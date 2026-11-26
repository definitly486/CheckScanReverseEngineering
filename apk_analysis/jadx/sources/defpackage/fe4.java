package defpackage;

import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class fe4 {
    public final w98 a;
    public int b;

    public fe4(fc4 fc4Var, w98 w98Var) {
        w98Var.getClass();
        this.a = w98Var;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final oc4 a() {
        oc4 jd4Var;
        Object obj;
        Object objInvoke;
        w98 w98Var = this.a;
        byte bP = w98Var.p();
        if (bP == 1) {
            return d(true);
        }
        if (bP == 0) {
            return d(false);
        }
        if (bP != 6) {
            if (bP == 8) {
                return b();
            }
            w98.l(w98Var, "Cannot read Json element because of unexpected ".concat(s0.e(bP)), 0, null, 6);
            throw null;
        }
        int i = this.b + 1;
        this.b = i;
        if (i == 200) {
            de4 de4Var = new de4(this, null);
            j59 j59Var = j59.a;
            a32 a32Var = zd2.a;
            be2 be2Var = new be2();
            be2Var.b = de4Var;
            be2Var.c = j59Var;
            be2Var.d = be2Var;
            a32 a32Var2 = zd2.a;
            be2Var.e = a32Var2;
            while (true) {
                obj = be2Var.e;
                e02<? super oc4> e02Var = be2Var.d;
                if (e02Var == null) {
                    break;
                }
                if (aa4.e(a32Var2, obj)) {
                    try {
                        de4 de4Var2 = be2Var.b;
                        Object obj2 = be2Var.c;
                        if (de4Var2 == 0) {
                            de4Var2.getClass();
                            o22 context = e02Var.getContext();
                            Object da4Var = context == gx2.b ? new da4(e02Var) : new ea4(e02Var, context);
                            v39.c(3, de4Var2);
                            objInvoke = de4Var2.invoke(be2Var, obj2, da4Var);
                        } else {
                            v39.c(3, de4Var2);
                            objInvoke = de4Var2.invoke(be2Var, obj2, e02Var);
                        }
                        if (objInvoke != a32.COROUTINE_SUSPENDED) {
                            e02Var.resumeWith(objInvoke);
                        }
                    } catch (Throwable th) {
                        e02Var.resumeWith(new k57.a(th));
                    }
                } else {
                    be2Var.e = a32Var2;
                    e02Var.resumeWith(obj);
                }
            }
            r57.b(obj);
            jd4Var = (oc4) obj;
        } else {
            byte bF = w98Var.f((byte) 6);
            if (w98Var.p() == 4) {
                w98.l(w98Var, "Unexpected leading comma", 0, null, 6);
                throw null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (w98Var.b()) {
                String strI = w98Var.i();
                w98Var.f((byte) 5);
                linkedHashMap.put(strI, a());
                bF = w98Var.e();
                if (bF != 4) {
                    if (bF == 7) {
                        break;
                    }
                    w98.l(w98Var, "Expected end of the object or comma", 0, null, 6);
                    throw null;
                }
            }
            if (bF == 6) {
                w98Var.f((byte) 7);
            } else if (bF == 4) {
                yc4.d(w98Var, "object");
                throw null;
            }
            jd4Var = new jd4(linkedHashMap);
        }
        this.b--;
        return jd4Var;
    }

    public final zb4 b() {
        w98 w98Var = this.a;
        byte bE = w98Var.e();
        if (w98Var.p() == 4) {
            w98.l(w98Var, "Unexpected leading comma", 0, null, 6);
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        while (w98Var.b()) {
            arrayList.add(a());
            bE = w98Var.e();
            if (bE != 4) {
                boolean z = bE == 9;
                int i = w98Var.b;
                if (!z) {
                    w98.l(w98Var, "Expected end of the array or comma", i, null, 4);
                    throw null;
                }
            }
        }
        if (bE == 8) {
            w98Var.f((byte) 9);
        } else if (bE == 4) {
            yc4.d(w98Var, "array");
            throw null;
        }
        return new zb4(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0062  */
    /* JADX WARN: Code duplicated, block: B:21:0x007e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x007f  */
    /* JADX WARN: Code duplicated, block: B:25:0x0091 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0093  */
    /* JADX WARN: Code duplicated, block: B:27:0x0095  */
    /* JADX WARN: Code duplicated, block: B:29:0x009d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x007f -> B:23:0x0084). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object c(defpackage.ae2 r14, defpackage.cd0 r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof defpackage.ee4
            if (r0 == 0) goto L13
            r0 = r15
            ee4 r0 = (defpackage.ee4) r0
            int r1 = r0.s
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.s = r1
            goto L18
        L13:
            ee4 r0 = new ee4
            r0.<init>(r13, r15)
        L18:
            java.lang.Object r15 = r0.q
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.s
            r3 = 0
            r4 = 6
            r5 = 0
            r6 = 7
            r7 = 4
            r8 = 1
            if (r2 == 0) goto L43
            if (r2 != r8) goto L3d
            int r13 = r0.p
            java.lang.String r14 = r0.o
            java.util.LinkedHashMap r2 = r0.n
            fe4 r9 = r0.m
            ae2 r10 = r0.l
            defpackage.r57.b(r15)
            r12 = r15
            r15 = r13
            r13 = r9
            r9 = r2
            r2 = r0
            r0 = r10
            r10 = r12
            goto L84
        L3d:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r13)
            return r3
        L43:
            defpackage.r57.b(r15)
            w98 r15 = r13.a
            byte r2 = r15.f(r4)
            byte r9 = r15.p()
            if (r9 == r7) goto Lb9
            java.util.LinkedHashMap r15 = new java.util.LinkedHashMap
            r15.<init>()
            r9 = r15
            r15 = r14
            r14 = r5
        L5a:
            w98 r10 = r13.a
            boolean r11 = r10.b()
            if (r11 == 0) goto La3
            java.lang.String r2 = r10.i()
            r11 = 5
            r10.f(r11)
            j59 r10 = defpackage.j59.a
            r0.l = r15
            r0.m = r13
            r0.n = r9
            r0.o = r2
            r0.p = r14
            r0.s = r8
            a32 r10 = r15.a(r10, r0)
            if (r10 != r1) goto L7f
            return r1
        L7f:
            r12 = r15
            r15 = r14
            r14 = r2
            r2 = r0
            r0 = r12
        L84:
            oc4 r10 = (defpackage.oc4) r10
            r9.put(r14, r10)
            w98 r14 = r13.a
            byte r14 = r14.e()
            if (r14 == r7) goto L9d
            if (r14 != r6) goto L95
            r2 = r14
            goto La3
        L95:
            w98 r13 = r13.a
            java.lang.String r14 = "Expected end of the object or comma"
            defpackage.w98.l(r13, r14, r5, r3, r4)
            throw r3
        L9d:
            r12 = r2
            r2 = r14
            r14 = r15
            r15 = r0
            r0 = r12
            goto L5a
        La3:
            w98 r13 = r13.a
            if (r2 != r4) goto Lab
            r13.f(r6)
            goto Lad
        Lab:
            if (r2 == r7) goto Lb3
        Lad:
            jd4 r13 = new jd4
            r13.<init>(r9)
            return r13
        Lb3:
            java.lang.String r14 = "object"
            defpackage.yc4.d(r13, r14)
            throw r3
        Lb9:
            java.lang.String r13 = "Unexpected leading comma"
            defpackage.w98.l(r15, r13, r5, r3, r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fe4.c(ae2, cd0):java.lang.Object");
    }

    public final pd4 d(boolean z) {
        w98 w98Var = this.a;
        String strJ = !z ? w98Var.j() : w98Var.i();
        return (z || !aa4.e(strJ, "null")) ? new cd4(strJ, z) : gd4.INSTANCE;
    }
}
