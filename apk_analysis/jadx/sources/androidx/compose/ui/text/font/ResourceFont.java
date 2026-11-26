package androidx.compose.ui.text.font;

import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ResourceFont implements Font {
    public static final int $stable = 0;
    private final int loadingStrategy;
    private final int resId;
    private final int style;
    private final FontVariation.Settings variationSettings;
    private final FontWeight weight;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ResourceFont(int i, FontWeight fontWeight, int i2, FontVariation.Settings settings, int i3, int i4, jh2 jh2Var) {
        FontWeight normal = (i4 & 2) != 0 ? FontWeight.Companion.getNormal() : fontWeight;
        int iM8610getNormal_LCdwA = (i4 & 4) != 0 ? FontStyle.Companion.m8610getNormal_LCdwA() : i2;
        this(i, normal, iM8610getNormal_LCdwA, (i4 & 8) != 0 ? FontVariation.INSTANCE.m8626Settings6EWAqTQ(normal, iM8610getNormal_LCdwA, new FontVariation.Setting[0]) : settings, (i4 & 16) != 0 ? FontLoadingStrategy.Companion.m8594getAsyncPKNRLFQ() : i3, null);
    }

    /* JADX INFO: renamed from: copy-F3nL8kk$default, reason: not valid java name */
    public static /* synthetic */ ResourceFont m8640copyF3nL8kk$default(ResourceFont resourceFont, int i, FontWeight fontWeight, int i2, int i3, FontVariation.Settings settings, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = resourceFont.resId;
        }
        if ((i4 & 2) != 0) {
            fontWeight = resourceFont.getWeight();
        }
        if ((i4 & 4) != 0) {
            i2 = resourceFont.mo8556getStyle_LCdwA();
        }
        if ((i4 & 8) != 0) {
            i3 = resourceFont.mo8548getLoadingStrategyPKNRLFQ();
        }
        if ((i4 & 16) != 0) {
            settings = resourceFont.variationSettings;
        }
        FontVariation.Settings settings2 = settings;
        int i5 = i2;
        return resourceFont.m8643copyF3nL8kk(i, fontWeight, i5, i3, settings2);
    }

    /* JADX INFO: renamed from: copy-RetOiIg$default, reason: not valid java name */
    public static /* synthetic */ ResourceFont m8641copyRetOiIg$default(ResourceFont resourceFont, int i, FontWeight fontWeight, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = resourceFont.resId;
        }
        if ((i3 & 2) != 0) {
            fontWeight = resourceFont.getWeight();
        }
        if ((i3 & 4) != 0) {
            i2 = resourceFont.mo8556getStyle_LCdwA();
        }
        return resourceFont.m8644copyRetOiIg(i, fontWeight, i2);
    }

    /* JADX INFO: renamed from: getLoadingStrategy-PKNRLFQ$annotations, reason: not valid java name */
    public static /* synthetic */ void m8642getLoadingStrategyPKNRLFQ$annotations() {
    }

    /* JADX INFO: renamed from: copy-F3nL8kk, reason: not valid java name */
    public final ResourceFont m8643copyF3nL8kk(int i, FontWeight fontWeight, int i2, int i3, FontVariation.Settings settings) {
        return new ResourceFont(i, fontWeight, i2, settings, i3, null);
    }

    /* JADX INFO: renamed from: copy-RetOiIg, reason: not valid java name */
    public final ResourceFont m8644copyRetOiIg(int i, FontWeight fontWeight, int i2) {
        return m8640copyF3nL8kk$default(this, i, fontWeight, i2, mo8548getLoadingStrategyPKNRLFQ(), null, 16, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResourceFont)) {
            return false;
        }
        ResourceFont resourceFont = (ResourceFont) obj;
        return this.resId == resourceFont.resId && aa4.e(getWeight(), resourceFont.getWeight()) && FontStyle.m8603equalsimpl0(mo8556getStyle_LCdwA(), resourceFont.mo8556getStyle_LCdwA()) && aa4.e(this.variationSettings, resourceFont.variationSettings) && FontLoadingStrategy.m8590equalsimpl0(mo8548getLoadingStrategyPKNRLFQ(), resourceFont.mo8548getLoadingStrategyPKNRLFQ());
    }

    @Override // androidx.compose.ui.text.font.Font
    /* JADX INFO: renamed from: getLoadingStrategy-PKNRLFQ */
    public int mo8548getLoadingStrategyPKNRLFQ() {
        return this.loadingStrategy;
    }

    public final int getResId() {
        return this.resId;
    }

    @Override // androidx.compose.ui.text.font.Font
    /* JADX INFO: renamed from: getStyle-_-LCdwA */
    public int mo8556getStyle_LCdwA() {
        return this.style;
    }

    public final FontVariation.Settings getVariationSettings() {
        return this.variationSettings;
    }

    @Override // androidx.compose.ui.text.font.Font
    public FontWeight getWeight() {
        return this.weight;
    }

    public int hashCode() {
        return this.variationSettings.hashCode() + ((FontLoadingStrategy.m8591hashCodeimpl(mo8548getLoadingStrategyPKNRLFQ()) + ((FontStyle.m8604hashCodeimpl(mo8556getStyle_LCdwA()) + ((getWeight().hashCode() + (this.resId * 31)) * 31)) * 31)) * 31);
    }

    public String toString() {
        return "ResourceFont(resId=" + this.resId + ", weight=" + getWeight() + ", style=" + ((Object) FontStyle.m8605toStringimpl(mo8556getStyle_LCdwA())) + ", loadingStrategy=" + ((Object) FontLoadingStrategy.m8592toStringimpl(mo8548getLoadingStrategyPKNRLFQ())) + ')';
    }

    private ResourceFont(int i, FontWeight fontWeight, int i2, FontVariation.Settings settings, int i3) {
        this.resId = i;
        this.weight = fontWeight;
        this.style = i2;
        this.variationSettings = settings;
        this.loadingStrategy = i3;
    }

    public /* synthetic */ ResourceFont(int i, FontWeight fontWeight, int i2, FontVariation.Settings settings, int i3, jh2 jh2Var) {
        this(i, fontWeight, i2, settings, i3);
    }
}
