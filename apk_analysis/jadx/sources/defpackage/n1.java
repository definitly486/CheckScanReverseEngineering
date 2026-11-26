package defpackage;

import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.media3.exoplayer.drm.ExoMediaDrm;
import androidx.media3.exoplayer.drm.FrameworkMediaDrm;
import com.google.firebase.components.DependencyException;
import java.security.spec.InvalidKeySpecException;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class n1 implements ExoMediaDrm.Provider {
    public static void a(DrawContext drawContext, long j) {
        drawContext.getCanvas().restore();
        drawContext.mo6728setSizeuvyYCjk(j);
    }

    public static /* synthetic */ void b(Object obj, String str, Object obj2) {
        throw new DependencyException(str + obj + obj2);
    }

    public static /* synthetic */ void c(String str) throws InvalidKeySpecException {
        throw new InvalidKeySpecException(str);
    }

    public static void d(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
    }

    public static /* synthetic */ void e(String str) {
        throw new UnsupportedOperationException(str);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm.Provider
    public ExoMediaDrm acquireExoMediaDrm(UUID uuid) {
        return FrameworkMediaDrm.lambda$static$0(uuid);
    }
}
