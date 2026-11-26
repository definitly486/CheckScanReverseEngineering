package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.j59;
import defpackage.k16;
import defpackage.nl3;
import defpackage.qg;

/* JADX INFO: loaded from: classes.dex */
public final class PaddingKt {
    /* JADX INFO: renamed from: PaddingValues-0680j_4, reason: not valid java name */
    public static final PaddingValues m2026PaddingValues0680j_4(float f) {
        return new PaddingValuesImpl(f, f, f, f, null);
    }

    /* JADX INFO: renamed from: PaddingValues-YgX7TsA, reason: not valid java name */
    public static final PaddingValues m2027PaddingValuesYgX7TsA(float f, float f2) {
        return new PaddingValuesImpl(f, f2, f, f2, null);
    }

    /* JADX INFO: renamed from: PaddingValues-YgX7TsA$default, reason: not valid java name */
    public static /* synthetic */ PaddingValues m2028PaddingValuesYgX7TsA$default(float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        return m2027PaddingValuesYgX7TsA(f, f2);
    }

    /* JADX INFO: renamed from: PaddingValues-a9UjIt4, reason: not valid java name */
    public static final PaddingValues m2029PaddingValuesa9UjIt4(float f, float f2, float f3, float f4) {
        return new PaddingValuesImpl(f, f2, f3, f4, null);
    }

