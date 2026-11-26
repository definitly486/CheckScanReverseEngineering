package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class lv4 {
    public static final kv4 Companion = new kv4();
    public final Integer a;
    public final Integer b;
    public final Integer c;
    public final Integer d;
    public final Integer e;

    public lv4(int i, Integer num, Integer num2, Integer num3, Integer num4, Integer num5) {
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = num;
        }
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = num2;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = num3;
        }
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = num4;
        }
        if ((i & 16) == 0) {
            this.e = null;
        } else {
            this.e = num5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lv4)) {
            return false;
        }
        lv4 lv4Var = (lv4) obj;
        return defpackage.aa4.e(this.a, lv4Var.a) && defpackage.aa4.e(this.b, lv4Var.b) && defpackage.aa4.e(this.c, lv4Var.c) && defpackage.aa4.e(this.d, lv4Var.d) && defpackage.aa4.e(this.e, lv4Var.e);
    }

    public final int hashCode() {
        Integer num = this.a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.b;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.c;
        int iHashCode3 = (iHashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.d;
        int iHashCode4 = (iHashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.e;
        return iHashCode4 + (num5 != null ? num5.hashCode() : 0);
    }

    public final String toString() {
        return "PlayBackOptimizationConfig(minBufferMs=" + this.a + ", maxBufferMs=" + this.b + ", bufferForPlaybackMs=" + this.c + ", bufferForPlaybackAfterRebufferMs=" + this.d + ", targetBufferBytes=" + this.e + ")";
    }
}
