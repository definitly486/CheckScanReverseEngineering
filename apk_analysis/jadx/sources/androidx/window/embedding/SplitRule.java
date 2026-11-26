package androidx.window.embedding;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.WindowMetrics;
import androidx.core.util.Preconditions;
import defpackage.aa4;
import defpackage.fg;
import defpackage.jh;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public class SplitRule extends EmbeddingRule {
    public static final int SPLIT_MIN_DIMENSION_ALWAYS_ALLOW = 0;
    public static final int SPLIT_MIN_DIMENSION_DP_DEFAULT = 600;
    private final SplitAttributes defaultSplitAttributes;
    private final EmbeddingAspectRatio maxAspectRatioInLandscape;
    private final EmbeddingAspectRatio maxAspectRatioInPortrait;
    private final int minHeightDp;
    private final int minSmallestWidthDp;
    private final int minWidthDp;
    public static final Companion Companion = new Companion(null);
    public static final EmbeddingAspectRatio SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT = EmbeddingAspectRatio.Companion.ratio(1.4f);
    public static final EmbeddingAspectRatio SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT = EmbeddingAspectRatio.ALWAYS_ALLOW;

    public static final class Api30Impl {
        public static final Api30Impl INSTANCE = new Api30Impl();

        private Api30Impl() {
        }

        public final Rect getBounds(WindowMetrics windowMetrics) {
            windowMetrics.getClass();
            Rect bounds = windowMetrics.getBounds();
            bounds.getClass();
            return bounds;
        }
    }

    public static final class Api34Impl {
        public static final Api34Impl INSTANCE = new Api34Impl();

        private Api34Impl() {
        }

        public final float getDensity(WindowMetrics windowMetrics, Context context) {
            windowMetrics.getClass();
            context.getClass();
            try {
                return windowMetrics.getDensity();
            } catch (NoSuchMethodError unused) {
                return context.getResources().getDisplayMetrics().density;
            }
        }
    }

    public /* synthetic */ SplitRule(String str, int i, int i2, int i3, EmbeddingAspectRatio embeddingAspectRatio, EmbeddingAspectRatio embeddingAspectRatio2, SplitAttributes splitAttributes, int i4, jh2 jh2Var) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? 600 : i, (i4 & 4) != 0 ? 600 : i2, (i4 & 8) != 0 ? 600 : i3, (i4 & 16) != 0 ? SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT : embeddingAspectRatio, (i4 & 32) != 0 ? SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT : embeddingAspectRatio2, splitAttributes);
    }

    private final int convertDpToPx(float f, int i) {
        return (int) ((i * f) + 0.5f);
    }

    public final boolean checkParentBounds$window_release(float f, Rect rect) {
        rect.getClass();
        int iWidth = rect.width();
        int iHeight = rect.height();
        if (iWidth != 0 && iHeight != 0) {
            int iConvertDpToPx = convertDpToPx(f, this.minWidthDp);
            int iConvertDpToPx2 = convertDpToPx(f, this.minHeightDp);
            int iConvertDpToPx3 = convertDpToPx(f, this.minSmallestWidthDp);
            boolean z = this.minWidthDp == 0 || iWidth >= iConvertDpToPx;
            boolean z2 = this.minHeightDp == 0 || iHeight >= iConvertDpToPx2;
            boolean z3 = this.minSmallestWidthDp == 0 || Math.min(iWidth, iHeight) >= iConvertDpToPx3;
            boolean z4 = iHeight < iWidth ? aa4.e(this.maxAspectRatioInLandscape, EmbeddingAspectRatio.ALWAYS_ALLOW) || (((float) iWidth) * 1.0f) / ((float) iHeight) <= this.maxAspectRatioInLandscape.getValue$window_release() : aa4.e(this.maxAspectRatioInPortrait, EmbeddingAspectRatio.ALWAYS_ALLOW) || (((float) iHeight) * 1.0f) / ((float) iWidth) <= this.maxAspectRatioInPortrait.getValue$window_release();
            if (z && z2 && z3 && z4) {
                return true;
            }
        }
        return false;
    }

    public final boolean checkParentMetrics$window_release(Context context, WindowMetrics windowMetrics) {
        context.getClass();
        windowMetrics.getClass();
        int i = Build.VERSION.SDK_INT;
        if (i <= 30) {
            return false;
        }
        return checkParentBounds$window_release(i <= 33 ? context.getResources().getDisplayMetrics().density : Api34Impl.INSTANCE.getDensity(windowMetrics, context), Api30Impl.INSTANCE.getBounds(windowMetrics));
    }

    @Override // androidx.window.embedding.EmbeddingRule
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitRule) || !super.equals(obj)) {
            return false;
        }
        SplitRule splitRule = (SplitRule) obj;
        return this.minWidthDp == splitRule.minWidthDp && this.minHeightDp == splitRule.minHeightDp && this.minSmallestWidthDp == splitRule.minSmallestWidthDp && aa4.e(this.maxAspectRatioInPortrait, splitRule.maxAspectRatioInPortrait) && aa4.e(this.maxAspectRatioInLandscape, splitRule.maxAspectRatioInLandscape) && aa4.e(this.defaultSplitAttributes, splitRule.defaultSplitAttributes);
    }

    public final SplitAttributes getDefaultSplitAttributes() {
        return this.defaultSplitAttributes;
    }

    public final EmbeddingAspectRatio getMaxAspectRatioInLandscape() {
        return this.maxAspectRatioInLandscape;
    }

    public final EmbeddingAspectRatio getMaxAspectRatioInPortrait() {
        return this.maxAspectRatioInPortrait;
    }

    public final int getMinHeightDp() {
        return this.minHeightDp;
    }

    public final int getMinSmallestWidthDp() {
        return this.minSmallestWidthDp;
    }

    public final int getMinWidthDp() {
        return this.minWidthDp;
    }

    @Override // androidx.window.embedding.EmbeddingRule
    public int hashCode() {
        return this.defaultSplitAttributes.hashCode() + ((this.maxAspectRatioInLandscape.hashCode() + ((this.maxAspectRatioInPortrait.hashCode() + (((((((super.hashCode() * 31) + this.minWidthDp) * 31) + this.minHeightDp) * 31) + this.minSmallestWidthDp) * 31)) * 31)) * 31);
    }

    public String toString() {
        return "SplitRule{ tag=" + getTag() + ", defaultSplitAttributes=" + this.defaultSplitAttributes + ", minWidthDp=" + this.minWidthDp + ", minHeightDp=" + this.minHeightDp + ", minSmallestWidthDp=" + this.minSmallestWidthDp + ", maxAspectRatioInPortrait=" + this.maxAspectRatioInPortrait + ", maxAspectRatioInLandscape=" + this.maxAspectRatioInLandscape + '}';
    }

    public static final class FinishBehavior {
        private final String description;
        private final int value;
        public static final Companion Companion = new Companion(null);
        public static final FinishBehavior NEVER = new FinishBehavior("NEVER", 0);
        public static final FinishBehavior ALWAYS = new FinishBehavior("ALWAYS", 1);
        public static final FinishBehavior ADJACENT = new FinishBehavior("ADJACENT", 2);

        private FinishBehavior(String str, int i) {
            this.description = str;
            this.value = i;
        }

        public final int getValue$window_release() {
            return this.value;
        }

        public int hashCode() {
            return (this.description.hashCode() * 31) + this.value;
        }

        public String toString() {
            return this.description;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final FinishBehavior getFinishBehaviorFromValue$window_release(int i) {
                FinishBehavior finishBehavior = FinishBehavior.NEVER;
                if (i == finishBehavior.getValue$window_release()) {
                    return finishBehavior;
                }
                FinishBehavior finishBehavior2 = FinishBehavior.ALWAYS;
                if (i == finishBehavior2.getValue$window_release()) {
                    return finishBehavior2;
                }
                FinishBehavior finishBehavior3 = FinishBehavior.ADJACENT;
                if (i == finishBehavior3.getValue$window_release()) {
                    return finishBehavior3;
                }
                fg.c(jh.b(i, "Unknown finish behavior:"));
                return null;
            }

            private Companion() {
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplitRule(String str, int i, int i2, int i3, EmbeddingAspectRatio embeddingAspectRatio, EmbeddingAspectRatio embeddingAspectRatio2, SplitAttributes splitAttributes) {
        super(str);
        embeddingAspectRatio.getClass();
        embeddingAspectRatio2.getClass();
        splitAttributes.getClass();
        this.minWidthDp = i;
        this.minHeightDp = i2;
        this.minSmallestWidthDp = i3;
        this.maxAspectRatioInPortrait = embeddingAspectRatio;
        this.maxAspectRatioInLandscape = embeddingAspectRatio2;
        this.defaultSplitAttributes = splitAttributes;
        Preconditions.checkArgumentNonnegative(i, "minWidthDp must be non-negative");
        Preconditions.checkArgumentNonnegative(i2, "minHeightDp must be non-negative");
        Preconditions.checkArgumentNonnegative(i3, "minSmallestWidthDp must be non-negative");
    }
}
