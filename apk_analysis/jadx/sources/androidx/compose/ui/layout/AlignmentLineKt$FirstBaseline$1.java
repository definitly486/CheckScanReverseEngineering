package androidx.compose.ui.layout;

import defpackage.bm3;
import defpackage.qm3;
import defpackage.w65;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class AlignmentLineKt$FirstBaseline$1 extends qm3 implements bm3<Integer, Integer, Integer> {
    public static final AlignmentLineKt$FirstBaseline$1 INSTANCE = new AlignmentLineKt$FirstBaseline$1();

    public AlignmentLineKt$FirstBaseline$1() {
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
