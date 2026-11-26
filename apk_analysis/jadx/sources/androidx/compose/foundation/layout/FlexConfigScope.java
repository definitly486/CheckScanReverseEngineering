package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.unit.Density;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface FlexConfigScope extends Density {
    void alignSelf(AlignmentLine alignmentLine);

    void alignSelf(nl3<? super Measured, Integer> nl3Var);

    /* JADX INFO: renamed from: alignSelf-aKVMlHY, reason: not valid java name */
    void mo1849alignSelfaKVMlHY(int i);

    void basis(float f);

    /* JADX INFO: renamed from: basis-0680j_4, reason: not valid java name */
    void mo1850basis0680j_4(float f);

    /* JADX INFO: renamed from: basis-MFoeH6Y, reason: not valid java name */
    void mo1851basisMFoeH6Y(long j);

    int getFlexBoxCrossAxisMax();

    int getFlexBoxCrossAxisMin();

    int getFlexBoxMainAxisMax();

    int getFlexBoxMainAxisMin();

    void grow(float f);

    void order(int i);

    void shrink(float f);
}
