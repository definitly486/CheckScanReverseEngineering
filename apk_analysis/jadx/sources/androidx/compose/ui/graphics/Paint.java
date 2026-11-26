package androidx.compose.ui.graphics;

import android.graphics.Shader;
import defpackage.oo5;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public interface Paint {
    @ul2
    default android.graphics.Paint asFrameworkPaint() {
        throw new oo5(0);
    }

    float getAlpha();

    /* JADX INFO: renamed from: getBlendMode-0nO6VwU */
    int mo6101getBlendMode0nO6VwU();

    /* JADX INFO: renamed from: getColor-0d7_KjU */
    long mo6102getColor0d7_KjU();

    ColorFilter getColorFilter();

    /* JADX INFO: renamed from: getFilterQuality-f-v9h1I */
    int mo6103getFilterQualityfv9h1I();

    PathEffect getPathEffect();

    Shader getShader();

    /* JADX INFO: renamed from: getStrokeCap-KaPHkGw */
    int mo6104getStrokeCapKaPHkGw();

    /* JADX INFO: renamed from: getStrokeJoin-LxFBmk8 */
    int mo6105getStrokeJoinLxFBmk8();

    float getStrokeMiterLimit();

    float getStrokeWidth();

    /* JADX INFO: renamed from: getStyle-TiuSbCo */
    int mo6106getStyleTiuSbCo();

    boolean isAntiAlias();

    void setAlpha(float f);

    void setAntiAlias(boolean z);

    /* JADX INFO: renamed from: setBlendMode-s9anfk8 */
    void mo6107setBlendModes9anfk8(int i);

    /* JADX INFO: renamed from: setColor-8_81llA */
    void mo6108setColor8_81llA(long j);

    void setColorFilter(ColorFilter colorFilter);

    /* JADX INFO: renamed from: setFilterQuality-vDHp3xo */
    void mo6109setFilterQualityvDHp3xo(int i);

    void setPathEffect(PathEffect pathEffect);

    void setShader(Shader shader);

    /* JADX INFO: renamed from: setStrokeCap-BeK7IIE */
    void mo6110setStrokeCapBeK7IIE(int i);

    /* JADX INFO: renamed from: setStrokeJoin-Ww9F2mQ */
    void mo6111setStrokeJoinWw9F2mQ(int i);

    void setStrokeMiterLimit(float f);

    void setStrokeWidth(float f);

    /* JADX INFO: renamed from: setStyle-k9PVt8s */
    void mo6112setStylek9PVt8s(int i);
}
