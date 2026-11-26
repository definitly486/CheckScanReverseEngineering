package androidx.window.embedding;

import android.graphics.Rect;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.window.core.Bounds;
import androidx.window.layout.DisplayFeature;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowLayoutInfo;
import defpackage.aa4;
import defpackage.fg;
import defpackage.jh;
import defpackage.jh2;
import defpackage.mz0;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class EmbeddingBounds {
    public static final EmbeddingBounds BOUNDS_EXPANDED;
    public static final EmbeddingBounds BOUNDS_HINGE_BOTTOM;
    public static final EmbeddingBounds BOUNDS_HINGE_LEFT;
    public static final EmbeddingBounds BOUNDS_HINGE_RIGHT;
    public static final EmbeddingBounds BOUNDS_HINGE_TOP;
    public static final Companion Companion = new Companion(null);
    private final Alignment alignment;
    private final Dimension height;
    private final Dimension width;

    static {
        Alignment alignment = Alignment.ALIGN_TOP;
        Dimension dimension = Dimension.DIMENSION_EXPANDED;
        BOUNDS_EXPANDED = new EmbeddingBounds(alignment, dimension, dimension);
        Dimension dimension2 = Dimension.DIMENSION_HINGE;
        BOUNDS_HINGE_TOP = new EmbeddingBounds(alignment, dimension, dimension2);
        BOUNDS_HINGE_LEFT = new EmbeddingBounds(Alignment.ALIGN_LEFT, dimension2, dimension);
        BOUNDS_HINGE_BOTTOM = new EmbeddingBounds(Alignment.ALIGN_BOTTOM, dimension, dimension2);
        BOUNDS_HINGE_RIGHT = new EmbeddingBounds(Alignment.ALIGN_RIGHT, dimension2, dimension);
    }

    public EmbeddingBounds(Alignment alignment, Dimension dimension, Dimension dimension2) {
        alignment.getClass();
        dimension.getClass();
        dimension2.getClass();
        this.alignment = alignment;
        this.width = dimension;
        this.height = dimension2;
    }

    private final FoldingFeature getOnlyFoldingFeatureOrNull(WindowLayoutInfo windowLayoutInfo) {
        List<DisplayFeature> displayFeatures = windowLayoutInfo.getDisplayFeatures();
        ArrayList arrayList = new ArrayList();
        for (Object obj : displayFeatures) {
            if (obj instanceof FoldingFeature) {
                arrayList.add(obj);
            }
        }
        if (arrayList.size() == 1) {
            return (FoldingFeature) arrayList.get(0);
        }
        return null;
    }

    private final boolean isHorizontal(WindowLayoutInfo windowLayoutInfo) {
        FoldingFeature onlyFoldingFeatureOrNull = getOnlyFoldingFeatureOrNull(windowLayoutInfo);
        if (onlyFoldingFeatureOrNull == null) {
            return false;
        }
        return aa4.e(onlyFoldingFeatureOrNull.getOrientation(), FoldingFeature.Orientation.HORIZONTAL);
    }

    private final boolean isVertical(WindowLayoutInfo windowLayoutInfo) {
        FoldingFeature onlyFoldingFeatureOrNull = getOnlyFoldingFeatureOrNull(windowLayoutInfo);
        if (onlyFoldingFeatureOrNull == null) {
            return false;
        }
        return aa4.e(onlyFoldingFeatureOrNull.getOrientation(), FoldingFeature.Orientation.VERTICAL);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EmbeddingBounds)) {
            return false;
        }
        EmbeddingBounds embeddingBounds = (EmbeddingBounds) obj;
        return aa4.e(this.alignment, embeddingBounds.alignment) && aa4.e(this.width, embeddingBounds.width) && aa4.e(this.height, embeddingBounds.height);
    }

    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final Dimension getHeight() {
        return this.height;
    }

    public final int getHeightInPixel$window_release(Bounds bounds, WindowLayoutInfo windowLayoutInfo) {
        bounds.getClass();
        windowLayoutInfo.getClass();
        int height = bounds.getHeight();
        Dimension dimensionRatio = shouldUseFallbackDimensionForHeight$window_release(windowLayoutInfo) ? Dimension.Companion.ratio(0.5f) : this.height;
        if (dimensionRatio instanceof Dimension.Ratio) {
            return ((Dimension.Ratio) dimensionRatio).times$window_release(height);
        }
        if (dimensionRatio instanceof Dimension.Pixel) {
            return Math.min(height, ((Dimension.Pixel) dimensionRatio).getValue$window_release());
        }
        if (!aa4.e(dimensionRatio, Dimension.DIMENSION_HINGE)) {
            mz0.c(this.width, "Unhandled width dimension=");
            return 0;
        }
        FoldingFeature onlyFoldingFeatureOrNull = getOnlyFoldingFeatureOrNull(windowLayoutInfo);
        onlyFoldingFeatureOrNull.getClass();
        Rect bounds2 = onlyFoldingFeatureOrNull.getBounds();
        Alignment alignment = this.alignment;
        if (aa4.e(alignment, Alignment.ALIGN_TOP)) {
            return bounds2.top - bounds.getTop();
        }
        if (aa4.e(alignment, Alignment.ALIGN_BOTTOM)) {
            return bounds.getBottom() - bounds2.bottom;
        }
        throw new IllegalStateException("Unhandled condition to get height in pixel! embeddingBounds=" + this + " taskBounds=" + bounds + " windowLayoutInfo=" + windowLayoutInfo);
    }

    public final Dimension getWidth() {
        return this.width;
    }

    public final int getWidthInPixel$window_release(Bounds bounds, WindowLayoutInfo windowLayoutInfo) {
        bounds.getClass();
        windowLayoutInfo.getClass();
        int width = bounds.getWidth();
        Dimension dimensionRatio = shouldUseFallbackDimensionForWidth$window_release(windowLayoutInfo) ? Dimension.Companion.ratio(0.5f) : this.width;
        if (dimensionRatio instanceof Dimension.Ratio) {
            return ((Dimension.Ratio) dimensionRatio).times$window_release(width);
        }
        if (dimensionRatio instanceof Dimension.Pixel) {
            return Math.min(width, ((Dimension.Pixel) dimensionRatio).getValue$window_release());
        }
        if (!aa4.e(dimensionRatio, Dimension.DIMENSION_HINGE)) {
            mz0.c(this.width, "Unhandled width dimension=");
            return 0;
        }
        FoldingFeature onlyFoldingFeatureOrNull = getOnlyFoldingFeatureOrNull(windowLayoutInfo);
        onlyFoldingFeatureOrNull.getClass();
        Rect bounds2 = onlyFoldingFeatureOrNull.getBounds();
        Alignment alignment = this.alignment;
        if (aa4.e(alignment, Alignment.ALIGN_LEFT)) {
            return bounds2.left - bounds.getLeft();
        }
        if (aa4.e(alignment, Alignment.ALIGN_RIGHT)) {
            return bounds.getRight() - bounds2.right;
        }
        throw new IllegalStateException("Unhandled condition to get height in pixel! embeddingBounds=" + this + " taskBounds=" + bounds + " windowLayoutInfo=" + windowLayoutInfo);
    }

    public int hashCode() {
        return this.height.hashCode() + ((this.width.hashCode() + (this.alignment.hashCode() * 31)) * 31);
    }

    public final boolean shouldUseFallbackDimensionForHeight$window_release(WindowLayoutInfo windowLayoutInfo) {
        windowLayoutInfo.getClass();
        if (aa4.e(this.height, Dimension.DIMENSION_HINGE)) {
            return !isHorizontal(windowLayoutInfo) || u96.i(Alignment.ALIGN_LEFT, Alignment.ALIGN_RIGHT).contains(this.alignment);
        }
        return false;
    }

    public final boolean shouldUseFallbackDimensionForWidth$window_release(WindowLayoutInfo windowLayoutInfo) {
        windowLayoutInfo.getClass();
        if (aa4.e(this.width, Dimension.DIMENSION_HINGE)) {
            return !isVertical(windowLayoutInfo) || u96.i(Alignment.ALIGN_TOP, Alignment.ALIGN_BOTTOM).contains(this.alignment);
        }
        return false;
    }

    public String toString() {
        return "Bounds:{alignment=" + this.alignment + ", width=" + this.width + ", height=" + this.height + '}';
    }

    public static final class Alignment {
        private final int value;
        public static final Companion Companion = new Companion(null);
        public static final Alignment ALIGN_LEFT = new Alignment(0);
        public static final Alignment ALIGN_TOP = new Alignment(1);
        public static final Alignment ALIGN_RIGHT = new Alignment(2);
        public static final Alignment ALIGN_BOTTOM = new Alignment(3);

        public Alignment(int i) {
            this.value = i;
            if (i < 0 || i >= 4) {
                fg.c("Failed requirement.");
                throw null;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Alignment) && this.value == ((Alignment) obj).value;
        }

        public final int getValue$window_release() {
            return this.value;
        }

        public int hashCode() {
            return this.value;
        }

        public String toString() {
            int i = this.value;
            if (i == 0) {
                return TtmlNode.LEFT;
            }
            if (i == 1) {
                return "top";
            }
            if (i == 2) {
                return TtmlNode.RIGHT;
            }
            if (i == 3) {
                return "bottom";
            }
            return "unknown position:" + this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            private Companion() {
            }
        }
    }

    public static abstract class Dimension {
        public static final Companion Companion = new Companion(null);
        public static final Dimension DIMENSION_EXPANDED = new Ratio(1.0f);
        public static final Dimension DIMENSION_HINGE = new Dimension() { // from class: androidx.window.embedding.EmbeddingBounds$Dimension$Companion$DIMENSION_HINGE$1
        };
        private final String description;

        public static final class Pixel extends Dimension {
            private final int value;

            public Pixel(int i) {
                super(jh.b(i, "dimension in pixel:"));
                this.value = i;
                if (i >= 1) {
                    return;
                }
                fg.c("Pixel value must be a positive integer.");
                throw null;
            }

            public final int compareTo$window_release(int i) {
                return this.value - i;
            }

            public final int getValue$window_release() {
                return this.value;
            }
        }

        public static final class Ratio extends Dimension {
            private final float value;

            public Ratio(float f) {
                super("dimension in ratio:" + f);
                this.value = f;
                if (f <= 0.0d || f > 1.0d) {
                    fg.c("Ratio must be in range (0.0, 1.0]");
                    throw null;
                }
            }

            public final float getValue$window_release() {
                return this.value;
            }

            public final int times$window_release(int i) {
                return (int) (this.value * i);
            }
        }

        public Dimension(String str) {
            str.getClass();
            this.description = str;
        }

        public static final Dimension pixel(int i) {
            return Companion.pixel(i);
        }

        public static final Dimension ratio(float f) {
            return Companion.ratio(f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Dimension) {
                return aa4.e(this.description, ((Dimension) obj).description);
            }
            return false;
        }

        public final String getDescription$window_release() {
            return this.description;
        }

        public int hashCode() {
            return this.description.hashCode();
        }

        public String toString() {
            return this.description;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final Dimension pixel(int i) {
                return new Pixel(i);
            }

            public final Dimension ratio(float f) {
                return new Ratio(f);
            }

            private Companion() {
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final Bounds offset(Bounds bounds, int i, int i2) {
            return new Bounds(bounds.getLeft() + i, bounds.getTop() + i2, bounds.getRight() + i, bounds.getBottom() + i2);
        }

        public final Bounds translateEmbeddingBounds$window_release(EmbeddingBounds embeddingBounds, Bounds bounds, WindowLayoutInfo windowLayoutInfo) {
            embeddingBounds.getClass();
            bounds.getClass();
            windowLayoutInfo.getClass();
            Dimension width = embeddingBounds.getWidth();
            Dimension dimension = Dimension.DIMENSION_EXPANDED;
            if (aa4.e(width, dimension) && aa4.e(embeddingBounds.getHeight(), dimension)) {
                return Bounds.Companion.getEMPTY_BOUNDS();
            }
            EmbeddingBounds embeddingBounds2 = new EmbeddingBounds(embeddingBounds.getAlignment(), embeddingBounds.shouldUseFallbackDimensionForWidth$window_release(windowLayoutInfo) ? Dimension.Companion.ratio(0.5f) : embeddingBounds.getWidth(), embeddingBounds.shouldUseFallbackDimensionForHeight$window_release(windowLayoutInfo) ? Dimension.Companion.ratio(0.5f) : embeddingBounds.getHeight());
            int widthInPixel$window_release = embeddingBounds2.getWidthInPixel$window_release(bounds, windowLayoutInfo);
            int heightInPixel$window_release = embeddingBounds2.getHeightInPixel$window_release(bounds, windowLayoutInfo);
            int width2 = bounds.getWidth();
            int height = bounds.getHeight();
            if (widthInPixel$window_release == width2 && heightInPixel$window_release == height) {
                return Bounds.Companion.getEMPTY_BOUNDS();
            }
            Bounds bounds2 = new Bounds(0, 0, widthInPixel$window_release, heightInPixel$window_release);
            Alignment alignment = embeddingBounds.getAlignment();
            if (aa4.e(alignment, Alignment.ALIGN_TOP)) {
                return EmbeddingBounds.Companion.offset(bounds2, (width2 - widthInPixel$window_release) / 2, 0);
            }
            if (aa4.e(alignment, Alignment.ALIGN_LEFT)) {
                return EmbeddingBounds.Companion.offset(bounds2, 0, (height - heightInPixel$window_release) / 2);
            }
            if (aa4.e(alignment, Alignment.ALIGN_BOTTOM)) {
                return EmbeddingBounds.Companion.offset(bounds2, (width2 - widthInPixel$window_release) / 2, height - heightInPixel$window_release);
            }
            if (aa4.e(alignment, Alignment.ALIGN_RIGHT)) {
                return EmbeddingBounds.Companion.offset(bounds2, width2 - widthInPixel$window_release, (height - heightInPixel$window_release) / 2);
            }
            mz0.c(embeddingBounds.getAlignment(), "Unknown alignment: ");
            return null;
        }

        private Companion() {
        }

        public final Bounds translateEmbeddingBounds$window_release(EmbeddingBounds embeddingBounds, ParentContainerInfo parentContainerInfo) {
            embeddingBounds.getClass();
            parentContainerInfo.getClass();
            return translateEmbeddingBounds$window_release(embeddingBounds, parentContainerInfo.getWindowBounds(), parentContainerInfo.getWindowLayoutInfo());
        }
    }
}