    /* JADX INFO: renamed from: PaddingValues-a9UjIt4$default, reason: not valid java name */
    public static /* synthetic */ PaddingValues m2030PaddingValuesa9UjIt4$default(float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 4) != 0) {
            f3 = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 8) != 0) {
            f4 = Dp.m9042constructorimpl(0.0f);
        }
        return m2029PaddingValuesa9UjIt4(f, f2, f3, f4);
    }

    /* JADX INFO: renamed from: absolutePadding-qDBjuR0, reason: not valid java name */
    public static final Modifier m2031absolutePaddingqDBjuR0(Modifier modifier, final float f, final float f2, final float f3, final float f4) {
        return modifier.then(new PaddingElement(f, f2, f3, f4, false, new nl3() { // from class: l16
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return PaddingKt.absolutePadding_qDBjuR0$lambda$0(f, f2, f3, f4, (InspectorInfo) obj);
            }
        }, null));
    }

    /* JADX INFO: renamed from: absolutePadding-qDBjuR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2032absolutePaddingqDBjuR0$default(Modifier modifier, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 4) != 0) {
            f3 = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 8) != 0) {
            f4 = Dp.m9042constructorimpl(0.0f);
        }
        return m2031absolutePaddingqDBjuR0(modifier, f, f2, f3, f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 absolutePadding_qDBjuR0$lambda$0(float f, float f2, float f3, float f4, InspectorInfo inspectorInfo) {
        inspectorInfo.setName("absolutePadding");
        qg.e(f3, qg.e(f2, qg.e(f, inspectorInfo.getProperties(), TtmlNode.LEFT, inspectorInfo), "top", inspectorInfo), TtmlNode.RIGHT, inspectorInfo).set("bottom", Dp.m9040boximpl(f4));
        return j59.a;
    }

    public static final float calculateEndPadding(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.mo1984calculateRightPaddingu2uoSUM(layoutDirection) : paddingValues.mo1983calculateLeftPaddingu2uoSUM(layoutDirection);
    }

    public static final float calculateStartPadding(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.mo1983calculateLeftPaddingu2uoSUM(layoutDirection) : paddingValues.mo1984calculateRightPaddingu2uoSUM(layoutDirection);
    }

    public static final PaddingValues minus(final PaddingValues paddingValues, final PaddingValues paddingValues2) {
        return new PaddingValues() { // from class: androidx.compose.foundation.layout.PaddingKt.minus.1
            @Override // androidx.compose.foundation.layout.PaddingValues
            /* JADX INFO: renamed from: calculateBottomPadding-D9Ej5fM */
            public float mo1982calculateBottomPaddingD9Ej5fM() {
                float fM9042constructorimpl = Dp.m9042constructorimpl(paddingValues.mo1982calculateBottomPaddingD9Ej5fM() - paddingValues2.mo1982calculateBottomPaddingD9Ej5fM());
                float fM9042constructorimpl2 = Dp.m9042constructorimpl(0.0f);
                if (fM9042constructorimpl < fM9042constructorimpl2) {
                    fM9042constructorimpl = fM9042constructorimpl2;
                }
                return Dp.m9042constructorimpl(fM9042constructorimpl);
            }

            @Override // androidx.compose.foundation.layout.PaddingValues
            /* JADX INFO: renamed from: calculateLeftPadding-u2uoSUM */
            public float mo1983calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
                float fM9042constructorimpl = Dp.m9042constructorimpl(paddingValues.mo1983calculateLeftPaddingu2uoSUM(layoutDirection) - paddingValues2.mo1983calculateLeftPaddingu2uoSUM(layoutDirection));
                float fM9042constructorimpl2 = Dp.m9042constructorimpl(0.0f);
                if (fM9042constructorimpl < fM9042constructorimpl2) {
                    fM9042constructorimpl = fM9042constructorimpl2;
                }
                return Dp.m9042constructorimpl(fM9042constructorimpl);
            }

            @Override // androidx.compose.foundation.layout.PaddingValues
            /* JADX INFO: renamed from: calculateRightPadding-u2uoSUM */
            public float mo1984calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
                float fM9042constructorimpl = Dp.m9042constructorimpl(paddingValues.mo1984calculateRightPaddingu2uoSUM(layoutDirection) - paddingValues2.mo1984calculateRightPaddingu2uoSUM(layoutDirection));
                float fM9042constructorimpl2 = Dp.m9042constructorimpl(0.0f);
                if (fM9042constructorimpl < fM9042constructorimpl2) {
                    fM9042constructorimpl = fM9042constructorimpl2;
                }
                return Dp.m9042constructorimpl(fM9042constructorimpl);
            }

            @Override // androidx.compose.foundation.layout.PaddingValues
            /* JADX INFO: renamed from: calculateTopPadding-D9Ej5fM */
            public float mo1985calculateTopPaddingD9Ej5fM() {
                float fM9042constructorimpl = Dp.m9042constructorimpl(paddingValues.mo1985calculateTopPaddingD9Ej5fM() - paddingValues2.mo1985calculateTopPaddingD9Ej5fM());
                float fM9042constructorimpl2 = Dp.m9042constructorimpl(0.0f);
                if (fM9042constructorimpl < fM9042constructorimpl2) {
                    fM9042constructorimpl = fM9042constructorimpl2;
                }
                return Dp.m9042constructorimpl(fM9042constructorimpl);
            }
        };
    }

    public static final Modifier padding(Modifier modifier, PaddingValues paddingValues) {
        return modifier.then(new PaddingValuesElement(paddingValues, new k16(paddingValues, 0)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 padding$lambda$0(PaddingValues paddingValues, InspectorInfo inspectorInfo) {
        inspectorInfo.setName("padding");
        inspectorInfo.getProperties().set("paddingValues", paddingValues);
        return j59.a;
    }

    /* JADX INFO: renamed from: padding-3ABfNKs, reason: not valid java name */
    public static final Modifier m2033padding3ABfNKs(Modifier modifier, final float f) {
        return modifier.then(new PaddingElement(f, f, f, f, true, new nl3() { // from class: n16
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return PaddingKt.padding_3ABfNKs$lambda$0(f, (InspectorInfo) obj);
            }
        }, null));
    }

    /* JADX INFO: renamed from: padding-VpY3zN4, reason: not valid java name */
    public static final Modifier m2034paddingVpY3zN4(Modifier modifier, final float f, final float f2) {
        return modifier.then(new PaddingElement(f, f2, f, f2, true, new nl3() { // from class: m16
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return PaddingKt.padding_VpY3zN4$lambda$0(f, f2, (InspectorInfo) obj);
            }
        }, null));
    }

    /* JADX INFO: renamed from: padding-VpY3zN4$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2035paddingVpY3zN4$default(Modifier modifier, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        return m2034paddingVpY3zN4(modifier, f, f2);
    }

    /* JADX INFO: renamed from: padding-qDBjuR0, reason: not valid java name */
    public static final Modifier m2036paddingqDBjuR0(Modifier modifier, final float f, final float f2, final float f3, final float f4) {
        return modifier.then(new PaddingElement(f, f2, f3, f4, true, new nl3() { // from class: j16
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return PaddingKt.padding_qDBjuR0$lambda$0(f, f2, f3, f4, (InspectorInfo) obj);
            }
        }, null));
    }

    /* JADX INFO: renamed from: padding-qDBjuR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2037paddingqDBjuR0$default(Modifier modifier, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 4) != 0) {
            f3 = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 8) != 0) {
            f4 = Dp.m9042constructorimpl(0.0f);
        }
        return m2036paddingqDBjuR0(modifier, f, f2, f3, f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 padding_3ABfNKs$lambda$0(float f, InspectorInfo inspectorInfo) {
        inspectorInfo.setName("padding");
        inspectorInfo.setValue(Dp.m9040boximpl(f));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 padding_VpY3zN4$lambda$0(float f, float f2, InspectorInfo inspectorInfo) {
        inspectorInfo.setName("padding");
        qg.e(f, inspectorInfo.getProperties(), "horizontal", inspectorInfo).set("vertical", Dp.m9040boximpl(f2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 padding_qDBjuR0$lambda$0(float f, float f2, float f3, float f4, InspectorInfo inspectorInfo) {
        inspectorInfo.setName("padding");
        qg.e(f3, qg.e(f2, qg.e(f, inspectorInfo.getProperties(), TtmlNode.START, inspectorInfo), "top", inspectorInfo), TtmlNode.END, inspectorInfo).set("bottom", Dp.m9040boximpl(f4));
        return j59.a;
    }

    public static final PaddingValues plus(final PaddingValues paddingValues, final PaddingValues paddingValues2) {
        return new PaddingValues() { // from class: androidx.compose.foundation.layout.PaddingKt.plus.1
            @Override // androidx.compose.foundation.layout.PaddingValues
            /* JADX INFO: renamed from: calculateBottomPadding-D9Ej5fM */
            public float mo1982calculateBottomPaddingD9Ej5fM() {
                return Dp.m9042constructorimpl(paddingValues2.mo1982calculateBottomPaddingD9Ej5fM() + paddingValues.mo1982calculateBottomPaddingD9Ej5fM());
            }

            @Override // androidx.compose.foundation.layout.PaddingValues
            /* JADX INFO: renamed from: calculateLeftPadding-u2uoSUM */
            public float mo1983calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
                return Dp.m9042constructorimpl(paddingValues2.mo1983calculateLeftPaddingu2uoSUM(layoutDirection) + paddingValues.mo1983calculateLeftPaddingu2uoSUM(layoutDirection));
            }

            @Override // androidx.compose.foundation.layout.PaddingValues
            /* JADX INFO: renamed from: calculateRightPadding-u2uoSUM */
            public float mo1984calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
                return Dp.m9042constructorimpl(paddingValues2.mo1984calculateRightPaddingu2uoSUM(layoutDirection) + paddingValues.mo1984calculateRightPaddingu2uoSUM(layoutDirection));
            }

            @Override // androidx.compose.foundation.layout.PaddingValues
            /* JADX INFO: renamed from: calculateTopPadding-D9Ej5fM */
            public float mo1985calculateTopPaddingD9Ej5fM() {
                return Dp.m9042constructorimpl(paddingValues2.mo1985calculateTopPaddingD9Ej5fM() + paddingValues.mo1985calculateTopPaddingD9Ej5fM());
            }
        };
    }
}
