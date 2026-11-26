package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import defpackage.h8;
import defpackage.mj;
import defpackage.rs2;

/* JADX INFO: loaded from: classes.dex */
public interface TextInclusionStrategy {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final TextInclusionStrategy AnyOverlap = new rs2();
        private static final TextInclusionStrategy ContainsAll = new mj(2);
        private static final TextInclusionStrategy ContainsCenter = new h8();

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean ContainsAll$lambda$0(Rect rect, Rect rect2) {
            return !rect2.isEmpty() && rect.getLeft() >= rect2.getLeft() && rect.getRight() <= rect2.getRight() && rect.getTop() >= rect2.getTop() && rect.getBottom() <= rect2.getBottom();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean ContainsCenter$lambda$0(Rect rect, Rect rect2) {
            return rect2.m6013containsk4lQ0M(rect.m6017getCenterF1C5BW0());
        }

        public final TextInclusionStrategy getAnyOverlap() {
            return AnyOverlap;
        }

        public final TextInclusionStrategy getContainsAll() {
            return ContainsAll;
        }

        public final TextInclusionStrategy getContainsCenter() {
            return ContainsCenter;
        }
    }

    boolean isIncluded(Rect rect, Rect rect2);
}
