package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$loadBonusesBlocks$2", f = "BonusBlockInteractor.kt", l = {99}, m = "invokeSuspend")
public final class ym0 extends pg8 implements bm3<List<? extends ak0>, e02<? super j59>, Object> {
    public wl0 l;
    public Iterator m;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ wl0 s;
    public final /* synthetic */ boolean t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ym0(wl0 wl0Var, boolean z, e02<? super ym0> e02Var) {
        super(2, e02Var);
        this.s = wl0Var;
        this.t = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ym0 ym0Var = new ym0(this.s, this.t, e02Var);
        ym0Var.r = obj;
        return ym0Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(List<? extends ak0> list, e02<? super j59> e02Var) {
        return ((ym0) create(list, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0218  */
    /* JADX WARN: Code duplicated, block: B:103:0x0222  */
    /* JADX WARN: Code duplicated, block: B:110:0x0236  */
    /* JADX WARN: Code duplicated, block: B:111:0x023d  */
    /* JADX WARN: Code duplicated, block: B:114:0x0246 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:116:0x024c  */
    /* JADX WARN: Code duplicated, block: B:119:0x0256  */
    /* JADX WARN: Code duplicated, block: B:120:0x025a  */
    /* JADX WARN: Code duplicated, block: B:123:0x0264  */
    /* JADX WARN: Code duplicated, block: B:124:0x0268  */
    /* JADX WARN: Code duplicated, block: B:127:0x0272  */
    /* JADX WARN: Code duplicated, block: B:128:0x0275  */
    /* JADX WARN: Code duplicated, block: B:131:0x027e  */
    /* JADX WARN: Code duplicated, block: B:132:0x0281  */
    /* JADX WARN: Code duplicated, block: B:135:0x028a  */
    /* JADX WARN: Code duplicated, block: B:136:0x028d  */
    /* JADX WARN: Code duplicated, block: B:139:0x0296  */
    /* JADX WARN: Code duplicated, block: B:140:0x0299 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x029b  */
    /* JADX WARN: Code duplicated, block: B:145:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:146:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:149:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:150:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:153:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:154:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:157:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:159:0x02cd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:160:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:163:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:167:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:180:0x02fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x02ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x01eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x01c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:0x022b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:0x022c A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:36:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:38:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:40:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:42:0x0102  */
    /* JADX WARN: Code duplicated, block: B:45:0x0114  */
    /* JADX WARN: Code duplicated, block: B:47:0x0117  */
    /* JADX WARN: Code duplicated, block: B:48:0x0119 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x011b  */
    /* JADX WARN: Code duplicated, block: B:50:0x011e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0121  */
    /* JADX WARN: Code duplicated, block: B:52:0x0124  */
    /* JADX WARN: Code duplicated, block: B:53:0x0127  */
    /* JADX WARN: Code duplicated, block: B:55:0x012b  */
    /* JADX WARN: Code duplicated, block: B:56:0x012d  */
    /* JADX WARN: Code duplicated, block: B:58:0x0137 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:69:0x0174  */
    /* JADX WARN: Code duplicated, block: B:71:0x0180  */
    /* JADX WARN: Code duplicated, block: B:73:0x0186  */
    /* JADX WARN: Code duplicated, block: B:76:0x0197  */
    /* JADX WARN: Code duplicated, block: B:78:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:79:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:83:0x01b9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:88:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:90:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:91:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:96:0x01f5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:160:0x02ce -> B:161:0x02cf). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instruction units count: 844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ym0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
