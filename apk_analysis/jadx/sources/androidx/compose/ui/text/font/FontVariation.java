package androidx.compose.ui.text.font;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import defpackage.aa4;
import defpackage.h8;
import defpackage.jh2;
import defpackage.js2;
import defpackage.l68;
import defpackage.n7;
import defpackage.rg;
import defpackage.yr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class FontVariation {
    public static final int $stable = 0;
    public static final FontVariation INSTANCE = new FontVariation();

    public interface Setting {
        String getAxisName();

        boolean getNeedsDensity();

        float toVariationValue(Density density);
    }

    public static final class SettingFloat implements Setting {
        private final String axisName;
        private final boolean needsDensity;
        private final float value;

        public SettingFloat(String str, float f) {
            this.axisName = str;
            this.value = f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SettingFloat)) {
                return false;
            }
            SettingFloat settingFloat = (SettingFloat) obj;
            return aa4.e(getAxisName(), settingFloat.getAxisName()) && this.value == settingFloat.value;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public String getAxisName() {
            return this.axisName;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public boolean getNeedsDensity() {
            return this.needsDensity;
        }

        public final float getValue() {
            return this.value;
        }

        public int hashCode() {
            return Float.hashCode(this.value) + (getAxisName().hashCode() * 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("FontVariation.Setting(axisName='");
            sb.append(getAxisName());
            sb.append("', value=");
            return js2.b(sb, this.value, ')');
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public float toVariationValue(Density density) {
            return this.value;
        }
    }

    public static final class SettingInt implements Setting {
        private final String axisName;
        private final boolean needsDensity;
        private final int value;

        public SettingInt(String str, int i) {
            this.axisName = str;
            this.value = i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SettingInt)) {
                return false;
            }
            SettingInt settingInt = (SettingInt) obj;
            return aa4.e(getAxisName(), settingInt.getAxisName()) && this.value == settingInt.value;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public String getAxisName() {
            return this.axisName;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public boolean getNeedsDensity() {
            return this.needsDensity;
        }

        public final int getValue() {
            return this.value;
        }

        public int hashCode() {
            return (getAxisName().hashCode() * 31) + this.value;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("FontVariation.Setting(axisName='");
            sb.append(getAxisName());
            sb.append("', value=");
            return rg.h(sb, this.value, ')');
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public float toVariationValue(Density density) {
            return this.value;
        }
    }

    public static final class Settings {
        public static final int $stable = 0;
        private final boolean needsDensity;
        private final List<Setting> settings;

        public Settings(Setting... settingArr) {
            boolean z = false;
            for (Setting setting : settingArr) {
                String axisName = setting.getAxisName();
                int i = 0;
                for (Setting setting2 : settingArr) {
                    if (aa4.e(setting2.getAxisName(), axisName)) {
                        i++;
                    }
                }
                if (!(i == 1)) {
                    StringBuilder sbD = n7.d("'", axisName, "' must be unique. Actual [");
                    ArrayList arrayList = new ArrayList();
                    for (Setting setting3 : settingArr) {
                        if (aa4.e(setting3.getAxisName(), axisName)) {
                            arrayList.add(setting3);
                        }
                    }
                    sbD.append(arrayList);
                    sbD.append(']');
                    InlineClassHelperKt.throwIllegalArgumentException(sbD.toString());
                }
                z = z || setting.getNeedsDensity();
            }
            this.settings = yr.h0(settingArr);
            this.needsDensity = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Settings) && aa4.e(this.settings, ((Settings) obj).settings);
        }

        public final boolean getNeedsDensity$ui_text() {
            return this.needsDensity;
        }

        public final List<Setting> getSettings() {
            return this.settings;
        }

        public int hashCode() {
            return this.settings.hashCode();
        }
    }

    private FontVariation() {
    }

    public final Setting Setting(String str, float f) {
        if (!(str.length() == 4)) {
            InlineClassHelperKt.throwIllegalArgumentException("Name must be exactly four characters. Actual: '" + str + '\'');
        }
        return new SettingFloat(str, f);
    }

    /* JADX INFO: renamed from: Settings-6EWAqTQ, reason: not valid java name */
    public final Settings m8626Settings6EWAqTQ(FontWeight fontWeight, int i, Setting... settingArr) {
        l68 l68Var = new l68(3);
        l68Var.a(weight(fontWeight.getWeight()));
        l68Var.a(italic(i));
        l68Var.b(settingArr);
        ArrayList<Object> arrayList = l68Var.a;
        return new Settings((Setting[]) arrayList.toArray(new Setting[arrayList.size()]));
    }

    public final Setting grade(int i) {
        boolean z = false;
        if (-1000 <= i && i < 1001) {
            z = true;
        }
        if (!z) {
            InlineClassHelperKt.throwIllegalArgumentException("'GRAD' must be in -1000..1000");
        }
        return new SettingInt("GRAD", i);
    }

    public final Setting italic(float f) {
        boolean z = false;
        if (0.0f <= f && f <= 1.0f) {
            z = true;
        }
        if (!z) {
            InlineClassHelperKt.throwIllegalArgumentException("'ital' must be in 0.0f..1.0f. Actual: " + f);
        }
        return new SettingFloat("ital", f);
    }

    /* JADX INFO: renamed from: opticalSizing--R2X_6o, reason: not valid java name */
    public final Setting m8627opticalSizingR2X_6o(long j) {
        if (!TextUnit.m9239isSpimpl(j)) {
            InlineClassHelperKt.throwIllegalArgumentException("'opsz' must be provided in sp units");
        }
        return new SettingTextUnit("opsz", j, null);
    }

    public final Setting slant(float f) {
        boolean z = false;
        if (-90.0f <= f && f <= 90.0f) {
            z = true;
        }
        if (!z) {
            InlineClassHelperKt.throwIllegalArgumentException("'slnt' must be in -90f..90f. Actual: " + f);
        }
        return new SettingFloat("slnt", f);
    }

    public final Setting weight(int i) {
        boolean z = false;
        if (1 <= i && i < 1001) {
            z = true;
        }
        if (!z) {
            InlineClassHelperKt.throwIllegalArgumentException("'wght' value must be in [1, 1000]. Actual: " + i);
        }
        return new SettingInt("wght", i);
    }

    public final Setting width(float f) {
        if (!(f > 0.0f)) {
            InlineClassHelperKt.throwIllegalArgumentException("'wdth' must be strictly > 0.0f. Actual: " + f);
        }
        return new SettingFloat("wdth", f);
    }

    public static final class SettingTextUnit implements Setting {
        private final String axisName;
        private final boolean needsDensity;
        private final long value;

        private SettingTextUnit(String str, long j) {
            this.axisName = str;
            this.value = j;
            this.needsDensity = true;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SettingTextUnit)) {
                return false;
            }
            SettingTextUnit settingTextUnit = (SettingTextUnit) obj;
            return aa4.e(getAxisName(), settingTextUnit.getAxisName()) && TextUnit.m9233equalsimpl0(this.value, settingTextUnit.value);
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public String getAxisName() {
            return this.axisName;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public boolean getNeedsDensity() {
            return this.needsDensity;
        }

        /* JADX INFO: renamed from: getValue-XSAIIZE, reason: not valid java name */
        public final long m8628getValueXSAIIZE() {
            return this.value;
        }

        public int hashCode() {
            return TextUnit.m9237hashCodeimpl(this.value) + (getAxisName().hashCode() * 31);
        }

        public String toString() {
            return "FontVariation.Setting(axisName='" + getAxisName() + "', value=" + ((Object) TextUnit.m9243toStringimpl(this.value)) + ')';
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public float toVariationValue(Density density) {
            if (density != null) {
                return density.getFontScale() * TextUnit.m9236getValueimpl(this.value);
            }
            InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("density must not be null");
            h8.d();
            return 0.0f;
        }

        public /* synthetic */ SettingTextUnit(String str, long j, jh2 jh2Var) {
            this(str, j);
        }
    }
}
