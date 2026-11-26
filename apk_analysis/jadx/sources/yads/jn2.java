package yads;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jn2 {
    public final e4 a;
    public final xo b;
    public final na c;
    public final ao4 d;

    public jn2(e4 e4Var, bf5 bf5Var, dt dtVar) {
        xo xoVar = new xo();
        na naVar = new na(dtVar);
        ao4 ao4Var = new ao4(new l34(e4Var, bf5Var, null));
        this.a = e4Var;
        this.b = xoVar;
        this.c = naVar;
        this.d = ao4Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
    
        if (r15 == r1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ac, code lost:
    
        if (r15 == r1) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(android.content.Context r14, defpackage.f02 r15) throws java.lang.Throwable {
        /*
            r13 = this;
            boolean r0 = r15 instanceof yads.in2
            if (r0 == 0) goto L13
            r0 = r15
            yads.in2 r0 = (yads.in2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            yads.in2 r0 = new yads.in2
            r0.<init>(r13, r15)
        L18:
            java.lang.Object r15 = r0.b
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L36
            if (r2 == r4) goto L32
            if (r2 != r3) goto L2c
            defpackage.r57.b(r15)
            goto Laf
        L2c:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r13)
            return r5
        L32:
            defpackage.r57.b(r15)
            goto L8d
        L36:
            defpackage.r57.b(r15)
            yads.e4 r15 = r13.a
            yads.ma r15 = r15.c
            java.lang.String r15 = r15.a
            yads.na r2 = r13.c
            yads.dt r2 = r2.a
            java.util.ArrayList r2 = r2.b
            java.util.Iterator r2 = r2.iterator()
        L49:
            boolean r6 = r2.hasNext()
            if (r6 == 0) goto L5f
            java.lang.Object r6 = r2.next()
            r7 = r6
            yads.la r7 = (yads.la) r7
            java.lang.String r7 = r7.b
            boolean r7 = defpackage.aa4.e(r7, r15)
            if (r7 == 0) goto L49
            goto L60
        L5f:
            r6 = r5
        L60:
            yads.la r6 = (yads.la) r6
            if (r6 == 0) goto Lb6
            java.util.ArrayList r9 = r6.c
            yads.e4 r15 = r13.a
            yads.n70 r2 = r15.a
            yads.n70 r6 = yads.n70.BANNER
            if (r2 != r6) goto L95
            yads.tl5 r15 = r15.d
            yads.sl5 r12 = r15.a
            if (r12 == 0) goto L94
            yads.ao4 r11 = r13.d
            r0.d = r4
            r11.getClass()
            oi2 r15 = defpackage.qo2.a
            sh2 r15 = defpackage.sh2.c
            yads.zn4 r7 = new yads.zn4
            r10 = 0
            r8 = r14
            r7.<init>(r8, r9, r10, r11, r12)
            java.lang.Object r15 = defpackage.av0.d(r15, r7, r0)
            if (r15 != r1) goto L8d
            goto Lae
        L8d:
            org.json.JSONArray r15 = (org.json.JSONArray) r15
            java.lang.String r13 = r13.a(r15)
            return r13
        L94:
            return r5
        L95:
            r8 = r14
            yads.ao4 r11 = r13.d
            r0.d = r3
            r11.getClass()
            oi2 r14 = defpackage.qo2.a
            sh2 r14 = defpackage.sh2.c
            yads.zn4 r7 = new yads.zn4
            r10 = 0
            r12 = 0
            r7.<init>(r8, r9, r10, r11, r12)
            java.lang.Object r15 = defpackage.av0.d(r14, r7, r0)
            if (r15 != r1) goto Laf
        Lae:
            return r1
        Laf:
            org.json.JSONArray r15 = (org.json.JSONArray) r15
            java.lang.String r13 = r13.a(r15)
            return r13
        Lb6:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.jn2.a(android.content.Context, f02):java.lang.Object");
    }

    public final String a(JSONArray jSONArray) {
        if (jSONArray.length() <= 0) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("networks", jSONArray);
            xo xoVar = this.b;
            String string = jSONObject.toString();
            xoVar.getClass();
            return xo.a(string);
        } catch (JSONException unused) {
            return null;
        }
    }
}
