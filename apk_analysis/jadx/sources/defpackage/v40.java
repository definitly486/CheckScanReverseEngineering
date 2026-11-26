package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor$subLoadPromotionsItems$1", f = "BalanceInteractor.kt", l = {371}, m = "invokeSuspend")
public final class v40 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public int m;
    public int n;
    public b40 o;
    public ArrayList p;
    public kx2 q;
    public ArrayList r;
    public boolean s;
    public int t;
    public final /* synthetic */ int u;
    public final /* synthetic */ b40 v;
    public final /* synthetic */ boolean w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v40(int i, b40 b40Var, boolean z, e02<? super v40> e02Var) {
        super(2, e02Var);
        this.u = i;
        this.v = b40Var;
        this.w = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new v40(this.u, this.v, this.w, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((v40) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0038  */
    /* JADX WARN: Code duplicated, block: B:17:0x004e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0080 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x0081  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a9 A[Catch: all -> 0x001e, LOOP:0: B:25:0x00a3->B:27:0x00a9, LOOP_END, TRY_LEAVE, TryCatch #1 {all -> 0x001e, blocks: (B:6:0x001a, B:24:0x0082, B:25:0x00a3, B:27:0x00a9), top: B:49:0x001a }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:53:0x00dd A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [k57$a] */
    /* JADX WARN: Type inference failed for: r11v1, types: [k57$a] */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0081 -> B:24:0x0082). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v40.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
