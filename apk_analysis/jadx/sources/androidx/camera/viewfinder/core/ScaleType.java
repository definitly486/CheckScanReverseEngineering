package androidx.camera.viewfinder.core;

import androidx.camera.viewfinder.core.impl.Alignment;
import androidx.camera.viewfinder.core.impl.ContentScale;
import defpackage.fg;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public enum ScaleType {
    FILL_START(0, ScaleTypeKt.Fill, ScaleTypeKt.Start),
    FILL_CENTER(1, ScaleTypeKt.Fill, ScaleTypeKt.Center),
    FILL_END(2, ScaleTypeKt.Fill, ScaleTypeKt.End),
    FIT_START(3, ScaleTypeKt.Fit, ScaleTypeKt.Start),
    FIT_CENTER(4, ScaleTypeKt.Fit, ScaleTypeKt.Center),
    FIT_END(5, ScaleTypeKt.Fit, ScaleTypeKt.End);

    private final Alignment alignment;
    private final ContentScale contentScale;
    private final int id;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    ScaleType(int i, ContentScale contentScale, Alignment alignment) {
        this.id = i;
        this.contentScale = contentScale;
        this.alignment = alignment;
    }

    public static final ScaleType fromId(int i) {
        return Companion.fromId(i);
    }

    public static g03<ScaleType> getEntries() {
        return $ENTRIES;
    }

    public final Alignment getAlignment$viewfinder_core_release() {
        return this.alignment;
    }

    public final ContentScale getContentScale$viewfinder_core_release() {
        return this.contentScale;
    }

    public final int getId() {
        return this.id;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ScaleType fromId(int i) {
            for (ScaleType scaleType : ScaleType.values()) {
                if (scaleType.getId() == i) {
                    return scaleType;
                }
            }
            fg.c(jh.b(i, "Unknown scale type id "));
            return null;
        }

        private Companion() {
        }
    }
}
