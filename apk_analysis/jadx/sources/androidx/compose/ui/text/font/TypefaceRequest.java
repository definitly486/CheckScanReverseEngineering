package androidx.compose.ui.text.font;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.vg;

/* JADX INFO: loaded from: classes2.dex */
public final class TypefaceRequest {
    public static final int $stable = 8;
    private final FontFamily fontFamily;
    private final int fontStyle;
    private final int fontSynthesis;
    private final FontWeight fontWeight;
    private final Object resourceLoaderCacheKey;

    private TypefaceRequest(FontFamily fontFamily, FontWeight fontWeight, int i, int i2, Object obj) {
        this.fontFamily = fontFamily;
        this.fontWeight = fontWeight;
        this.fontStyle = i;
        this.fontSynthesis = i2;
        this.resourceLoaderCacheKey = obj;
    }

    /* JADX INFO: renamed from: copy-e1PVR60$default, reason: not valid java name */
    public static /* synthetic */ TypefaceRequest m8645copye1PVR60$default(TypefaceRequest typefaceRequest, FontFamily fontFamily, FontWeight fontWeight, int i, int i2, Object obj, int i3, Object obj2) {
        if ((i3 & 1) != 0) {
            fontFamily = typefaceRequest.fontFamily;
        }
        if ((i3 & 2) != 0) {
            fontWeight = typefaceRequest.fontWeight;
        }
        if ((i3 & 4) != 0) {
            i = typefaceRequest.fontStyle;
        }
        if ((i3 & 8) != 0) {
            i2 = typefaceRequest.fontSynthesis;
        }
        if ((i3 & 16) != 0) {
            obj = typefaceRequest.resourceLoaderCacheKey;
        }
        Object obj3 = obj;
        int i4 = i;
        return typefaceRequest.m8648copye1PVR60(fontFamily, fontWeight, i4, i2, obj3);
    }

    public final FontFamily component1() {
        return this.fontFamily;
    }

    public final FontWeight component2() {
        return this.fontWeight;
    }

    /* JADX INFO: renamed from: component3-_-LCdwA, reason: not valid java name */
    public final int m8646component3_LCdwA() {
        return this.fontStyle;
    }

    /* JADX INFO: renamed from: component4-GVVA2EU, reason: not valid java name */
    public final int m8647component4GVVA2EU() {
        return this.fontSynthesis;
    }

    public final Object component5() {
        return this.resourceLoaderCacheKey;
    }

    /* JADX INFO: renamed from: copy-e1PVR60, reason: not valid java name */
    public final TypefaceRequest m8648copye1PVR60(FontFamily fontFamily, FontWeight fontWeight, int i, int i2, Object obj) {
        return new TypefaceRequest(fontFamily, fontWeight, i, i2, obj, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypefaceRequest)) {
            return false;
        }
        TypefaceRequest typefaceRequest = (TypefaceRequest) obj;
        return aa4.e(this.fontFamily, typefaceRequest.fontFamily) && aa4.e(this.fontWeight, typefaceRequest.fontWeight) && FontStyle.m8603equalsimpl0(this.fontStyle, typefaceRequest.fontStyle) && FontSynthesis.m8614equalsimpl0(this.fontSynthesis, typefaceRequest.fontSynthesis) && aa4.e(this.resourceLoaderCacheKey, typefaceRequest.resourceLoaderCacheKey);
    }

    public final FontFamily getFontFamily() {
        return this.fontFamily;
    }

    /* JADX INFO: renamed from: getFontStyle-_-LCdwA, reason: not valid java name */
    public final int m8649getFontStyle_LCdwA() {
        return this.fontStyle;
    }

    /* JADX INFO: renamed from: getFontSynthesis-GVVA2EU, reason: not valid java name */
    public final int m8650getFontSynthesisGVVA2EU() {
        return this.fontSynthesis;
    }

    public final FontWeight getFontWeight() {
        return this.fontWeight;
    }

    public final Object getResourceLoaderCacheKey() {
        return this.resourceLoaderCacheKey;
    }

    public int hashCode() {
        FontFamily fontFamily = this.fontFamily;
        int iM8615hashCodeimpl = (FontSynthesis.m8615hashCodeimpl(this.fontSynthesis) + ((FontStyle.m8604hashCodeimpl(this.fontStyle) + ((this.fontWeight.hashCode() + ((fontFamily == null ? 0 : fontFamily.hashCode()) * 31)) * 31)) * 31)) * 31;
        Object obj = this.resourceLoaderCacheKey;
        return iM8615hashCodeimpl + (obj != null ? obj.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TypefaceRequest(fontFamily=");
        sb.append(this.fontFamily);
        sb.append(", fontWeight=");
        sb.append(this.fontWeight);
        sb.append(", fontStyle=");
        sb.append((Object) FontStyle.m8605toStringimpl(this.fontStyle));
        sb.append(", fontSynthesis=");
        sb.append((Object) FontSynthesis.m8618toStringimpl(this.fontSynthesis));
        sb.append(", resourceLoaderCacheKey=");
        return vg.d(sb, this.resourceLoaderCacheKey, ')');
    }

    public /* synthetic */ TypefaceRequest(FontFamily fontFamily, FontWeight fontWeight, int i, int i2, Object obj, jh2 jh2Var) {
        this(fontFamily, fontWeight, i, i2, obj);
    }
}
