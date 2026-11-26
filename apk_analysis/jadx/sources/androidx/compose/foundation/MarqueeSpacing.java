package androidx.compose.foundation;

import androidx.compose.foundation.MarqueeSpacing;
import androidx.compose.ui.unit.Density;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public interface MarqueeSpacing {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int fractionOfContainer$lambda$0(float f, Density density, int i, int i2) {
            return w65.b(f * i2);
        }

        public final MarqueeSpacing fractionOfContainer(final float f) {
            return new MarqueeSpacing() { // from class: h15
                @Override // androidx.compose.foundation.MarqueeSpacing
                public final int calculateSpacing(Density density, int i, int i2) {
                    return MarqueeSpacing.Companion.fractionOfContainer$lambda$0(f, density, i, i2);
                }
            };
        }
    }

    int calculateSpacing(Density density, int i, int i2);
}
