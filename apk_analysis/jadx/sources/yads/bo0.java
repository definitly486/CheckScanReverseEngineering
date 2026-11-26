package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class bo0 {
    public final ed5 a = new ed5();

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
    
        if (r5.getCurrentModeType() == 4) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
    
        if (r5 == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0062, code lost:
    
        return yads.ao0.TV;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final yads.ao0 a(android.content.Context r6) {
        /*
            r5 = this;
            android.content.res.Resources r0 = r6.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            yads.ed5 r5 = r5.a
            android.graphics.Point r5 = r5.a(r6)
            int r1 = r5.x
            int r5 = r5.y
            float r0 = r0.density
            float r1 = (float) r1
            float r2 = r1 / r0
            float r5 = (float) r5
            float r3 = r5 / r0
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 <= 0) goto L1f
            r2 = r3
        L1f:
            r3 = 1126170624(0x43200000, float:160.0)
            float r0 = r0 * r3
            float r1 = r1 / r0
            float r5 = r5 / r0
            float r1 = r1 * r1
            float r5 = r5 * r5
            float r5 = r5 + r1
            double r0 = (double) r5
            double r0 = java.lang.Math.sqrt(r0)
            r5 = 13
            boolean r5 = yads.za.a(r5)
            if (r5 == 0) goto L4c
            java.lang.String r5 = "uimode"
            java.lang.Object r5 = r6.getSystemService(r5)
            boolean r6 = r5 instanceof android.app.UiModeManager
            if (r6 == 0) goto L41
            android.app.UiModeManager r5 = (android.app.UiModeManager) r5
            goto L42
        L41:
            r5 = 0
        L42:
            if (r5 == 0) goto L63
            int r5 = r5.getCurrentModeType()
            r6 = 4
            if (r5 != r6) goto L63
            goto L60
        L4c:
            r3 = 4624633867356078080(0x402e000000000000, double:15.0)
            int r5 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r5 < 0) goto L63
            java.lang.String r5 = "android.hardware.touchscreen"
            android.content.pm.PackageManager r6 = r6.getPackageManager()     // Catch: java.lang.Throwable -> L5d
            boolean r5 = r6.hasSystemFeature(r5)     // Catch: java.lang.Throwable -> L5d
            goto L5e
        L5d:
            r5 = 0
        L5e:
            if (r5 != 0) goto L63
        L60:
            yads.ao0 r5 = yads.ao0.TV
            return r5
        L63:
            r5 = 4619567317775286272(0x401c000000000000, double:7.0)
            int r5 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r5 >= 0) goto L73
            r5 = 1142292480(0x44160000, float:600.0)
            int r5 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r5 < 0) goto L70
            goto L73
        L70:
            yads.ao0 r5 = yads.ao0.PHONE
            goto L75
        L73:
            yads.ao0 r5 = yads.ao0.TABLET
        L75:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.bo0.a(android.content.Context):yads.ao0");
    }
}
