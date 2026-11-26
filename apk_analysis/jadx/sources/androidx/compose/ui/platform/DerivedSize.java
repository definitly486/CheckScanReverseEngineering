package androidx.compose.ui.platform;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class DerivedSize {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final DerivedSize Zero = new DerivedSize(IntSize.Companion.m9218getZeroYbymL2g(), DpSize.Companion.m9150getZeroMYxV2XQ(), null);
    private final long dpSize;
    private final long pxSize;

    private DerivedSize(long j, long j2) {
        this.pxSize = j;
        this.dpSize = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DerivedSize)) {
            return false;
        }
        DerivedSize derivedSize = (DerivedSize) obj;
        return IntSize.m9211equalsimpl0(this.pxSize, derivedSize.pxSize) && DpSize.m9137equalsimpl0(this.dpSize, derivedSize.dpSize);
    }

    /* JADX INFO: renamed from: getDpSize-MYxV2XQ, reason: not valid java name */
    public final long m8175getDpSizeMYxV2XQ() {
        return this.dpSize;
    }

    /* JADX INFO: renamed from: getPxSize-YbymL2g, reason: not valid java name */
    public final long m8176getPxSizeYbymL2g() {
        return this.pxSize;
    }

    public int hashCode() {
        return DpSize.m9142hashCodeimpl(this.dpSize) + (IntSize.m9214hashCodeimpl(this.pxSize) * 31);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: fromDpSize-itqla9I, reason: not valid java name */
        public final DerivedSize m8177fromDpSizeitqla9I(long j, Density density) {
            return new DerivedSize(IntSizeKt.m9224toIntSizeuvyYCjk(density.mo1435toSizeXkaWNTQ(j)), j, null);
        }

        /* JADX INFO: renamed from: fromPxSize-viCIZxY, reason: not valid java name */
        public final DerivedSize m8178fromPxSizeviCIZxY(long j, Density density) {
            return new DerivedSize(j, density.mo1432toDpSizekrfVVM(IntSizeKt.m9225toSizeozmzZPI(j)), null);
        }

        public final DerivedSize getZero() {
            return DerivedSize.Zero;
        }

        private Companion() {
        }
    }

    public /* synthetic */ DerivedSize(long j, long j2, jh2 jh2Var) {
        this(j, j2);
    }
}
