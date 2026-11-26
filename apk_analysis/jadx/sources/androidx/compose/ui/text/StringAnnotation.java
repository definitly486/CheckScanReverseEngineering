package androidx.compose.ui.text;

import defpackage.aa4;
import defpackage.lt0;

/* JADX INFO: loaded from: classes2.dex */
public final class StringAnnotation implements AnnotatedString.Annotation {
    private final String value;

    private /* synthetic */ StringAnnotation(String str) {
        this.value = str;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StringAnnotation m8439boximpl(String str) {
        return new StringAnnotation(str);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static String m8440constructorimpl(String str) {
        return str;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8441equalsimpl(String str, Object obj) {
        return (obj instanceof StringAnnotation) && aa4.e(str, ((StringAnnotation) obj).m8445unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8442equalsimpl0(String str, String str2) {
        return aa4.e(str, str2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8443hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8444toStringimpl(String str) {
        return lt0.d(')', "StringAnnotation(value=", str);
    }

    public boolean equals(Object obj) {
        return m8441equalsimpl(this.value, obj);
    }

    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        return m8443hashCodeimpl(this.value);
    }

    public String toString() {
        return m8444toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ String m8445unboximpl() {
        return this.value;
    }
}
