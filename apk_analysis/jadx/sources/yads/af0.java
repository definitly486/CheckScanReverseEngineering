package yads;

import com.yandex.mobile.ads.R$style;

/* JADX INFO: loaded from: classes6.dex */
public final class af0 {
    public final String a;
    public final int b;
    public final int c;

    public af0(String str, int i) {
        int i2 = R$style.DebugPanelText_Body2;
        this.a = str;
        this.b = i;
        this.c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof af0)) {
            return false;
        }
        af0 af0Var = (af0) obj;
        return defpackage.aa4.e(this.a, af0Var.a) && this.b == af0Var.b && this.c == af0Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + i96.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        String str = this.a;
        int i = this.b;
        return defpackage.l2.e(defpackage.mz0.a(i, "DebugPanelColoredText(text=", str, ", color=", ", style="), ")", this.c);
    }

    public af0(int i, int i2, String str) {
        this.a = str;
        this.b = i;
        this.c = i2;
    }
}
