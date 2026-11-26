package com.warefly.checkscan.personalform.presentation.form.bottomSheet;

import defpackage.aa4;
import defpackage.ad2;
import defpackage.me0;
import defpackage.zg;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public final String a;
    public final String b;
    public final String c;
    public final C0158a d;
    public final b e;

    /* JADX INFO: renamed from: com.warefly.checkscan.personalform.presentation.form.bottomSheet.a$a, reason: collision with other inner class name */
    public static final class C0158a {
        public final String a;

        public C0158a(String str) {
            str.getClass();
            this.a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0158a) && aa4.e(this.a, ((C0158a) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("MainButton(title=", this.a, ")");
        }
    }

    public static final class b {
        public final String a;
        public final boolean b;

        public b(String str, boolean z) {
            str.getClass();
            this.a = str;
            this.b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && this.b == bVar.b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "SecondaryButton(title=" + this.a + ", finishOnboarding=" + this.b + ")";
        }
    }

    public a(String str, String str2, String str3, C0158a c0158a, b bVar) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = c0158a;
        this.e = bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && this.c.equals(aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        C0158a c0158a = this.d;
        int iHashCode = (iB + (c0158a == null ? 0 : c0158a.a.hashCode())) * 31;
        b bVar = this.e;
        return iHashCode + (bVar != null ? bVar.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("AfterOnboardingWarning(title=", this.a, ", description=", this.b, ", iconUrl=");
        sbD.append(this.c);
        sbD.append(", mainButton=");
        sbD.append(this.d);
        sbD.append(", secondaryButton=");
        sbD.append(this.e);
        sbD.append(")");
        return sbD.toString();
    }
}
