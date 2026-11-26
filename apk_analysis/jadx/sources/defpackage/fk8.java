package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fk8 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ fk8(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
    
        if (r6 == false) goto L23;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r6 = this;
            int r0 = r6.b
            java.lang.Object r1 = r6.d
            java.lang.Object r6 = r6.c
            switch(r0) {
                case 0: goto L76;
                case 1: goto L6e;
                default: goto L9;
            }
        L9:
            com.my.target.e2$e r6 = (com.my.target.e2.e) r6
            android.content.Context r1 = (android.content.Context) r1
            java.lang.String r0 = r6.b
            com.my.target.h2 r2 = new com.my.target.h2
            r2.<init>(r6)
            java.util.WeakHashMap r3 = com.my.target.e2.e
            dha r3 = r6.c
            android.net.Uri r4 = android.net.Uri.parse(r0)
            ao9 r6 = r6.a
            pp9 r5 = r6.Q
            boolean r2 = r3.a(r2, r4, r5, r1)
            if (r2 != 0) goto L29
            r3.a()
        L29:
            if (r2 == 0) goto L2c
            goto L6d
        L2c:
            r3.a()
            java.lang.String r6 = r6.m
            java.lang.String r2 = "store"
            boolean r6 = r2.equals(r6)
            if (r6 != 0) goto L69
            int r6 = android.os.Build.VERSION.SDK_INT
            r2 = 28
            if (r6 < r2) goto L4e
            boolean r6 = android.text.TextUtils.isEmpty(r0)
            if (r6 == 0) goto L47
            r6 = 0
            goto L4b
        L47:
            boolean r6 = android.webkit.URLUtil.isHttpsUrl(r0)
        L4b:
            if (r6 != 0) goto L4e
            goto L69
        L4e:
            com.my.target.e2$f r6 = new com.my.target.e2$f
            r6.<init>(r0)
            com.my.target.common.MyTargetActivity.f = r6
            android.content.Intent r6 = new android.content.Intent
            java.lang.Class<com.my.target.common.MyTargetActivity> r0 = com.my.target.common.MyTargetActivity.class
            r6.<init>(r1, r0)
            boolean r0 = r1 instanceof android.app.Activity
            if (r0 != 0) goto L65
            r0 = 268435456(0x10000000, float:2.5243549E-29)
            r6.addFlags(r0)
        L65:
            r1.startActivity(r6)
            goto L6d
        L69:
            r6 = 0
            defpackage.y14.n(r1, r0, r6, r6, r6)
        L6d:
            return
        L6e:
            androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher r6 = (androidx.media3.exoplayer.video.VideoRendererEventListener.EventDispatcher) r6
            java.lang.Exception r1 = (java.lang.Exception) r1
            androidx.media3.exoplayer.video.VideoRendererEventListener.EventDispatcher.b(r6, r1)
            return
        L76:
            androidx.camera.core.imagecapture.TakePictureRequest r6 = (androidx.camera.core.imagecapture.TakePictureRequest) r6
            androidx.camera.core.ImageCapture$OutputFileResults r1 = (androidx.camera.core.ImageCapture.OutputFileResults) r1
            androidx.camera.core.imagecapture.TakePictureRequest.b(r6, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fk8.run():void");
    }
}
