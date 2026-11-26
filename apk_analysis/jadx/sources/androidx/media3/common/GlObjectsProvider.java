package androidx.media3.common;

import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;

/* JADX INFO: loaded from: classes3.dex */
public interface GlObjectsProvider {
    GlTextureInfo createBuffersForTexture(int i, int i2, int i3);

    EGLContext createEglContext(EGLDisplay eGLDisplay, int i, int[] iArr);

    EGLSurface createEglSurface(EGLDisplay eGLDisplay, Object obj, int i, boolean z);

    EGLSurface createFocusedPlaceholderEglSurface(EGLContext eGLContext, EGLDisplay eGLDisplay);

    void release(EGLDisplay eGLDisplay);
}
