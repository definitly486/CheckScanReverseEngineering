package androidx.camera.camera2.pipe.compat;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2", f = "RetryingCameraStateOpener.kt", l = {670}, m = "invokeSuspend", v = 1)
public final class CameraStateOpener$tryOpenCamera$2 extends pg8 implements bm3<y22, e02<? super OpenCameraResult>, Object> {
    final /* synthetic */ String $cameraId;
    final /* synthetic */ AndroidCameraState $cameraState;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ CameraStateOpener this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2(CameraStateOpener cameraStateOpener, String str, AndroidCameraState androidCameraState, e02<? super CameraStateOpener$tryOpenCamera$2> e02Var) {
        super(2, e02Var);
        this.this$0 = cameraStateOpener;
        this.$cameraId = str;
        this.$cameraState = androidCameraState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CameraStateOpener$tryOpenCamera$2 cameraStateOpener$tryOpenCamera$2 = new CameraStateOpener$tryOpenCamera$2(this.this$0, this.$cameraId, this.$cameraState, e02Var);
        cameraStateOpener$tryOpenCamera$2.L$0 = obj;
        return cameraStateOpener$tryOpenCamera$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super OpenCameraResult> e02Var) {
        return ((CameraStateOpener$tryOpenCamera$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x008b A[Catch: all -> 0x0025, TRY_ENTER, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0020, B:30:0x00f3, B:15:0x008b, B:17:0x009e, B:18:0x00aa, B:20:0x00b0, B:21:0x00bc, B:23:0x00c2, B:24:0x00ce, B:26:0x00d4, B:27:0x00e0, B:32:0x00f7, B:34:0x00ff, B:35:0x0113, B:37:0x0119, B:38:0x011c, B:40:0x0122, B:41:0x0125, B:43:0x012b, B:44:0x012e, B:46:0x0134), top: B:54:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x009e A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0020, B:30:0x00f3, B:15:0x008b, B:17:0x009e, B:18:0x00aa, B:20:0x00b0, B:21:0x00bc, B:23:0x00c2, B:24:0x00ce, B:26:0x00d4, B:27:0x00e0, B:32:0x00f7, B:34:0x00ff, B:35:0x0113, B:37:0x0119, B:38:0x011c, B:40:0x0122, B:41:0x0125, B:43:0x012b, B:44:0x012e, B:46:0x0134), top: B:54:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x00b0 A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0020, B:30:0x00f3, B:15:0x008b, B:17:0x009e, B:18:0x00aa, B:20:0x00b0, B:21:0x00bc, B:23:0x00c2, B:24:0x00ce, B:26:0x00d4, B:27:0x00e0, B:32:0x00f7, B:34:0x00ff, B:35:0x0113, B:37:0x0119, B:38:0x011c, B:40:0x0122, B:41:0x0125, B:43:0x012b, B:44:0x012e, B:46:0x0134), top: B:54:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x00c2 A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0020, B:30:0x00f3, B:15:0x008b, B:17:0x009e, B:18:0x00aa, B:20:0x00b0, B:21:0x00bc, B:23:0x00c2, B:24:0x00ce, B:26:0x00d4, B:27:0x00e0, B:32:0x00f7, B:34:0x00ff, B:35:0x0113, B:37:0x0119, B:38:0x011c, B:40:0x0122, B:41:0x0125, B:43:0x012b, B:44:0x012e, B:46:0x0134), top: B:54:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00d4 A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0020, B:30:0x00f3, B:15:0x008b, B:17:0x009e, B:18:0x00aa, B:20:0x00b0, B:21:0x00bc, B:23:0x00c2, B:24:0x00ce, B:26:0x00d4, B:27:0x00e0, B:32:0x00f7, B:34:0x00ff, B:35:0x0113, B:37:0x0119, B:38:0x011c, B:40:0x0122, B:41:0x0125, B:43:0x012b, B:44:0x012e, B:46:0x0134), top: B:54:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00f2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x00f7 A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0020, B:30:0x00f3, B:15:0x008b, B:17:0x009e, B:18:0x00aa, B:20:0x00b0, B:21:0x00bc, B:23:0x00c2, B:24:0x00ce, B:26:0x00d4, B:27:0x00e0, B:32:0x00f7, B:34:0x00ff, B:35:0x0113, B:37:0x0119, B:38:0x011c, B:40:0x0122, B:41:0x0125, B:43:0x012b, B:44:0x012e, B:46:0x0134), top: B:54:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00ff A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0020, B:30:0x00f3, B:15:0x008b, B:17:0x009e, B:18:0x00aa, B:20:0x00b0, B:21:0x00bc, B:23:0x00c2, B:24:0x00ce, B:26:0x00d4, B:27:0x00e0, B:32:0x00f7, B:34:0x00ff, B:35:0x0113, B:37:0x0119, B:38:0x011c, B:40:0x0122, B:41:0x0125, B:43:0x012b, B:44:0x012e, B:46:0x0134), top: B:54:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0119 A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0020, B:30:0x00f3, B:15:0x008b, B:17:0x009e, B:18:0x00aa, B:20:0x00b0, B:21:0x00bc, B:23:0x00c2, B:24:0x00ce, B:26:0x00d4, B:27:0x00e0, B:32:0x00f7, B:34:0x00ff, B:35:0x0113, B:37:0x0119, B:38:0x011c, B:40:0x0122, B:41:0x0125, B:43:0x012b, B:44:0x012e, B:46:0x0134), top: B:54:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0122 A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0020, B:30:0x00f3, B:15:0x008b, B:17:0x009e, B:18:0x00aa, B:20:0x00b0, B:21:0x00bc, B:23:0x00c2, B:24:0x00ce, B:26:0x00d4, B:27:0x00e0, B:32:0x00f7, B:34:0x00ff, B:35:0x0113, B:37:0x0119, B:38:0x011c, B:40:0x0122, B:41:0x0125, B:43:0x012b, B:44:0x012e, B:46:0x0134), top: B:54:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x012b A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0020, B:30:0x00f3, B:15:0x008b, B:17:0x009e, B:18:0x00aa, B:20:0x00b0, B:21:0x00bc, B:23:0x00c2, B:24:0x00ce, B:26:0x00d4, B:27:0x00e0, B:32:0x00f7, B:34:0x00ff, B:35:0x0113, B:37:0x0119, B:38:0x011c, B:40:0x0122, B:41:0x0125, B:43:0x012b, B:44:0x012e, B:46:0x0134), top: B:54:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0134 A[Catch: all -> 0x0025, TRY_LEAVE, TryCatch #0 {all -> 0x0025, blocks: (B:6:0x0020, B:30:0x00f3, B:15:0x008b, B:17:0x009e, B:18:0x00aa, B:20:0x00b0, B:21:0x00bc, B:23:0x00c2, B:24:0x00ce, B:26:0x00d4, B:27:0x00e0, B:32:0x00f7, B:34:0x00ff, B:35:0x0113, B:37:0x0119, B:38:0x011c, B:40:0x0122, B:41:0x0125, B:43:0x012b, B:44:0x012e, B:46:0x0134), top: B:54:0x0020 }] */
    /* JADX WARN: Type inference failed for: r5v1, types: [T, nk2] */
    /* JADX WARN: Type inference failed for: r6v2, types: [T, s68] */
    /* JADX WARN: Type inference failed for: r7v2, types: [T, nk2] */
    /* JADX WARN: Type inference failed for: r8v3, types: [T, s68] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00f0 -> B:30:0x00f3). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:15:0x008b
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
