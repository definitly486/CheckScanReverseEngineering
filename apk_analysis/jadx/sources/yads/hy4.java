package yads;

import android.content.Context;
import android.content.Intent;
import defpackage.r57;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class hy4 {
    public final h16 a;
    public final l00 b;
    public final j1 c;
    public final cy4 d;
    public final in0 e;
    public final a00 f;

    public hy4(e4 e4Var, bf5 bf5Var, d9 d9Var, h16 h16Var, l00 l00Var) {
        j1 j1Var = new j1();
        cy4 cy4Var = new cy4();
        in0 in0Var = new in0(e4Var, bf5Var, d9Var);
        a00 a00Var = new a00();
        this.a = h16Var;
        this.b = l00Var;
        this.c = j1Var;
        this.d = cy4Var;
        this.e = in0Var;
        this.f = a00Var;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x006e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0082 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x008b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0080 -> B:35:0x0083). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object a(android.content.Context r8, java.util.List r9, defpackage.f02 r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof yads.gy4
            if (r0 == 0) goto L13
            r0 = r10
            yads.gy4 r0 = (yads.gy4) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            yads.gy4 r0 = new yads.gy4
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.e
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.g
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2e
            yads.by4 r8 = r0.d
            java.util.Iterator r9 = r0.c
            android.content.Context r2 = r0.b
            defpackage.r57.b(r10)
            goto L83
        L2e:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r3
        L34:
            defpackage.r57.b(r10)
            android.app.Activity r10 = yads.s1.a()
            if (r10 == 0) goto L3f
            r8 = r10
            goto L63
        L3f:
            yads.j1 r10 = r7.c
            r10.getClass()
            r10 = 0
            r2 = r8
        L46:
            boolean r5 = r2 instanceof android.content.ContextWrapper
            if (r5 == 0) goto L5f
            int r5 = r10 + 1
            r6 = 10
            if (r10 >= r6) goto L5f
            boolean r10 = r2 instanceof android.app.Activity
            if (r10 == 0) goto L57
            android.app.Activity r2 = (android.app.Activity) r2
            goto L60
        L57:
            android.content.ContextWrapper r2 = (android.content.ContextWrapper) r2
            android.content.Context r2 = r2.getBaseContext()
            r10 = r5
            goto L46
        L5f:
            r2 = r3
        L60:
            if (r2 == 0) goto L63
            r8 = r2
        L63:
            java.util.Iterator r9 = r9.iterator()
            r2 = r8
        L68:
            boolean r8 = r9.hasNext()
            if (r8 == 0) goto L8c
            java.lang.Object r8 = r9.next()
            yads.by4 r8 = (yads.by4) r8
            r0.b = r2
            r0.c = r9
            r0.d = r8
            r0.g = r4
            java.lang.Object r10 = r7.a(r2, r8, r0)
            if (r10 != r1) goto L83
            return r1
        L83:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L68
            return r8
        L8c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.hy4.a(android.content.Context, java.util.List, f02):java.lang.Object");
    }

    public final void a(by4 by4Var, uz uzVar, boolean z) {
        this.f.getClass();
        String strA = a00.a(uzVar);
        defpackage.uz4 uz4Var = new defpackage.uz4();
        uz4Var.put("click_url", a56.a(by4Var.b));
        uz4Var.put("deeplink_package_name", by4Var.a);
        uz4Var.put("deeplink_success", Boolean.valueOf(z));
        if (z) {
            uz4Var.put("click_destination", strA);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(uz4Var.b());
        l00 l00Var = this.b;
        e75 e75Var = e75.DEEPLINK;
        g75 g75VarA = l00Var.a(e75Var, linkedHashMap);
        l00Var.d.a(g75VarA);
        l00Var.f.a(e75Var, g75VarA.b, c75.a, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Context context, by4 by4Var, defpackage.f02 f02Var) {
        fy4 fy4Var;
        uz uzVar;
        uz uzVar2;
        if (f02Var instanceof fy4) {
            fy4Var = (fy4) f02Var;
            int i = fy4Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                fy4Var.f = i - Integer.MIN_VALUE;
            } else {
                fy4Var = new fy4(this, f02Var);
            }
        } else {
            fy4Var = new fy4(this, f02Var);
        }
        Object obj = fy4Var.d;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = fy4Var.f;
        defpackage.mx2 mx2Var = defpackage.mx2.b;
        if (i2 == 0) {
            r57.b(obj);
            uzVar = new uz(by4Var);
            try {
                this.d.getClass();
                Intent intentA = cy4.a(context, by4Var);
                if (by4Var.e == ui0.RESULT) {
                    in0 in0Var = this.e;
                    fy4Var.b = by4Var;
                    fy4Var.c = uzVar;
                    fy4Var.f = 1;
                    if (in0Var.a(context, intentA, fy4Var) == a32Var) {
                        return a32Var;
                    }
                } else {
                    context.startActivity(intentA);
                }
                uzVar2 = uzVar;
            } catch (Exception unused) {
                this.a.a(by4Var.g, uzVar, mx2Var);
                a(by4Var, uzVar, false);
                return Boolean.FALSE;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            uzVar2 = fy4Var.c;
            by4Var = fy4Var.b;
            try {
                r57.b(obj);
            } catch (Exception unused2) {
                uzVar = uzVar2;
                this.a.a(by4Var.g, uzVar, mx2Var);
                a(by4Var, uzVar, false);
                return Boolean.FALSE;
            }
        }
        this.a.a(by4Var.f, uzVar2, mx2Var);
        a(by4Var, uzVar2, true);
        return Boolean.TRUE;
    }
}
