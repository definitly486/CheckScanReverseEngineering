package androidx.compose.material3;

import defpackage.bm3;
import defpackage.qm3;
import defpackage.w65;

/* JADX INFO: loaded from: classes2.dex */
public /* synthetic */ class SliderKt$CornerSizeAlignmentLine$1 extends qm3 implements bm3<Integer, Integer, Integer> {
    public static final SliderKt$CornerSizeAlignmentLine$1 INSTANCE = new SliderKt$CornerSizeAlignmentLine$1();

    public SliderKt$CornerSizeAlignmentLine$1() {
        super(2, w65.class, "min", "min(II)I", 1);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Integer invoke(Integer num, Integer num2) {
        return invoke(num.intValue(), num2.intValue());
    }

    public final Integer invoke(int i, int i2) {
        return Integer.valueOf(Math.min(i, i2));
    }
}
