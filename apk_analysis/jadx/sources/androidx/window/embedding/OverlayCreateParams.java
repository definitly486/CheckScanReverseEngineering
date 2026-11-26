package androidx.window.embedding;

import defpackage.jh2;
import defpackage.x07;
import defpackage.y74;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class OverlayCreateParams {
    public static final Companion Companion = new Companion(null);
    private final OverlayAttributes overlayAttributes;
    private final String tag;

    public static final class Builder {
        private OverlayAttributes launchAttrs;
        private String tag;

        public final OverlayCreateParams build() {
            String strGenerateOverlayTag = this.tag;
            if (strGenerateOverlayTag == null) {
                strGenerateOverlayTag = OverlayCreateParams.Companion.generateOverlayTag();
            }
            OverlayAttributes overlayAttributesBuild = this.launchAttrs;
            if (overlayAttributesBuild == null) {
                overlayAttributesBuild = new OverlayAttributes.Builder().build();
            }
            return new OverlayCreateParams(strGenerateOverlayTag, overlayAttributesBuild);
        }

        public final Builder setOverlayAttributes(OverlayAttributes overlayAttributes) {
            overlayAttributes.getClass();
            this.launchAttrs = overlayAttributes;
            return this;
        }

        public final Builder setTag(String str) {
            str.getClass();
            this.tag = str;
            return this;
        }
    }

    public /* synthetic */ OverlayCreateParams(String str, OverlayAttributes overlayAttributes, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Companion.generateOverlayTag() : str, (i & 2) != 0 ? new OverlayAttributes.Builder().build() : overlayAttributes);
    }

    public static final String generateOverlayTag() {
        return Companion.generateOverlayTag();
    }

    public final OverlayAttributes getOverlayAttributes() {
        return this.overlayAttributes;
    }

    public final String getTag() {
        return this.tag;
    }

    public String toString() {
        return x07.a(OverlayCreateParams.class).f() + ":{ , tag=" + this.tag + ", attrs=" + this.overlayAttributes + '}';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final String generateOverlayTag() {
            String string = UUID.randomUUID().toString();
            string.getClass();
            return string.substring(0, new y74(0, 32, 1).c + 1);
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OverlayCreateParams(String str) {
        this(str, null, 2, 0 == true ? 1 : 0);
        str.getClass();
    }

    public OverlayCreateParams(String str, OverlayAttributes overlayAttributes) {
        str.getClass();
        overlayAttributes.getClass();
        this.tag = str;
        this.overlayAttributes = overlayAttributes;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OverlayCreateParams() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
