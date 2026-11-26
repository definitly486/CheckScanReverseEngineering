package androidx.compose.ui.layout;

import defpackage.bm3;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Ruler {
    public static final int $stable = 0;
    private final bm3<Placeable.PlacementScope, Float, Float> calculate;

    /* JADX WARN: Multi-variable type inference failed */
    private Ruler(bm3<? super Placeable.PlacementScope, ? super Float, Float> bm3Var) {
        this.calculate = bm3Var;
    }

    public abstract float calculateCoordinate$ui(float f, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2);

    public final bm3<Placeable.PlacementScope, Float, Float> getCalculate$ui() {
        return this.calculate;
    }

    public /* synthetic */ Ruler(bm3 bm3Var, jh2 jh2Var) {
        this(bm3Var);
    }
}
