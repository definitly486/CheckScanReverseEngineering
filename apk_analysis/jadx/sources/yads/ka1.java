package yads;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ka1 implements p41 {
    public final s21 A;
    public final s21 B;
    public final List C;
    public final List D;
    public final List E;
    public final as2 F;
    public final si2 G;
    public final List H;
    public final x02 I;
    public final mr0 a;
    public final as2 b;
    public final as2 c;
    public final as2 d;
    public final List e;
    public final List f;
    public final f51 g;
    public final as2 h;
    public final JSONObject i;
    public final String j;
    public final List k;
    public final List l;
    public final hf1 m;
    public final List n;
    public final x02 o;
    public final String p;
    public final List q;
    public final to1 r;
    public final yc1 s;
    public final yc1 t;
    public final as2 u;
    public final as2 v;
    public final List w;
    public final List x;
    public final bd2 y;
    public final j61 z;

    static {
        ri2 ri2Var = ri2.VISIBLE;
    }

    public ka1(mr0 mr0Var, as2 as2Var, as2 as2Var2, as2 as2Var3, List list, List list2, f51 f51Var, as2 as2Var4, JSONObject jSONObject, String str, List list3, List list4, hf1 hf1Var, List list5, x02 x02Var, String str2, List list6, to1 to1Var, yc1 yc1Var, yc1 yc1Var2, as2 as2Var5, as2 as2Var6, List list7, List list8, bd2 bd2Var, j61 j61Var, s21 s21Var, s21 s21Var2, List list9, List list10, List list11, as2 as2Var7, si2 si2Var, List list12, x02 x02Var2) {
        this.a = mr0Var;
        this.b = as2Var;
        this.c = as2Var2;
        this.d = as2Var3;
        this.e = list;
        this.f = list2;
        this.g = f51Var;
        this.h = as2Var4;
        this.i = jSONObject;
        this.j = str;
        this.k = list3;
        this.l = list4;
        this.m = hf1Var;
        this.n = list5;
        this.o = x02Var;
        this.p = str2;
        this.q = list6;
        this.r = to1Var;
        this.s = yc1Var;
        this.t = yc1Var2;
        this.u = as2Var5;
        this.v = as2Var6;
        this.w = list7;
        this.x = list8;
        this.y = bd2Var;
        this.z = j61Var;
        this.A = s21Var;
        this.B = s21Var2;
        this.C = list9;
        this.D = list10;
        this.E = list11;
        this.F = as2Var7;
        this.G = si2Var;
        this.H = list12;
        this.I = x02Var2;
    }

    @Override // yads.p41
    public final s21 A() {
        return this.B;
    }

    @Override // yads.p41
    public final j61 B() {
        return this.z;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x014c  */
    /* JADX WARN: Code duplicated, block: B:103:0x0154  */
    /* JADX WARN: Code duplicated, block: B:106:0x0164 A[LOOP:2: B:99:0x0146->B:106:0x0164, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:109:0x016a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:110:0x016c  */
    /* JADX WARN: Code duplicated, block: B:112:0x0172  */
    /* JADX WARN: Code duplicated, block: B:113:0x0174 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:114:0x0175  */
    /* JADX WARN: Code duplicated, block: B:120:0x018c  */
    /* JADX WARN: Code duplicated, block: B:122:0x0194  */
    /* JADX WARN: Code duplicated, block: B:125:0x01a4 A[LOOP:3: B:118:0x0186->B:125:0x01a4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:128:0x01aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:131:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:132:0x01b7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:133:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:134:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:136:0x01be  */
    /* JADX WARN: Code duplicated, block: B:138:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:139:0x01c6 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:140:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:146:0x01de  */
    /* JADX WARN: Code duplicated, block: B:148:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:151:0x01f6 A[LOOP:4: B:144:0x01d8->B:151:0x01f6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:154:0x01fc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:155:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:157:0x0208  */
    /* JADX WARN: Code duplicated, block: B:161:0x0218  */
    /* JADX WARN: Code duplicated, block: B:162:0x021a A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:163:0x021b  */
    /* JADX WARN: Code duplicated, block: B:169:0x0232  */
    /* JADX WARN: Code duplicated, block: B:171:0x023a  */
    /* JADX WARN: Code duplicated, block: B:174:0x024a A[LOOP:5: B:167:0x022c->B:174:0x024a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:177:0x0250 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:178:0x0252  */
    /* JADX WARN: Code duplicated, block: B:180:0x0258  */
    /* JADX WARN: Code duplicated, block: B:181:0x025d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:182:0x025f  */
    /* JADX WARN: Code duplicated, block: B:183:0x0261  */
    /* JADX WARN: Code duplicated, block: B:185:0x0264  */
    /* JADX WARN: Code duplicated, block: B:187:0x026a  */
    /* JADX WARN: Code duplicated, block: B:188:0x026f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:189:0x0271  */
    /* JADX WARN: Code duplicated, block: B:190:0x0273  */
    /* JADX WARN: Code duplicated, block: B:192:0x0276  */
    /* JADX WARN: Code duplicated, block: B:194:0x027c  */
    /* JADX WARN: Code duplicated, block: B:195:0x0281 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:196:0x0283  */
    /* JADX WARN: Code duplicated, block: B:197:0x0285  */
    /* JADX WARN: Code duplicated, block: B:199:0x0288  */
    /* JADX WARN: Code duplicated, block: B:201:0x028c  */
    /* JADX WARN: Code duplicated, block: B:202:0x0293  */
    /* JADX WARN: Code duplicated, block: B:205:0x0298  */
    /* JADX WARN: Code duplicated, block: B:206:0x029f  */
    /* JADX WARN: Code duplicated, block: B:209:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:211:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:212:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:215:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:216:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:219:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:221:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:222:0x02cc A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:223:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:229:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:231:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:234:0x02fc A[LOOP:6: B:227:0x02de->B:234:0x02fc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:237:0x0302 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:238:0x0304  */
    /* JADX WARN: Code duplicated, block: B:240:0x030a  */
    /* JADX WARN: Code duplicated, block: B:241:0x030c A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:242:0x030d  */
    /* JADX WARN: Code duplicated, block: B:248:0x0324  */
    /* JADX WARN: Code duplicated, block: B:250:0x032c  */
    /* JADX WARN: Code duplicated, block: B:253:0x033c A[LOOP:7: B:246:0x031e->B:253:0x033c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:256:0x0342 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:257:0x0344  */
    /* JADX WARN: Code duplicated, block: B:259:0x034a  */
    /* JADX WARN: Code duplicated, block: B:260:0x034f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:261:0x0351  */
    /* JADX WARN: Code duplicated, block: B:262:0x0353  */
    /* JADX WARN: Code duplicated, block: B:264:0x0356  */
    /* JADX WARN: Code duplicated, block: B:266:0x035c  */
    /* JADX WARN: Code duplicated, block: B:267:0x0361 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:268:0x0363  */
    /* JADX WARN: Code duplicated, block: B:269:0x0365  */
    /* JADX WARN: Code duplicated, block: B:271:0x0368  */
    /* JADX WARN: Code duplicated, block: B:273:0x036e  */
    /* JADX WARN: Code duplicated, block: B:274:0x0373 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:275:0x0375  */
    /* JADX WARN: Code duplicated, block: B:276:0x0377  */
    /* JADX WARN: Code duplicated, block: B:278:0x037a  */
    /* JADX WARN: Code duplicated, block: B:280:0x0380  */
    /* JADX WARN: Code duplicated, block: B:281:0x0385 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:282:0x0387  */
    /* JADX WARN: Code duplicated, block: B:283:0x0389  */
    /* JADX WARN: Code duplicated, block: B:285:0x038c  */
    /* JADX WARN: Code duplicated, block: B:287:0x0392  */
    /* JADX WARN: Code duplicated, block: B:288:0x0394 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:289:0x0395  */
    /* JADX WARN: Code duplicated, block: B:295:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:297:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:299:0x03be A[LOOP:8: B:293:0x03a6->B:299:0x03be, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:302:0x03c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:303:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:305:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:306:0x03ce A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:307:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:313:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:315:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:318:0x03fe A[LOOP:9: B:311:0x03e0->B:318:0x03fe, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:321:0x0404 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:322:0x0406  */
    /* JADX WARN: Code duplicated, block: B:324:0x040c  */
    /* JADX WARN: Code duplicated, block: B:325:0x040e A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:326:0x040f  */
    /* JADX WARN: Code duplicated, block: B:332:0x0426  */
    /* JADX WARN: Code duplicated, block: B:334:0x042e  */
    /* JADX WARN: Code duplicated, block: B:337:0x043e A[LOOP:10: B:330:0x0420->B:337:0x043e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:340:0x0444 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:341:0x0446  */
    /* JADX WARN: Code duplicated, block: B:343:0x0454  */
    /* JADX WARN: Code duplicated, block: B:345:0x045a  */
    /* JADX WARN: Code duplicated, block: B:346:0x045f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:347:0x0461  */
    /* JADX WARN: Code duplicated, block: B:348:0x0463  */
    /* JADX WARN: Code duplicated, block: B:350:0x0466  */
    /* JADX WARN: Code duplicated, block: B:352:0x046c  */
    /* JADX WARN: Code duplicated, block: B:353:0x046e A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:354:0x046f  */
    /* JADX WARN: Code duplicated, block: B:360:0x0485  */
    /* JADX WARN: Code duplicated, block: B:362:0x048d  */
    /* JADX WARN: Code duplicated, block: B:365:0x049c A[LOOP:11: B:358:0x047f->B:365:0x049c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:368:0x04a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:369:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:371:0x04ae A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:376:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:378:0x00e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:380:0x0166 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:381:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:383:0x01a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:384:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:386:0x01f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:387:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:389:0x024c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:390:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:392:0x02fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:393:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:395:0x033e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:396:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:398:0x03c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:399:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:401:0x0400 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:402:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:404:0x0440 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:405:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:407:0x049e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:408:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:63:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:66:0x00e0 A[LOOP:1: B:59:0x00c2->B:66:0x00e0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:69:0x00e6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:77:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:79:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:80:0x0105  */
    /* JADX WARN: Code duplicated, block: B:83:0x010a  */
    /* JADX WARN: Code duplicated, block: B:84:0x0111  */
    /* JADX WARN: Code duplicated, block: B:87:0x0118  */
    /* JADX WARN: Code duplicated, block: B:93:0x0132  */
    /* JADX WARN: Code duplicated, block: B:94:0x0134 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:95:0x0135  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Iterative traversal limit reached: limit: 1930, visitor: jadx.core.dex.visitors.regions.IfRegionVisitor$RemoveRedundantElseVisitor, blocks count: 386
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:51)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:46)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    public final boolean a(yads.ka1 r9, yads.fs2 r10, yads.fs2 r11) {
        /*
            Method dump skipped, instruction units count: 1200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.ka1.a(yads.ka1, yads.fs2, yads.fs2):boolean");
    }

    @Override // yads.p41
    public final List b() {
        return this.k;
    }

    @Override // yads.p41
    public final List c() {
        return this.C;
    }

    @Override // yads.p41
    public final List d() {
        return this.w;
    }

    @Override // yads.p41
    public final List e() {
        return this.f;
    }

    @Override // yads.p41
    public final as2 f() {
        return this.b;
    }

    @Override // yads.p41
    public final to1 g() {
        return this.r;
    }

    @Override // yads.p41
    public final List getExtensions() {
        return this.l;
    }

    @Override // yads.p41
    public final x02 getHeight() {
        return this.o;
    }

    @Override // yads.p41
    public final as2 getVisibility() {
        return this.F;
    }

    @Override // yads.p41
    public final x02 getWidth() {
        return this.I;
    }

    @Override // yads.p41
    public final as2 h() {
        return this.u;
    }

    @Override // yads.p41
    public final List i() {
        return this.D;
    }

    @Override // yads.p41
    public final List j() {
        return this.x;
    }

    @Override // yads.p41
    public final si2 k() {
        return this.G;
    }

    @Override // yads.p41
    public final bd2 l() {
        return this.y;
    }

    @Override // yads.p41
    public final List m() {
        return this.H;
    }

    @Override // yads.p41
    public final mr0 n() {
        return this.a;
    }

    @Override // yads.p41
    public final List o() {
        return this.n;
    }

    @Override // yads.p41
    public final as2 p() {
        return this.h;
    }

    @Override // yads.p41
    public final as2 q() {
        return this.c;
    }

    @Override // yads.p41
    public final s21 r() {
        return this.A;
    }

    @Override // yads.p41
    public final List s() {
        return this.E;
    }

    @Override // yads.p41
    public final List t() {
        return this.e;
    }

    @Override // yads.p41
    public final as2 u() {
        return this.d;
    }

    @Override // yads.p41
    public final yc1 v() {
        return this.s;
    }

    @Override // yads.p41
    public final f51 w() {
        return this.g;
    }

    @Override // yads.p41
    public final as2 x() {
        return this.v;
    }

    @Override // yads.p41
    public final yc1 y() {
        return this.t;
    }

    @Override // yads.p41
    public final hf1 z() {
        return this.m;
    }

    public static ka1 a(ka1 ka1Var, String str, ArrayList arrayList, int i) {
        return new ka1(ka1Var.a, ka1Var.b, ka1Var.c, ka1Var.d, ka1Var.e, ka1Var.f, ka1Var.g, ka1Var.h, ka1Var.i, ka1Var.j, ka1Var.k, ka1Var.l, ka1Var.m, ka1Var.n, ka1Var.o, (i & 32768) != 0 ? ka1Var.p : str, (i & 65536) != 0 ? ka1Var.q : arrayList, ka1Var.r, ka1Var.s, ka1Var.t, ka1Var.u, ka1Var.v, ka1Var.w, ka1Var.x, ka1Var.y, ka1Var.z, ka1Var.A, ka1Var.B, ka1Var.C, ka1Var.D, ka1Var.E, ka1Var.F, ka1Var.G, ka1Var.H, ka1Var.I);
    }

    @Override // yads.p41
    public final String a() {
        return this.p;
    }
}
