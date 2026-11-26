package androidx.compose.material3.carousel;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
public final class CarouselAlignment {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Start = m4331constructorimpl(-1);
    private static final int Center = m4331constructorimpl(0);
    private static final int End = m4331constructorimpl(1);

    private /* synthetic */ CarouselAlignment(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CarouselAlignment m4330boximpl(int i) {
        return new CarouselAlignment(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m4331constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m4332equalsimpl(int i, Object obj) {
        return (obj instanceof CarouselAlignment) && i == ((CarouselAlignment) obj).m4336unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4333equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m4334hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m4335toStringimpl(int i) {
        return qz0.d("CarouselAlignment(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m4332equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4334hashCodeimpl(this.value);
    }

    public String toString() {
        return m4335toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m4336unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getCenter-NUL3oTo, reason: not valid java name */
        public final int m4337getCenterNUL3oTo() {
            return CarouselAlignment.Center;
        }

        /* JADX INFO: renamed from: getEnd-NUL3oTo, reason: not valid java name */
        public final int m4338getEndNUL3oTo() {
            return CarouselAlignment.End;
        }

        /* JADX INFO: renamed from: getStart-NUL3oTo, reason: not valid java name */
        public final int m4339getStartNUL3oTo() {
            return CarouselAlignment.Start;
        }

        private Companion() {
        }
    }
}
