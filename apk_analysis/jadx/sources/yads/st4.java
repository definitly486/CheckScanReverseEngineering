package yads;

import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: loaded from: classes6.dex */
public final class st4 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ tt4 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public st4(tt4 tt4Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = tt4Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        st4 st4Var = new st4(this.d, e02Var);
        st4Var.c = obj;
        return st4Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        st4 st4Var = new st4(this.d, (defpackage.e02) obj2);
        st4Var.c = (defpackage.y22) obj;
        return st4Var.invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0028  */
    /* JADX WARN: Code duplicated, block: B:13:0x0030  */
    /* JADX WARN: Code duplicated, block: B:15:0x004f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:18:0x0071  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004d -> B:16:0x0050). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r10.b
            r2 = 0
            r4 = 1
            if (r1 == 0) goto L1a
            if (r1 != r4) goto L13
            java.lang.Object r1 = r10.c
            y22 r1 = (defpackage.y22) r1
            defpackage.r57.b(r11)
            goto L50
        L13:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r10)
            r10 = 0
            return r10
        L1a:
            defpackage.r57.b(r11)
            java.lang.Object r11 = r10.c
            y22 r11 = (defpackage.y22) r11
            r1 = r11
        L22:
            boolean r11 = defpackage.z22.e(r1)
            if (r11 == 0) goto L7a
            yads.tt4 r11 = r10.d
            long r5 = r11.f
            int r11 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r11 <= 0) goto L7a
            r7 = 200(0xc8, double:9.9E-322)
            long r5 = java.lang.Math.min(r7, r5)
            yads.tt4 r11 = r10.d
            yads.ax5 r7 = r11.b
            cg r7 = (defpackage.cg) r7
            r7.getClass()
            long r7 = yads.qt4.a()
            r11.h = r7
            r10.c = r1
            r10.b = r4
            java.lang.Object r11 = defpackage.yk2.b(r5, r10)
            if (r11 != r0) goto L50
            return r0
        L50:
            yads.tt4 r11 = r10.d
            yads.ax5 r11 = r11.b
            cg r11 = (defpackage.cg) r11
            r11.getClass()
            long r5 = yads.qt4.a()
            yads.tt4 r11 = r10.d
            long r7 = r11.h
            long r5 = r5 - r7
            long r7 = r11.f
            long r7 = r7 - r5
            long r5 = java.lang.Math.max(r2, r7)
            r11.f = r5
            yads.tt4 r11 = r10.d
            yads.tx5 r5 = r11.e
            if (r5 == 0) goto L22
            long r6 = r11.f
            long r8 = r11.g
            long r8 = r8 - r6
            r5.a(r6, r8)
            goto L22
        L7a:
            boolean r11 = defpackage.z22.e(r1)
            if (r11 == 0) goto L8e
            yads.tt4 r11 = r10.d
            yads.ut4 r11 = r11.d
            if (r11 == 0) goto L89
            r11.mo9532a()
        L89:
            yads.tt4 r10 = r10.d
            r10.a()
        L8e:
            j59 r10 = defpackage.j59.a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.st4.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
