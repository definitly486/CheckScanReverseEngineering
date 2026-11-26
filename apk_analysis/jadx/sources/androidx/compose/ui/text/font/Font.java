package androidx.compose.ui.text.font;

import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public interface Font {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final long MaximumAsyncTimeoutMillis = 15000;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final long MaximumAsyncTimeoutMillis = 15000;

        private Companion() {
        }
    }

    @ul2
    public interface ResourceLoader {
        @ul2
        Object load(Font font);
    }

    /* JADX INFO: renamed from: getLoadingStrategy-PKNRLFQ */
    default int mo8548getLoadingStrategyPKNRLFQ() {
        return FontLoadingStrategy.Companion.m8595getBlockingPKNRLFQ();
    }

    /* JADX INFO: renamed from: getStyle-_-LCdwA */
    int mo8556getStyle_LCdwA();

    FontWeight getWeight();
}
