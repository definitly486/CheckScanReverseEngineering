package yads;

import com.yandex.mobile.ads.R$attr;
import com.yandex.mobile.ads.R$style;

/* JADX INFO: loaded from: classes6.dex */
public final class rg0 {
    public final String a;
    public final int b;
    public final Integer c;
    public final int d;

    public rg0(String str, int i, Integer num, int i2, int i3) {
        i = (i3 & 2) != 0 ? R$attr.debug_panel_label_primary : i;
        num = (i3 & 4) != 0 ? null : num;
        i2 = (i3 & 8) != 0 ? R$style.DebugPanelText_Body1 : i2;
        this.a = str;
        this.b = i;
        this.c = num;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rg0)) {
            return false;
        }
        rg0 rg0Var = (rg0) obj;
        return defpackage.aa4.e(this.a, rg0Var.a) && this.b == rg0Var.b && defpackage.aa4.e(this.c, rg0Var.c) && this.d == rg0Var.d;
    }

    public final int hashCode() {
        int iA = i96.a(this.b, this.a.hashCode() * 31, 31);
        Integer num = this.c;
        return Integer.hashCode(this.d) + ((iA + (num == null ? 0 : num.hashCode())) * 31);
    }

    public final String toString() {
        String str = this.a;
        int i = this.b;
        Integer num = this.c;
        int i2 = this.d;
        StringBuilder sbA = defpackage.mz0.a(i, "DebugPanelTextWithIcon(text=", str, ", color=", ", icon=");
        sbA.append(num);
        sbA.append(", style=");
        sbA.append(i2);
        sbA.append(")");
        return sbA.toString();
    }
}
