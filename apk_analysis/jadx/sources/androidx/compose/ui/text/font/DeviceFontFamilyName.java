package androidx.compose.ui.text.font;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.aa4;
import defpackage.lt0;

/* JADX INFO: loaded from: classes2.dex */
public final class DeviceFontFamilyName {
    private final String name;

    private /* synthetic */ DeviceFontFamilyName(String str) {
        this.name = str;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ DeviceFontFamilyName m8566boximpl(String str) {
        return new DeviceFontFamilyName(str);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static String m8567constructorimpl(String str) {
        if (!(str.length() > 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("name may not be empty");
        }
        return str;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8568equalsimpl(String str, Object obj) {
        return (obj instanceof DeviceFontFamilyName) && aa4.e(str, ((DeviceFontFamilyName) obj).m8572unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8569equalsimpl0(String str, String str2) {
        return aa4.e(str, str2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8570hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8571toStringimpl(String str) {
        return lt0.d(')', "DeviceFontFamilyName(name=", str);
    }

    public boolean equals(Object obj) {
        return m8568equalsimpl(this.name, obj);
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return m8570hashCodeimpl(this.name);
    }

    public String toString() {
        return m8571toStringimpl(this.name);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ String m8572unboximpl() {
        return this.name;
    }
}
