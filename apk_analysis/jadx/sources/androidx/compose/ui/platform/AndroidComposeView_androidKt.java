package androidx.compose.ui.platform;

import android.content.res.Configuration;
import android.view.View;
import android.view.ViewParent;
import androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.platform.coreshims.ViewCompatShims;
import androidx.compose.ui.text.input.PlatformTextInputService;
import defpackage.aa4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeView_androidKt {
    private static final long ONE_FRAME_120_HERTZ_IN_MILLISECONDS = 8;
    private static final int maskForNonWindowMetricsChanges = 1342235263;
    private static nl3<? super PlatformTextInputService, ? extends PlatformTextInputService> platformTextInputServiceInterceptor = AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1.INSTANCE;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean containsDescendant(View view, View view2) {
        if (aa4.e(view2, view)) {
            return false;
        }
        for (ViewParent parent = view2.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == view) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean diffForWindowMetricsChanged(Configuration configuration, Configuration configuration2) {
        return (configuration.diff(configuration2) & (-1342235264)) != 0;
    }

    /* JADX INFO: renamed from: dot-p89u6pk, reason: not valid java name */
    private static final float m8149dotp89u6pk(float[] fArr, int i, float[] fArr2, int i2) {
        int i3 = i * 4;
        return (fArr[i3 + 3] * fArr2[12 + i2]) + (fArr[i3 + 2] * fArr2[8 + i2]) + (fArr[i3 + 1] * fArr2[4 + i2]) + (fArr[i3] * fArr2[i2]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ContentCaptureSessionWrapper getContentCaptureSessionCompat(View view) {
        ViewCompatShims.setImportantForContentCapture(view, 1);
        return ViewCompatShims.getContentCaptureSession(view);
    }

    public static final nl3<PlatformTextInputService, PlatformTextInputService> getPlatformTextInputServiceInterceptor() {
        return platformTextInputServiceInterceptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: preTransform-JiSxe2E, reason: not valid java name */
    public static final void m8150preTransformJiSxe2E(float[] fArr, float[] fArr2) {
        float fM8149dotp89u6pk = m8149dotp89u6pk(fArr2, 0, fArr, 0);
        float fM8149dotp89u6pk2 = m8149dotp89u6pk(fArr2, 0, fArr, 1);
        float fM8149dotp89u6pk3 = m8149dotp89u6pk(fArr2, 0, fArr, 2);
        float fM8149dotp89u6pk4 = m8149dotp89u6pk(fArr2, 0, fArr, 3);
        float fM8149dotp89u6pk5 = m8149dotp89u6pk(fArr2, 1, fArr, 0);
        float fM8149dotp89u6pk6 = m8149dotp89u6pk(fArr2, 1, fArr, 1);
        float fM8149dotp89u6pk7 = m8149dotp89u6pk(fArr2, 1, fArr, 2);
        float fM8149dotp89u6pk8 = m8149dotp89u6pk(fArr2, 1, fArr, 3);
        float fM8149dotp89u6pk9 = m8149dotp89u6pk(fArr2, 2, fArr, 0);
        float fM8149dotp89u6pk10 = m8149dotp89u6pk(fArr2, 2, fArr, 1);
        float fM8149dotp89u6pk11 = m8149dotp89u6pk(fArr2, 2, fArr, 2);
        float fM8149dotp89u6pk12 = m8149dotp89u6pk(fArr2, 2, fArr, 3);
        float fM8149dotp89u6pk13 = m8149dotp89u6pk(fArr2, 3, fArr, 0);
        float fM8149dotp89u6pk14 = m8149dotp89u6pk(fArr2, 3, fArr, 1);
        float fM8149dotp89u6pk15 = m8149dotp89u6pk(fArr2, 3, fArr, 2);
        float fM8149dotp89u6pk16 = m8149dotp89u6pk(fArr2, 3, fArr, 3);
        fArr[0] = fM8149dotp89u6pk;
        fArr[1] = fM8149dotp89u6pk2;
        fArr[2] = fM8149dotp89u6pk3;
        fArr[3] = fM8149dotp89u6pk4;
        fArr[4] = fM8149dotp89u6pk5;
        fArr[5] = fM8149dotp89u6pk6;
        fArr[6] = fM8149dotp89u6pk7;
        fArr[7] = fM8149dotp89u6pk8;
        fArr[8] = fM8149dotp89u6pk9;
        fArr[9] = fM8149dotp89u6pk10;
        fArr[10] = fM8149dotp89u6pk11;
        fArr[11] = fM8149dotp89u6pk12;
        fArr[12] = fM8149dotp89u6pk13;
        fArr[13] = fM8149dotp89u6pk14;
        fArr[14] = fM8149dotp89u6pk15;
        fArr[15] = fM8149dotp89u6pk16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: preTranslate-cG2Xzmc, reason: not valid java name */
    public static final void m8151preTranslatecG2Xzmc(float[] fArr, float f, float f2, float[] fArr2) {
        Matrix.m6485resetimpl(fArr2);
        Matrix.m6498translateimpl$default(fArr2, f, f2, 0.0f, 4, null);
        m8150preTransformJiSxe2E(fArr, fArr2);
    }

    public static final void setPlatformTextInputServiceInterceptor(nl3<? super PlatformTextInputService, ? extends PlatformTextInputService> nl3Var) {
        platformTextInputServiceInterceptor = nl3Var;
    }
}
