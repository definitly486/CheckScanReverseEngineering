package androidx.graphics.shapes;

import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class FeatureMappingKt$featureMapper$2$1$1 extends gh4 implements nl3<Integer, CharSequence> {
    final /* synthetic */ int $N;
    final /* synthetic */ DoubleMapper $dm;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeatureMappingKt$featureMapper$2$1$1(DoubleMapper doubleMapper, int i) {
        super(1);
        this.$dm = doubleMapper;
        this.$N = i;
    }

    public final CharSequence invoke(int i) {
        return Format_jvmKt.toStringWithLessPrecision(this.$dm.map(i / this.$N));
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ CharSequence invoke(Integer num) {
        return invoke(num.intValue());
    }
}
