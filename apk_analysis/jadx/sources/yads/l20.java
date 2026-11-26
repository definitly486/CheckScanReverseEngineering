package yads;

import defpackage.ta8;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class l20 {
    public final int a;

    public /* synthetic */ l20(int i) {
        this.a = i;
    }

    public static final /* synthetic */ l20 a(int i) {
        return new l20(i);
    }

    public static int b(int i) {
        return i;
    }

    public static int c(int i) {
        return Integer.hashCode(i);
    }

    public static String d(int i) {
        String upperCase = ta8.R(8, Integer.toHexString(i)).toUpperCase(Locale.ROOT);
        upperCase.getClass();
        return "#".concat(upperCase);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof l20) && this.a == ((l20) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return d(this.a);
    }

    public final /* synthetic */ int a() {
        return this.a;
    }
}
