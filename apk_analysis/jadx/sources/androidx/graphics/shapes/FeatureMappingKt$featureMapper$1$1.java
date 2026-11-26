package androidx.graphics.shapes;

import defpackage.b36;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class FeatureMappingKt$featureMapper$1$1 extends gh4 implements nl3<b36<? extends Float, ? extends Float>, CharSequence> {
    public static final FeatureMappingKt$featureMapper$1$1 INSTANCE = new FeatureMappingKt$featureMapper$1$1();

    public FeatureMappingKt$featureMapper$1$1() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final CharSequence invoke2(b36<Float, Float> b36Var) {
        b36Var.getClass();
        return b36Var.b.floatValue() + " -> " + b36Var.c.floatValue();
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ CharSequence invoke(b36<? extends Float, ? extends Float> b36Var) {
        return invoke2((b36<Float, Float>) b36Var);
    }
}
