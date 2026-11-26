package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class le {
    public final ke a;
    public final j75 b;
    public final lg c;

    public le(Context context) {
        ke keVar;
        ke keVar2 = me.a;
        if (keVar2 == null) {
            synchronized (ke.c) {
                Context contextA = w60.a(context);
                keVar = me.a;
                if (keVar == null) {
                    keVar = new ke(contextA);
                    me.a = keVar;
                }
            }
            keVar2 = keVar;
        }
        j75 j75Var = new j75();
        lg lgVar = new lg(context);
        this.a = keVar2;
        this.b = j75Var;
        this.c = lgVar;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:42:0x0044
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public final void a(yads.e75 r5, java.util.Map r6, java.lang.String r7, yads.j5 r8) {
        /*
            r4 = this;
            yads.lg r0 = r4.c
            yads.zg5 r1 = r0.a
            android.content.Context r2 = r0.b
            yads.fe5 r1 = r1.a(r2)
            if (r1 == 0) goto L12
            boolean r1 = r1.t0
            if (r1 != 0) goto L12
            r1 = 1
            goto L13
        L12:
            r1 = 0
        L13:
            yads.zg5 r2 = r0.a
            java.lang.Object r3 = yads.zg5.k
            monitor-enter(r3)
            boolean r2 = r2.h     // Catch: java.lang.Throwable -> L9d
            monitor-exit(r3)
            boolean r0 = r0.a()
            if (r0 == 0) goto L9c
            if (r1 != 0) goto L9c
            if (r2 == 0) goto L9c
            yads.j75 r0 = r4.b
            r0.getClass()
            r0 = 0
            int r5 = r5.ordinal()     // Catch: java.lang.Throwable -> L44
            if (r5 == 0) goto L82
            r1 = 4
            if (r5 == r1) goto L76
            r1 = 8
            if (r5 == r1) goto L6a
            r1 = 21
            if (r5 == r1) goto L5e
            r8 = 26
            if (r5 == r8) goto L52
            r8 = 35
            if (r5 == r8) goto L46
        L44:
            r5 = r0
            goto L8d
        L46:
            yads.rf r5 = new yads.rf     // Catch: java.lang.Throwable -> L44
            yads.sf r8 = yads.sf.AD_REWARD     // Catch: java.lang.Throwable -> L44
            org.json.JSONObject r6 = yads.j75.d(r7, r6)     // Catch: java.lang.Throwable -> L44
            r5.<init>(r8, r6)     // Catch: java.lang.Throwable -> L44
            goto L8d
        L52:
            yads.rf r5 = new yads.rf     // Catch: java.lang.Throwable -> L44
            yads.sf r8 = yads.sf.AD_CLICK     // Catch: java.lang.Throwable -> L44
            org.json.JSONObject r6 = yads.j75.b(r7, r6)     // Catch: java.lang.Throwable -> L44
            r5.<init>(r8, r6)     // Catch: java.lang.Throwable -> L44
            goto L8d
        L5e:
            yads.rf r5 = new yads.rf     // Catch: java.lang.Throwable -> L44
            yads.sf r1 = yads.sf.AD_IMPRESSION     // Catch: java.lang.Throwable -> L44
            org.json.JSONObject r6 = yads.j75.a(r6, r8, r7)     // Catch: java.lang.Throwable -> L44
            r5.<init>(r1, r6)     // Catch: java.lang.Throwable -> L44
            goto L8d
        L6a:
            yads.rf r5 = new yads.rf     // Catch: java.lang.Throwable -> L44
            yads.sf r7 = yads.sf.AD_REQUEST     // Catch: java.lang.Throwable -> L44
            org.json.JSONObject r6 = yads.j75.a(r6)     // Catch: java.lang.Throwable -> L44
            r5.<init>(r7, r6)     // Catch: java.lang.Throwable -> L44
            goto L8d
        L76:
            yads.rf r5 = new yads.rf     // Catch: java.lang.Throwable -> L44
            yads.sf r8 = yads.sf.AD_ATTEMPT     // Catch: java.lang.Throwable -> L44
            org.json.JSONObject r6 = yads.j75.a(r7, r6)     // Catch: java.lang.Throwable -> L44
            r5.<init>(r8, r6)     // Catch: java.lang.Throwable -> L44
            goto L8d
        L82:
            yads.rf r5 = new yads.rf     // Catch: java.lang.Throwable -> L44
            yads.sf r8 = yads.sf.AD_FILLED_REQUEST     // Catch: java.lang.Throwable -> L44
            org.json.JSONObject r6 = yads.j75.c(r7, r6)     // Catch: java.lang.Throwable -> L44
            r5.<init>(r8, r6)     // Catch: java.lang.Throwable -> L44
        L8d:
            if (r5 == 0) goto L9c
            yads.ke r4 = r4.a
            y22 r6 = r4.b
            yads.je r7 = new yads.je
            r7.<init>(r4, r5, r0)
            r4 = 3
            defpackage.av0.c(r6, r0, r0, r7, r4)
        L9c:
            return
        L9d:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.le.a(yads.e75, java.util.Map, java.lang.String, yads.j5):void");
    }
}
