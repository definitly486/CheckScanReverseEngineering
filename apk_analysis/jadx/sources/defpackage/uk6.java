package defpackage;

import androidx.compose.ui.graphics.Color;

/* JADX INFO: loaded from: classes2.dex */
public interface uk6 {

    public static final class a implements uk6 {
    }

    public static final class b implements uk6 {
    }

    public static final class c implements uk6 {
        public static final c a = new c();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof c);
        }

        public final int hashCode() {
            return -488788439;
        }

        public final String toString() {
            return "Loading";
        }
    }

    public static final class d implements uk6 {
        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof d);
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "OnlyProfilePic(avatarUrl=null)";
        }
    }

    public static final class e implements uk6 {
        public final long a;
        public final long b;
        public final long c;
        public final Color d;

        public e(long j, long j2, long j3, Color color) {
            this.a = j;
            this.b = j2;
            this.c = j3;
            this.d = color;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return Color.m6233equalsimpl0(this.a, eVar.a) && Color.m6233equalsimpl0(this.b, eVar.b) && Color.m6233equalsimpl0(this.c, eVar.c) && aa4.e(this.d, eVar.d);
        }

        public final int hashCode() {
            int iB = r01.b(r01.b(r01.b(2496275, 31, this.a), 31, this.b), 31, this.c);
            Color color = this.d;
            return tg.c((iB + (color == null ? 0 : Color.m6239hashCodeimpl(color.m6242unboximpl()))) * 31, 31, false);
        }

        public final String toString() {
            String strM6240toStringimpl = Color.m6240toStringimpl(this.a);
            String strM6240toStringimpl2 = Color.m6240toStringimpl(this.b);
            String strM6240toStringimpl3 = Color.m6240toStringimpl(this.c);
            StringBuilder sbD = ad2.d("Subscription(title=Pro, titleColor=", strM6240toStringimpl, ", gradientStart=", strM6240toStringimpl2, ", gradientEnd=");
            sbD.append(strM6240toStringimpl3);
            sbD.append(", strokeColor=");
            sbD.append(this.d);
            sbD.append(", isStrikeThrough=false, avatarUrl=null)");
            return sbD.toString();
        }
    }
}
