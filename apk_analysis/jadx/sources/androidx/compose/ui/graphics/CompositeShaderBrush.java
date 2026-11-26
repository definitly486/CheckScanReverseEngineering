package androidx.compose.ui.graphics;

import android.graphics.Shader;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositeShaderBrush extends ShaderBrush {
    public static final int $stable = 0;
    private final int blendMode;
    private final ShaderBrush dstBrush;
    private final ShaderBrush srcBrush;

    private CompositeShaderBrush(ShaderBrush shaderBrush, ShaderBrush shaderBrush2, int i) {
        this.dstBrush = shaderBrush;
        this.srcBrush = shaderBrush2;
        this.blendMode = i;
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    /* JADX INFO: renamed from: createShader-uvyYCjk */
    public Shader mo6201createShaderuvyYCjk(long j) {
        return ShaderKt.m6563CompositeShader7EN7VTw(this.dstBrush.mo6201createShaderuvyYCjk(j), this.srcBrush.mo6201createShaderuvyYCjk(j), this.blendMode);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeShaderBrush)) {
            return false;
        }
        CompositeShaderBrush compositeShaderBrush = (CompositeShaderBrush) obj;
        return aa4.e(this.dstBrush, compositeShaderBrush.dstBrush) && aa4.e(this.srcBrush, compositeShaderBrush.srcBrush) && BlendMode.m6141equalsimpl0(this.blendMode, compositeShaderBrush.blendMode);
    }

    /* JADX INFO: renamed from: getBlendMode-0nO6VwU, reason: not valid java name */
    public final int m6313getBlendMode0nO6VwU() {
        return this.blendMode;
    }

    public final ShaderBrush getDstBrush() {
        return this.dstBrush;
    }

    public final ShaderBrush getSrcBrush() {
        return this.srcBrush;
    }

    public int hashCode() {
        return BlendMode.m6142hashCodeimpl(this.blendMode) + ((this.srcBrush.hashCode() + (this.dstBrush.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "CompositeShaderBrush(dstBrush=" + this.dstBrush + ", srcBrush=" + this.srcBrush + ", blendMode=" + ((Object) BlendMode.m6143toStringimpl(this.blendMode)) + ')';
    }

    public /* synthetic */ CompositeShaderBrush(ShaderBrush shaderBrush, ShaderBrush shaderBrush2, int i, jh2 jh2Var) {
        this(shaderBrush, shaderBrush2, i);
    }
}
