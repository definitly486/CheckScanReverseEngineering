package androidx.camera.camera2.pipe;

import androidx.compose.runtime.ComposerKt;
import androidx.media3.muxer.WebmConstants;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.CameraDevicesKt$find$1", f = "CameraDevices.kt", l = {197, ComposerKt.providerValuesKey, ComposerKt.referenceKey, WebmConstants.MkvEbmlElement.TRACK_NUMBER, 221}, m = "invokeSuspend", v = 1)
public final class CameraDevicesKt$find$1 extends pg8 implements bm3<id3<? super CameraMetadata>, e02<? super j59>, Object> {
    final /* synthetic */ String $cameraBackendId;
    final /* synthetic */ boolean $includePhysicalCameraMetadata;
    final /* synthetic */ CameraDevices $this_find;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraDevicesKt$find$1(CameraDevices cameraDevices, String str, boolean z, e02<? super CameraDevicesKt$find$1> e02Var) {
        super(2, e02Var);
        this.$this_find = cameraDevices;
        this.$cameraBackendId = str;
        this.$includePhysicalCameraMetadata = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CameraDevicesKt$find$1 cameraDevicesKt$find$1 = new CameraDevicesKt$find$1(this.$this_find, this.$cameraBackendId, this.$includePhysicalCameraMetadata, e02Var);
        cameraDevicesKt$find$1.L$0 = obj;
        return cameraDevicesKt$find$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super CameraMetadata> id3Var, e02<? super j59> e02Var) {
        return ((CameraDevicesKt$find$1) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:31:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ca A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:? A[LOOP:1: B:24:0x00b0->B:71:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00e6 -> B:37:0x00fd). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00f9 -> B:37:0x00fd). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x010e -> B:44:0x011c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x017d -> B:44:0x011c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.CameraDevicesKt$find$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
