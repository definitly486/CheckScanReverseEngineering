package yads;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class sr2 implements lq3 {
    public final int b;
    public final RectF c;

    public sr2(int i, RectF rectF) {
        this.b = i;
        this.c = rectF;
    }

    @Override // yads.lq3
    public final String a() {
        Integer numValueOf = Integer.valueOf(this.b);
        RectF rectF = this.c;
        return String.format("exposure:{exposedPercentage:%s,visibleRectangle:%s,occlusionRectangles:[]}", Arrays.copyOf(new Object[]{numValueOf, rectF != null ? String.format("{x:%s,y:%s,width:%s,height:%s}", Arrays.copyOf(new Object[]{Float.valueOf(rectF.left), Float.valueOf(rectF.top), Float.valueOf(rectF.width()), Float.valueOf(rectF.height())}, 4)) : null}, 2));
    }
}
