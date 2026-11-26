package androidx.compose.material3.carousel;

import androidx.compose.material3.carousel.KeylineListScope;
import androidx.compose.material3.carousel.KeylinesKt;
import androidx.compose.ui.unit.Density;
import defpackage.j59;
import defpackage.kx6;
import defpackage.nl3;
import defpackage.rg;
import defpackage.yr;

/* JADX INFO: loaded from: classes2.dex */
public final class KeylinesKt {
    private static final float calculateMediumChildSize(float f, float f2, float f3) {
        float fMax = Math.max(1.5f * f3, f);
        float f4 = 0.85f * f2;
        return fMax > f4 ? Math.min(Math.max(f4, f3 * 1.2f), f2) : fMax;
    }

    public static final KeylineList createCenterAlignedKeylineList(float f, float f2, final float f3, final float f4, final Arrangement arrangement) {
        return KeylineListKt.m4353keylineListOfWNYm7Xg(f, f2, CarouselAlignment.Companion.m4337getCenterNUL3oTo(), new nl3() { // from class: bg4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return KeylinesKt.createCenterAlignedKeylineList$lambda$16(f3, arrangement, f4, (KeylineListScope) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 createCenterAlignedKeylineList$lambda$16(float f, Arrangement arrangement, float f2, KeylineListScope keylineListScope) {
        keylineListScope.add(f, true);
        int smallCount = arrangement.getSmallCount() / 2;
        for (int i = 0; i < smallCount; i++) {
            KeylineListScope.add$default(keylineListScope, arrangement.getSmallSize(), false, 2, null);
        }
        int mediumCount = arrangement.getMediumCount() / 2;
        for (int i2 = 0; i2 < mediumCount; i2++) {
            KeylineListScope.add$default(keylineListScope, arrangement.getMediumSize(), false, 2, null);
        }
        int largeCount = arrangement.getLargeCount();
        for (int i3 = 0; i3 < largeCount; i3++) {
            KeylineListScope.add$default(keylineListScope, arrangement.getLargeSize(), false, 2, null);
        }
        int mediumCount2 = arrangement.getMediumCount() / 2;
        for (int i4 = 0; i4 < mediumCount2; i4++) {
            KeylineListScope.add$default(keylineListScope, arrangement.getMediumSize(), false, 2, null);
        }
        int smallCount2 = arrangement.getSmallCount() / 2;
        for (int i5 = 0; i5 < smallCount2; i5++) {
            KeylineListScope.add$default(keylineListScope, arrangement.getSmallSize(), false, 2, null);
        }
        keylineListScope.add(f2, true);
        return j59.a;
    }

    public static final KeylineList createLeftAlignedKeylineList(float f, float f2, final float f3, final float f4, final Arrangement arrangement) {
        return KeylineListKt.m4353keylineListOfWNYm7Xg(f, f2, CarouselAlignment.Companion.m4339getStartNUL3oTo(), new nl3() { // from class: ag4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return KeylinesKt.createLeftAlignedKeylineList$lambda$10(f3, arrangement, f4, (KeylineListScope) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 createLeftAlignedKeylineList$lambda$10(float f, Arrangement arrangement, float f2, KeylineListScope keylineListScope) {
        keylineListScope.add(f, true);
        int largeCount = arrangement.getLargeCount();
        for (int i = 0; i < largeCount; i++) {
            KeylineListScope.add$default(keylineListScope, arrangement.getLargeSize(), false, 2, null);
        }
        int mediumCount = arrangement.getMediumCount();
        for (int i2 = 0; i2 < mediumCount; i2++) {
            KeylineListScope.add$default(keylineListScope, arrangement.getMediumSize(), false, 2, null);
        }
        int smallCount = arrangement.getSmallCount();
        for (int i3 = 0; i3 < smallCount; i3++) {
            KeylineListScope.add$default(keylineListScope, arrangement.getSmallSize(), false, 2, null);
        }
        keylineListScope.add(f2, true);
        return j59.a;
    }

    public static final KeylineList heroKeylineList(Density density, float f, Float f2, float f3, int i, boolean z, float f4, float f5) {
        if (f == 0.0f) {
            return KeylineListKt.emptyKeylineList();
        }
        boolean z2 = z && i >= 3;
        int[] iArr = new int[1];
        if (z2) {
            iArr[0] = 2;
        } else {
            iArr[0] = 1;
        }
        float fMin = Math.min(f2 != null ? f2.floatValue() : f, f);
        float fD = kx6.d(fMin / 3.0f, f4, f5);
        if (f < (1.25f * f4) + (yr.W(iArr) * f4)) {
            iArr = new int[]{0};
        }
        int iMax = Math.max(1, (int) Math.floor(rg.b(f4, yr.W(iArr), f, fMin)));
        int iCeil = (int) Math.ceil(f / fMin);
        int i2 = (iCeil - iMax) + 1;
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr2[i3] = iCeil - i3;
        }
        float fMo1434toPx0680j_4 = density.mo1434toPx0680j_4(CarouselDefaults.INSTANCE.m4340getAnchorSizeD9Ej5fM$material3());
        Arrangement arrangementFindLowestCostArrangement = Arrangement.Companion.findLowestCostArrangement(f, f3, fD, f4, f5, iArr, 0.0f, new int[]{0}, fMin, iArr2);
        if (arrangementFindLowestCostArrangement == null) {
            return KeylineListKt.emptyKeylineList();
        }
        return (!z2 || i < arrangementFindLowestCostArrangement.itemCount()) ? createLeftAlignedKeylineList(f, f3, fMo1434toPx0680j_4, fMo1434toPx0680j_4, arrangementFindLowestCostArrangement) : createCenterAlignedKeylineList(f, f3, fMo1434toPx0680j_4, fMo1434toPx0680j_4, arrangementFindLowestCostArrangement);
    }

    public static /* synthetic */ KeylineList heroKeylineList$default(Density density, float f, Float f2, float f3, int i, boolean z, float f4, float f5, int i2, Object obj) {
        if ((i2 & 32) != 0) {
            z = false;
        }
        boolean z2 = z;
        if ((i2 & 64) != 0) {
            f4 = density.mo1434toPx0680j_4(CarouselDefaults.INSTANCE.m4342getMinSmallItemSizeD9Ej5fM());
        }
        float f6 = f4;
        if ((i2 & 128) != 0) {
            f5 = density.mo1434toPx0680j_4(CarouselDefaults.INSTANCE.m4341getMaxSmallItemSizeD9Ej5fM());
        }
        return heroKeylineList(density, f, f2, f3, i, z2, f6, f5);
    }

    public static final KeylineList multiBrowseKeylineList(Density density, float f, float f2, float f3, int i, float f4, float f5) {
        float f6;
        if (f == 0.0f || f2 == 0.0f) {
            return KeylineListKt.emptyKeylineList();
        }
        int[] iArr = {1};
        int[] iArr2 = {1, 0};
        float fMin = Math.min(f2, f);
        float fD = kx6.d(fMin / 3.0f, f4, f5);
        float f7 = (fMin + fD) / 2.0f;
        if (f < 2.0f * f4) {
            iArr = new int[]{0};
        }
        int iMax = Math.max(1, (int) Math.floor(rg.b(f5, yr.W(iArr), f - (yr.W(iArr2) * f7), fMin)));
        int iCeil = (int) Math.ceil(f / fMin);
        int i2 = (iCeil - iMax) + 1;
        int[] iArr3 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr3[i3] = iCeil - i3;
        }
        float fMo1434toPx0680j_4 = density.mo1434toPx0680j_4(CarouselDefaults.INSTANCE.m4340getAnchorSizeD9Ej5fM$material3());
        Arrangement arrangementFindLowestCostArrangement = Arrangement.Companion.findLowestCostArrangement(f, f3, fD, f4, f5, iArr, f7, iArr2, fMin, iArr3);
        if (arrangementFindLowestCostArrangement == null || arrangementFindLowestCostArrangement.itemCount() <= i) {
            f6 = f;
        } else {
            int smallCount = arrangementFindLowestCostArrangement.getSmallCount();
            int mediumCount = arrangementFindLowestCostArrangement.getMediumCount();
            for (int iItemCount = arrangementFindLowestCostArrangement.itemCount() - i; iItemCount > 0; iItemCount--) {
                if (smallCount > 0) {
                    smallCount--;
                } else if (mediumCount > 1) {
                    mediumCount--;
                }
            }
            f6 = f;
            arrangementFindLowestCostArrangement = Arrangement.Companion.findLowestCostArrangement(f6, f3, fD, f4, f5, new int[]{smallCount}, f7, new int[]{mediumCount}, fMin, iArr3);
        }
        return arrangementFindLowestCostArrangement == null ? KeylineListKt.emptyKeylineList() : createLeftAlignedKeylineList(f6, f3, fMo1434toPx0680j_4, fMo1434toPx0680j_4, arrangementFindLowestCostArrangement);
    }

    public static /* synthetic */ KeylineList multiBrowseKeylineList$default(Density density, float f, float f2, float f3, int i, float f4, float f5, int i2, Object obj) {
        if ((i2 & 32) != 0) {
            f4 = density.mo1434toPx0680j_4(CarouselDefaults.INSTANCE.m4342getMinSmallItemSizeD9Ej5fM());
        }
        float f6 = f4;
        if ((i2 & 64) != 0) {
            f5 = density.mo1434toPx0680j_4(CarouselDefaults.INSTANCE.m4341getMaxSmallItemSizeD9Ej5fM());
        }
        return multiBrowseKeylineList(density, f, f2, f3, i, f6, f5);
    }

    public static final KeylineList uncontainedKeylineList(Density density, float f, float f2, float f3) {
        if (f == 0.0f || f2 == 0.0f) {
            return KeylineListKt.emptyKeylineList();
        }
        float fMin = Math.min(f2 + f3, f);
        int iMax = Math.max(1, (int) Math.floor(f / fMin));
        float f4 = f - (iMax * fMin);
        int i = f4 <= 0.0f ? 0 : 1;
        float fMo1434toPx0680j_4 = density.mo1434toPx0680j_4(CarouselDefaults.INSTANCE.m4340getAnchorSizeD9Ej5fM$material3());
        float fCalculateMediumChildSize = calculateMediumChildSize(fMo1434toPx0680j_4, fMin, f4);
        return createLeftAlignedKeylineList(f, f3, Math.max(Math.min(fMo1434toPx0680j_4, f2), fCalculateMediumChildSize * 0.5f), fMo1434toPx0680j_4, new Arrangement(0, 0.0f, 0, fCalculateMediumChildSize, i, fMin, iMax));
    }
}
