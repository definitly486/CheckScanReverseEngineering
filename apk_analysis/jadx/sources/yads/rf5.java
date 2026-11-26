package yads;

import android.content.Context;
import defpackage.ib7;
import defpackage.j59;
import defpackage.r57;
import io.appmetrica.analytics.AppMetrica;

/* JADX INFO: loaded from: classes6.dex */
public final class rf5 {
    public static final Object w = new Object();
    public static volatile boolean x;
    public final Context a;
    public final bf5 b;
    public final defpackage.y22 c;
    public final t5 d;
    public final wn2 e;
    public final ed f;
    public final zg5 g;
    public final Context h;
    public final sb3 i;
    public final sd j;
    public final oe5 k;
    public final qh l;
    public final j4 m;
    public final ih5 n;
    public final tf5 o;
    public final xe p;
    public final qj2 q;
    public final ie r;
    public final com.monetization.ads.mediation.base.initialize.a s;
    public final qz2 t;
    public final ts3 u;
    public final rb3 v;

    public rf5(Context context, bf5 bf5Var, defpackage.y22 y22Var, t5 t5Var, wn2 wn2Var, ed edVar, int i) {
        wn2 wn2Var2;
        wn2 wn2Var3;
        if ((i & 16) != 0) {
            wn2 wn2Var4 = wn2.c;
            if (wn2Var4 == null) {
                synchronized (wn2.d) {
                    wn2Var3 = wn2.c;
                    if (wn2Var3 == null) {
                        wn2Var3 = new wn2(context.getApplicationContext());
                        wn2.c = wn2Var3;
                    }
                }
                wn2Var2 = wn2Var3;
            } else {
                wn2Var2 = wn2Var4;
            }
        } else {
            wn2Var2 = wn2Var;
        }
        ed edVar2 = (i & 32) != 0 ? new ed() : edVar;
        zg5 zg5VarA = yg5.a();
        Context applicationContext = context.getApplicationContext();
        sb3 sb3Var = new sb3(wn2Var2);
        sd sdVar = new sd();
        do6 do6Var = (do6) bf5Var;
        Context context2 = do6Var.a;
        oe5 oe5Var = new oe5(applicationContext, t5Var, edVar2, wn2Var2, mw.a(context2, context2));
        qh qhVar = new qh(applicationContext, bf5Var);
        j4 j4Var = new j4();
        ih5 ih5Var = new ih5(applicationContext);
        Context context3 = do6Var.a;
        q84 q84VarA = mw.a(context3, context3);
        Boolean bool = (Boolean) gw3.a(context, hw3.SINGLE_ASSEMBLY_ENABLED.b);
        tf5 tf5Var = new tf5(q84VarA, bool != null ? bool.booleanValue() : false, t5Var);
        xe xeVar = new xe();
        qj2 qj2Var = new qj2(context, t5Var);
        ie ieVar = new ie(context);
        com.monetization.ads.mediation.base.initialize.a aVar = new com.monetization.ads.mediation.base.initialize.a(bf5Var);
        Context context4 = do6Var.a;
        qz2 qz2Var = new qz2(applicationContext, mw.a(context4, context4));
        Context context5 = do6Var.a;
        ts3 ts3Var = new ts3(applicationContext, mw.a(context5, context5), 110);
        this.a = context;
        this.b = bf5Var;
        this.c = y22Var;
        this.d = t5Var;
        this.e = wn2Var2;
        this.f = edVar2;
        this.g = zg5VarA;
        this.h = applicationContext;
        this.i = sb3Var;
        this.j = sdVar;
        this.k = oe5Var;
        this.l = qhVar;
        this.m = j4Var;
        this.n = ih5Var;
        this.o = tf5Var;
        this.p = xeVar;
        this.q = qj2Var;
        this.r = ieVar;
        this.s = aVar;
        this.t = qz2Var;
        this.u = ts3Var;
        this.v = new rb3(wn2Var2.a, new c5());
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0325  */
    /* JADX WARN: Code duplicated, block: B:106:0x0341  */
    /* JADX WARN: Code duplicated, block: B:108:0x0345  */
    /* JADX WARN: Code duplicated, block: B:110:0x0352  */
    /* JADX WARN: Code duplicated, block: B:111:0x035c  */
    /* JADX WARN: Code duplicated, block: B:114:0x037e  */
    /* JADX WARN: Code duplicated, block: B:115:0x0381  */
    /* JADX WARN: Code duplicated, block: B:119:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:120:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:122:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:124:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:125:0x03da  */
    /* JADX WARN: Code duplicated, block: B:128:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:132:0x0406  */
    /* JADX WARN: Code duplicated, block: B:138:0x0429  */
    /* JADX WARN: Code duplicated, block: B:141:0x0438  */
    /* JADX WARN: Code duplicated, block: B:142:0x043a A[Catch: all -> 0x04ae, TryCatch #1 {all -> 0x04ae, blocks: (B:139:0x0434, B:142:0x043a, B:145:0x044f, B:146:0x045b, B:149:0x0460, B:152:0x0479, B:154:0x048f, B:161:0x04a8, B:157:0x04a1), top: B:186:0x0434 }] */
    /* JADX WARN: Code duplicated, block: B:144:0x044e  */
    /* JADX WARN: Code duplicated, block: B:145:0x044f A[Catch: all -> 0x04ae, TRY_LEAVE, TryCatch #1 {all -> 0x04ae, blocks: (B:139:0x0434, B:142:0x043a, B:145:0x044f, B:146:0x045b, B:149:0x0460, B:152:0x0479, B:154:0x048f, B:161:0x04a8, B:157:0x04a1), top: B:186:0x0434 }] */
    /* JADX WARN: Code duplicated, block: B:148:0x045f  */
    /* JADX WARN: Code duplicated, block: B:149:0x0460 A[Catch: JSONException -> 0x0477, all -> 0x04ae, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0477, blocks: (B:146:0x045b, B:149:0x0460), top: B:184:0x045b }] */
    /* JADX WARN: Code duplicated, block: B:154:0x048f A[Catch: all -> 0x04ae, TryCatch #1 {all -> 0x04ae, blocks: (B:139:0x0434, B:142:0x043a, B:145:0x044f, B:146:0x045b, B:149:0x0460, B:152:0x0479, B:154:0x048f, B:161:0x04a8, B:157:0x04a1), top: B:186:0x0434 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x04a1 A[Catch: all -> 0x04ae, LOOP:2: B:153:0x048d->B:157:0x04a1, LOOP_END, TryCatch #1 {all -> 0x04ae, blocks: (B:139:0x0434, B:142:0x043a, B:145:0x044f, B:146:0x045b, B:149:0x0460, B:152:0x0479, B:154:0x048f, B:161:0x04a8, B:157:0x04a1), top: B:186:0x0434 }] */
    /* JADX WARN: Code duplicated, block: B:160:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:161:0x04a8 A[Catch: all -> 0x04ae, TRY_LEAVE, TryCatch #1 {all -> 0x04ae, blocks: (B:139:0x0434, B:142:0x043a, B:145:0x044f, B:146:0x045b, B:149:0x0460, B:152:0x0479, B:154:0x048f, B:161:0x04a8, B:157:0x04a1), top: B:186:0x0434 }] */
    /* JADX WARN: Code duplicated, block: B:169:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:171:0x04d5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:172:0x04d7  */
    /* JADX WARN: Code duplicated, block: B:173:0x04d9  */
    /* JADX WARN: Code duplicated, block: B:176:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:180:0x0539  */
    /* JADX WARN: Code duplicated, block: B:188:0x0318 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:0x0416 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x0400 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:0x04b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:198:0x0423 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:200:0x04a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x049f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:204:0x04fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x04fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x0224 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x0188  */
    /* JADX WARN: Code duplicated, block: B:54:0x019c A[PHI: r1 r4 r6 r8 r16
      0x019c: PHI (r1v17 java.lang.Object) = (r1v16 java.lang.Object), (r1v1 java.lang.Object) binds: [B:52:0x0198, B:18:0x0045] A[DONT_GENERATE, DONT_INLINE]
      0x019c: PHI (r4v8 yads.s5) = (r4v7 yads.s5), (r4v34 yads.s5) binds: [B:52:0x0198, B:18:0x0045] A[DONT_GENERATE, DONT_INLINE]
      0x019c: PHI (r6v7 yads.t5) = (r6v6 yads.t5), (r6v37 yads.t5) binds: [B:52:0x0198, B:18:0x0045] A[DONT_GENERATE, DONT_INLINE]
      0x019c: PHI (r8v8 yads.kg3) = (r8v7 yads.kg3), (r8v24 yads.kg3) binds: [B:52:0x0198, B:18:0x0045] A[DONT_GENERATE, DONT_INLINE]
      0x019c: PHI (r16v5 boolean) = (r16v4 boolean), (r16v13 boolean) binds: [B:52:0x0198, B:18:0x0045] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:58:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:60:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:64:0x0211  */
    /* JADX WARN: Code duplicated, block: B:66:0x0221  */
    /* JADX WARN: Code duplicated, block: B:71:0x0249 A[LOOP:5: B:69:0x0243->B:71:0x0249, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x0281  */
    /* JADX WARN: Code duplicated, block: B:75:0x0284  */
    /* JADX WARN: Code duplicated, block: B:78:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:85:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:87:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:88:0x0307  */
    /* JADX WARN: Code duplicated, block: B:91:0x030d  */
    /* JADX WARN: Code duplicated, block: B:96:0x031c  */
    /* JADX WARN: Code duplicated, block: B:97:0x031e A[Catch: all -> 0x033e, TRY_LEAVE, TryCatch #2 {, blocks: (B:94:0x0318, B:97:0x031e), top: B:188:0x0318 }] */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x02e1, code lost:
    
        if (r5.a(r2) == r3) goto L80;
     */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18, types: [c32, e02, o22] */
    /* JADX WARN: Type inference failed for: r8v19 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(yads.kg3 r29, defpackage.f02 r30) {
        /*
            Method dump skipped, instruction units count: 1343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.rf5.a(yads.kg3, f02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(kg3 kg3Var, defpackage.f02 f02Var) throws Throwable {
        of5 of5Var;
        t5 t5Var;
        s5 s5Var;
        if (f02Var instanceof of5) {
            of5Var = (of5) f02Var;
            int i = of5Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                of5Var.f = i - Integer.MIN_VALUE;
            } else {
                of5Var = new of5(this, f02Var);
            }
        } else {
            of5Var = new of5(this, f02Var);
        }
        Object obj = of5Var.d;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = of5Var.f;
        if (i2 == 0) {
            r57.b(obj);
            t5 t5Var2 = this.d;
            s5 s5Var2 = s5.SDK_CONFIGURATION_LOADING;
            t5Var2.a(s5Var2, null);
            oe5 oe5Var = this.k;
            of5Var.b = t5Var2;
            of5Var.c = s5Var2;
            of5Var.f = 1;
            oe5Var.getClass();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            Object objD = defpackage.av0.d(defpackage.sh2.c, new ne5(oe5Var, kg3Var, null), of5Var);
            if (objD == a32Var) {
                return a32Var;
            }
            t5Var = t5Var2;
            obj = objD;
            s5Var = s5Var2;
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            s5Var = of5Var.c;
            t5Var = of5Var.b;
            r57.b(obj);
        }
        ze5 ze5Var = (ze5) obj;
        t5Var.a(s5Var);
        return ze5Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(fe5 fe5Var, defpackage.f02 f02Var) {
        qf5 qf5Var;
        if (f02Var instanceof qf5) {
            qf5Var = (qf5) f02Var;
            int i = qf5Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                qf5Var.d = i - Integer.MIN_VALUE;
            } else {
                qf5Var = new qf5(this, f02Var);
            }
        } else {
            qf5Var = new qf5(this, f02Var);
        }
        Object obj = qf5Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = qf5Var.d;
        try {
            if (i2 == 0) {
                r57.b(obj);
                co5 co5Var = new co5(fe5Var, new ib7(new yl0(this.h, this.b, this.c), 3));
                qf5Var.d = 1;
                if (co5Var.a(qf5Var) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
        } catch (Exception unused) {
        }
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(defpackage.f02 f02Var) throws Throwable {
        pf5 pf5Var;
        t5 t5Var;
        s5 s5Var;
        if (f02Var instanceof pf5) {
            pf5Var = (pf5) f02Var;
            int i = pf5Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                pf5Var.f = i - Integer.MIN_VALUE;
            } else {
                pf5Var = new pf5(this, f02Var);
            }
        } else {
            pf5Var = new pf5(this, f02Var);
        }
        Object obj = pf5Var.d;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = pf5Var.f;
        if (i2 == 0) {
            r57.b(obj);
            t5 t5Var2 = this.d;
            s5 s5Var2 = s5.ADVERTISING_INFO_LOADING;
            t5Var2.a(s5Var2, null);
            sd sdVar = this.j;
            Context context = this.h;
            pf5Var.b = t5Var2;
            pf5Var.c = s5Var2;
            pf5Var.f = 1;
            sdVar.getClass();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            Object objD = defpackage.av0.d(defpackage.sh2.c, new rd(context, null), pf5Var);
            if (objD == a32Var) {
                return a32Var;
            }
            t5Var = t5Var2;
            obj = objD;
            s5Var = s5Var2;
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            s5Var = pf5Var.c;
            t5Var = pf5Var.b;
            r57.b(obj);
        }
        kd kdVar = (kd) obj;
        if (kdVar != null) {
            ed edVar = this.f;
            id idVar = kdVar.a;
            edVar.a = idVar;
            edVar.b = kdVar.b;
            edVar.c = kdVar.c;
            edVar.d = kdVar.d;
            if (idVar != null) {
                this.e.a.f = true;
            }
        }
        j59 j59Var = j59.a;
        t5Var.a(s5Var);
        return j59Var;
    }

    public final void a() {
        String strA;
        String uuid;
        String deviceId;
        t5 t5Var = this.d;
        s5 s5Var = s5.IDENTIFIERS_LOADING;
        t5Var.a(s5Var, null);
        tb3 tb3Var = this.i.a.b;
        fg fgVar = tb3Var.b.d;
        if (fgVar == null) {
            vg vgVar = tb3Var.a;
            vgVar.getClass();
            try {
                uuid = AppMetrica.getUuid(vgVar.b.a);
            } catch (Throwable unused) {
                uuid = null;
            }
            vg vgVar2 = tb3Var.a;
            vgVar2.getClass();
            try {
                deviceId = AppMetrica.getDeviceId(vgVar2.b.a);
            } catch (Throwable unused2) {
                deviceId = null;
            }
            fg fgVar2 = new fg(null, deviceId, uuid);
            ig igVar = tb3Var.b;
            defpackage.av0.c(igVar.c, null, null, new hg(igVar, tb3Var.c, null), 3);
            fgVar = fgVar2;
        }
        String str = tb3Var.e;
        ub3 ub3Var = tb3Var.d;
        rb3 rb3Var = this.v;
        Context context = this.h;
        rb3Var.getClass();
        c5 c5Var = rb3Var.b;
        int iOrdinal = ub3Var.ordinal();
        if (iOrdinal == 0) {
            strA = c5Var.a(context);
        } else if (iOrdinal != 1) {
            defpackage.me0.e();
            return;
        } else {
            strA = fgVar.a;
            if (strA == null) {
                strA = c5Var.a(context);
            }
        }
        vn2 vn2Var = rb3Var.a;
        vn2Var.e = strA;
        vn2Var.a = fgVar.b;
        String str2 = fgVar.c;
        synchronized (vn2.h) {
            if (str2 != null) {
                try {
                    if (str2.length() != 0) {
                        vn2Var.g = str2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            j59 j59Var = j59.a;
        }
        rb3Var.a.d = str;
        t5Var.a(s5Var);
    }

    public static final n13 a(yl0 yl0Var) {
        return yl0Var.a();
    }
}
