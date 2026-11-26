package com.warefly.checkscan.shared.infoBottomSheet.presentation;

import defpackage.aa4;
import defpackage.me0;
import defpackage.ni0;
import defpackage.pz3;
import defpackage.qn1;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements pz3 {
    public final String a;
    public final ArrayList b;

    public static final class a implements pz3 {
        public final String a;

        public a(String str) {
            str.getClass();
            this.a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && aa4.e(this.a, ((a) obj).a);
        }

        @Override // defpackage.pz3
        public final Object f() {
            return this.a;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        @Override // defpackage.pz3
        public final Object id() {
            return this.a;
        }

        public final String toString() {
            return me0.c("InfoTextBlockViewModel(text=", this.a, ")");
        }
    }

    public b(String str, ArrayList arrayList) {
        this.a = str;
        this.b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return aa4.e(this.a, bVar.a) && this.b.equals(bVar.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.a, qn1.a0(this.b, null, null, null, 0, null, 63));
    }

    public final int hashCode() {
        String str = this.a;
        return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return "info_badge_button";
    }

    public final String toString() {
        return "InfoBadgeViewModel(text=" + this.a + ", htmlTexts=" + this.b + ")";
    }
}
