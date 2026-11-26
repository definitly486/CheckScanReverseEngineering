package yads;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.util.Base64;
import androidx.media3.common.C;
import androidx.work.Data;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public abstract class k73 {
    public static boolean a(Context context) {
        String strEglQueryString;
        int i = u56.a;
        if (i < 24) {
            return false;
        }
        if (i < 26) {
            byte[] bArrDecode = Base64.decode("c2Ftc3VuZw==", 0);
            Charset charset = defpackage.ha1.b;
            if (new String(bArrDecode, charset).equals(u56.c) || new String(Base64.decode("WFQxNjUw", 0), charset).equals(u56.d)) {
                return false;
            }
        }
        return (i >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_EXT_protected_content");
    }

    public static int b() {
        if (u56.a(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT)) {
            sv3.b("GlUtil", "No current context");
        }
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        a();
        int i = iArr[0];
        GLES20.glBindTexture(36197, i);
        a();
        GLES20.glTexParameteri(36197, Data.MAX_DATA_BYTES, C.TEXTURE_MIN_FILTER_LINEAR);
        a();
        GLES20.glTexParameteri(36197, 10241, C.TEXTURE_MIN_FILTER_LINEAR);
        a();
        GLES20.glTexParameteri(36197, 10242, 33071);
        a();
        GLES20.glTexParameteri(36197, 10243, 33071);
        a();
        return i;
    }

    public static boolean c() {
        String strEglQueryString;
        return u56.a >= 17 && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_KHR_surfaceless_context");
    }

    public static void a() {
        int i = 0;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            sv3.b("GlUtil", "glError: " + GLU.gluErrorString(iGlGetError));
            i = iGlGetError;
        }
        if (i != 0) {
            sv3.b("GlUtil", "glError: " + GLU.gluErrorString(i));
        }
    }
}
