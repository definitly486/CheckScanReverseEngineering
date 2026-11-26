package androidx.compose.ui.text.font;

/* JADX INFO: loaded from: classes2.dex */
public final class DeviceFontFamilyNameFontKt {
    /* JADX INFO: renamed from: Font-vxs03AY, reason: not valid java name */
    public static final Font m8573Fontvxs03AY(String str, FontWeight fontWeight, int i, FontVariation.Settings settings) {
        return new DeviceFontFamilyNameFont(str, fontWeight, i, settings, null);
    }

    /* JADX INFO: renamed from: Font-vxs03AY$default, reason: not valid java name */
    public static /* synthetic */ Font m8574Fontvxs03AY$default(String str, FontWeight fontWeight, int i, FontVariation.Settings settings, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        if ((i2 & 4) != 0) {
            i = FontStyle.Companion.m8610getNormal_LCdwA();
        }
        if ((i2 & 8) != 0) {
            settings = new FontVariation.Settings(new FontVariation.Setting[0]);
        }
        return m8573Fontvxs03AY(str, fontWeight, i, settings);
    }
}
