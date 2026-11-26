package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;

/* JADX INFO: loaded from: classes.dex */
@LayoutScopeMarker
public interface GridConfigurationScope extends Density {
    /* JADX INFO: renamed from: getFr-9P9H2UQ$annotations, reason: not valid java name */
    static /* synthetic */ void m1919getFr9P9H2UQ$annotations(double d) {
    }

    /* JADX INFO: renamed from: getFr-9P9H2UQ$annotations, reason: not valid java name */
    static /* synthetic */ void m1920getFr9P9H2UQ$annotations(float f) {
    }

    void column(float f);

    /* JADX INFO: renamed from: column-0680j_4, reason: not valid java name */
    void mo1922column0680j_4(float f);

    /* JADX INFO: renamed from: column-118E5d0, reason: not valid java name */
    void mo1923column118E5d0(long j);

    /* JADX INFO: renamed from: column-XZblgos, reason: not valid java name */
    void mo1924columnXZblgos(float f);

    /* JADX INFO: renamed from: columnGap-0680j_4, reason: not valid java name */
    void mo1925columnGap0680j_4(float f);

    /* JADX INFO: renamed from: gap-0680j_4, reason: not valid java name */
    void mo1926gap0680j_4(float f);

    /* JADX INFO: renamed from: gap-YgX7TsA, reason: not valid java name */
    void mo1927gapYgX7TsA(float f, float f2);

    /* JADX INFO: renamed from: getConstraints-msEJaDk, reason: not valid java name */
    long mo1928getConstraintsmsEJaDk();

    /* JADX INFO: renamed from: getFlow-ITJdzs4, reason: not valid java name */
    int mo1929getFlowITJdzs4();

    /* JADX INFO: renamed from: getFr-9P9H2UQ, reason: not valid java name */
    default float m1932getFr9P9H2UQ(int i) {
        return Fr.m1913constructorimpl(i);
    }

    /* JADX INFO: renamed from: minmax-1z8F7YY, reason: not valid java name */
    default long m1933minmax1z8F7YY(float f, float f2) {
        return GridTrackSize.Companion.m1977MinMax1z8F7YY(f, f2);
    }

    void row(float f);

    /* JADX INFO: renamed from: row-0680j_4, reason: not valid java name */
    void mo1934row0680j_4(float f);

    /* JADX INFO: renamed from: row-118E5d0, reason: not valid java name */
    void mo1935row118E5d0(long j);

    /* JADX INFO: renamed from: row-XZblgos, reason: not valid java name */
    void mo1936rowXZblgos(float f);

    /* JADX INFO: renamed from: rowGap-0680j_4, reason: not valid java name */
    void mo1937rowGap0680j_4(float f);

    /* JADX INFO: renamed from: setFlow-4t4_IgM, reason: not valid java name */
    void mo1938setFlow4t4_IgM(int i);

    /* JADX INFO: renamed from: getFr-9P9H2UQ$annotations, reason: not valid java name */
    static /* synthetic */ void m1921getFr9P9H2UQ$annotations(int i) {
    }

    /* JADX INFO: renamed from: getFr-9P9H2UQ, reason: not valid java name */
    default float m1931getFr9P9H2UQ(float f) {
        return Fr.m1913constructorimpl(f);
    }

    /* JADX INFO: renamed from: getFr-9P9H2UQ, reason: not valid java name */
    default float m1930getFr9P9H2UQ(double d) {
        return Fr.m1913constructorimpl((float) d);
    }
}
