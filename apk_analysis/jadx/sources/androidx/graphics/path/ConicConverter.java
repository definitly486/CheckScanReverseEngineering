package androidx.graphics.path;

import androidx.media3.extractor.ts.TsExtractor;

/* JADX INFO: loaded from: classes3.dex */
public final class ConicConverter {
    private int currentQuadratic;
    private int quadraticCount;
    private float[] quadraticData = new float[TsExtractor.TS_STREAM_TYPE_HDMV_DTS];

    public static /* synthetic */ void convert$default(ConicConverter conicConverter, float[] fArr, float f, float f2, int i, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            i = 0;
        }
        conicConverter.convert(fArr, f, f2, i);
    }

    private final native int internalConicToQuadratics(float[] fArr, int i, float[] fArr2, float f, float f2);

    public static /* synthetic */ boolean nextQuadratic$default(ConicConverter conicConverter, float[] fArr, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return conicConverter.nextQuadratic(fArr, i);
    }

    public final void convert(float[] fArr, float f, float f2, int i) {
        fArr.getClass();
        int iInternalConicToQuadratics = internalConicToQuadratics(fArr, i, this.quadraticData, f, f2);
        this.quadraticCount = iInternalConicToQuadratics;
        int i2 = (iInternalConicToQuadratics * 4) + 2;
        if (i2 > this.quadraticData.length) {
            float[] fArr2 = new float[i2];
            this.quadraticData = fArr2;
            this.quadraticCount = internalConicToQuadratics(fArr, i, fArr2, f, f2);
        }
        this.currentQuadratic = 0;
    }

    public final int getCurrentQuadratic() {
        return this.currentQuadratic;
    }

    public final int getQuadraticCount() {
        return this.quadraticCount;
    }

    public final boolean nextQuadratic(float[] fArr, int i) {
        fArr.getClass();
        int i2 = this.currentQuadratic;
        if (i2 >= this.quadraticCount) {
            return false;
        }
        int i3 = i2 * 4;
        float[] fArr2 = this.quadraticData;
        fArr[i] = fArr2[i3];
        fArr[i + 1] = fArr2[i3 + 1];
        fArr[i + 2] = fArr2[i3 + 2];
        fArr[i + 3] = fArr2[i3 + 3];
        fArr[i + 4] = fArr2[i3 + 4];
        fArr[i + 5] = fArr2[i3 + 5];
        this.currentQuadratic = i2 + 1;
        return true;
    }

    public final void setCurrentQuadratic(int i) {
        this.currentQuadratic = i;
    }
}
