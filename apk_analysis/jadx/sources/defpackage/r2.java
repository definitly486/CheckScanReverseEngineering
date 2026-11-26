package defpackage;

import android.graphics.BlendMode;
import android.graphics.ComposeShader;
import android.graphics.Shader;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class r2 {
    public static /* synthetic */ ComposeShader a(Shader shader, Shader shader2, BlendMode blendMode) {
        return new ComposeShader(shader, shader2, blendMode);
    }

    public static /* synthetic */ AccessibilityNodeInfo.TouchDelegateInfo b(Map map) {
        return new AccessibilityNodeInfo.TouchDelegateInfo(map);
    }
}
