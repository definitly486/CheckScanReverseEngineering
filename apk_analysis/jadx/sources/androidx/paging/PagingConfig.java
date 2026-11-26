package androidx.paging;

import defpackage.bg;
import defpackage.fg;
import defpackage.jh2;
import defpackage.ln;

/* JADX INFO: loaded from: classes3.dex */
public final class PagingConfig {
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_INITIAL_PAGE_MULTIPLIER = 3;
    public static final int MAX_SIZE_UNBOUNDED = Integer.MAX_VALUE;
    public final boolean enablePlaceholders;
    public final int initialLoadSize;
    public final int jumpThreshold;
    public final int maxSize;
    public final int pageSize;
    public final int prefetchDistance;

    public PagingConfig(int i, int i2, boolean z, int i3, int i4, int i5) {
        this.pageSize = i;
        this.prefetchDistance = i2;
        this.enablePlaceholders = z;
        this.initialLoadSize = i3;
        this.maxSize = i4;
        this.jumpThreshold = i5;
        if (!z && i2 == 0) {
            fg.c("Placeholders and prefetch are the only ways to trigger loading of more data in PagingData, so either placeholders must be enabled, or prefetch distance must be > 0.");
            throw null;
        }
        if (i4 != Integer.MAX_VALUE && i4 < (i2 * 2) + i) {
            ln.f(i4, bg.f(i, i2, "Maximum size must be at least pageSize + 2*prefetchDist, pageSize=", ", prefetchDist=", ", maxSize="));
            throw null;
        }
        if (i5 == Integer.MIN_VALUE || i5 > 0) {
            return;
        }
        fg.c("jumpThreshold must be positive to enable jumps or COUNT_UNDEFINED to disable jumping.");
        throw null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getMAX_SIZE_UNBOUNDED$annotations() {
        }

        private Companion() {
        }
    }

    public PagingConfig(int i, int i2) {
        this(i, i2, false, 0, 0, 0, 60, null);
    }

    public PagingConfig(int i, int i2, boolean z) {
        this(i, i2, z, 0, 0, 0, 56, null);
    }

    public PagingConfig(int i, int i2, boolean z, int i3) {
        this(i, i2, z, i3, 0, 0, 48, null);
    }

    public PagingConfig(int i, int i2, boolean z, int i3, int i4) {
        this(i, i2, z, i3, i4, 0, 32, null);
    }

    public PagingConfig(int i) {
        this(i, 0, false, 0, 0, 0, 62, null);
    }

    public /* synthetic */ PagingConfig(int i, int i2, boolean z, int i3, int i4, int i5, int i6, jh2 jh2Var) {
        this(i, (i6 & 2) != 0 ? i : i2, (i6 & 4) != 0 ? true : z, (i6 & 8) != 0 ? i * 3 : i3, (i6 & 16) != 0 ? Integer.MAX_VALUE : i4, (i6 & 32) != 0 ? Integer.MIN_VALUE : i5);
    }
}
