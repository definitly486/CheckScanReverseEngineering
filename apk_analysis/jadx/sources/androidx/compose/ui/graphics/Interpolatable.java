package androidx.compose.ui.graphics;

import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
public interface Interpolatable {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0030 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:19:0x0031 A[RETURN] */
        public final Object lerp(Object obj, Object obj2, float f) {
            if (aa4.e(obj, obj2)) {
                if (f < 0.5f) {
                    return obj;
                }
                return obj2;
            }
            Object objLerp = obj instanceof Interpolatable ? ((Interpolatable) obj).lerp(obj2, f) : null;
            if (objLerp == null && (obj2 instanceof Interpolatable)) {
                objLerp = ((Interpolatable) obj2).lerp(obj, 1.0f - f);
            }
            if (objLerp != null) {
                return objLerp;
            }
            if (f < 0.5f) {
                return obj;
            }
            return obj2;
        }
    }

    Object lerp(Object obj, float f);
}
