package defpackage;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.ChipKt;
import androidx.compose.material3.SegmentedButtonColors;
import androidx.compose.material3.SegmentedButtonKt;
import androidx.compose.material3.SelectableChipColors;
import androidx.compose.material3.SelectableChipElevation;
import androidx.compose.material3.SingleChoiceSegmentedButtonRowScope;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class wi1 implements bm3 {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ ll3 d;
    public final /* synthetic */ Shape e;
    public final /* synthetic */ Modifier f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ BorderStroke h;
    public final /* synthetic */ MutableInteractionSource i;
    public final /* synthetic */ bm3 j;
    public final /* synthetic */ bm3 k;
    public final /* synthetic */ int l;
    public final /* synthetic */ int m;
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ wi1(SingleChoiceSegmentedButtonRowScope singleChoiceSegmentedButtonRowScope, boolean z, ll3 ll3Var, Shape shape, Modifier modifier, boolean z2, SegmentedButtonColors segmentedButtonColors, BorderStroke borderStroke, PaddingValues paddingValues, MutableInteractionSource mutableInteractionSource, bm3 bm3Var, bm3 bm3Var2, int i, int i2, int i3) {
        this.o = singleChoiceSegmentedButtonRowScope;
        this.c = z;
        this.d = ll3Var;
        this.e = shape;
        this.f = modifier;
        this.g = z2;
        this.p = segmentedButtonColors;
        this.h = borderStroke;
        this.q = paddingValues;
        this.i = mutableInteractionSource;
        this.j = bm3Var;
        this.k = bm3Var2;
        this.l = i;
        this.m = i2;
        this.n = i3;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return ChipKt.ElevatedFilterChip$lambda$7(this.c, this.d, this.j, this.f, this.g, this.k, (bm3) this.o, this.e, (SelectableChipColors) this.p, (SelectableChipElevation) this.q, this.h, this.i, this.l, this.m, this.n, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return SegmentedButtonKt.SegmentedButton$lambda$5((SingleChoiceSegmentedButtonRowScope) this.o, this.c, this.d, this.e, this.f, this.g, (SegmentedButtonColors) this.p, this.h, (PaddingValues) this.q, this.i, this.j, this.k, this.l, this.m, this.n, (Composer) obj, iIntValue2);
        }
    }

    public /* synthetic */ wi1(boolean z, ll3 ll3Var, bm3 bm3Var, Modifier modifier, boolean z2, bm3 bm3Var2, bm3 bm3Var3, Shape shape, SelectableChipColors selectableChipColors, SelectableChipElevation selectableChipElevation, BorderStroke borderStroke, MutableInteractionSource mutableInteractionSource, int i, int i2, int i3) {
        this.c = z;
        this.d = ll3Var;
        this.j = bm3Var;
        this.f = modifier;
        this.g = z2;
        this.k = bm3Var2;
        this.o = bm3Var3;
        this.e = shape;
        this.p = selectableChipColors;
        this.q = selectableChipElevation;
        this.h = borderStroke;
        this.i = mutableInteractionSource;
        this.l = i;
        this.m = i2;
        this.n = i3;
    }
}
