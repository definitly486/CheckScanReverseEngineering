package androidx.compose.material3;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultTooltipCaretShape implements Shape {
    public static final int $stable = 0;
    private final long caretSize;

    public /* synthetic */ DefaultTooltipCaretShape(long j, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? TooltipDefaults.INSTANCE.m4259getCaretSizeMYxV2XQ() : j, null);
    }

    @Override // androidx.compose.ui.graphics.Shape
    /* JADX INFO: renamed from: createOutline-Pq9zytI */
    public Outline mo1345createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        Path Path = AndroidPath_androidKt.Path();
        float fMo1434toPx0680j_4 = density.mo1434toPx0680j_4(DpSize.m9140getWidthD9Ej5fM(this.caretSize));
        float fMo1434toPx0680j_5 = density.mo1434toPx0680j_4(DpSize.m9138getHeightD9Ej5fM(this.caretSize));
        Path.moveTo(0.0f, 0.0f);
        Path.lineTo(fMo1434toPx0680j_4 / 2.0f, 0.0f);
        Path.lineTo(0.0f, fMo1434toPx0680j_5);
        Path.lineTo((-fMo1434toPx0680j_4) / 2.0f, 0.0f);
        Path.close();
        return new Outline.Generic(Path);
    }

    /* JADX INFO: renamed from: getCaretSize-MYxV2XQ, reason: not valid java name */
    public final long m3398getCaretSizeMYxV2XQ() {
        return this.caretSize;
    }

    private DefaultTooltipCaretShape(long j) {
        this.caretSize = j;
    }

    public /* synthetic */ DefaultTooltipCaretShape(long j, jh2 jh2Var) {
        this(j);
    }
}
