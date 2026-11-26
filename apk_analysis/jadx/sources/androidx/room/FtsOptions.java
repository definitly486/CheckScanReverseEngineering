package androidx.room;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes3.dex */
public final class FtsOptions {
    public static final FtsOptions INSTANCE = new FtsOptions();
    public static final String TOKENIZER_ICU = "icu";
    public static final String TOKENIZER_PORTER = "porter";
    public static final String TOKENIZER_SIMPLE = "simple";
    public static final String TOKENIZER_UNICODE61 = "unicode61";

    public enum MatchInfo {
        FTS3,
        FTS4;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<MatchInfo> getEntries() {
            return $ENTRIES;
        }
    }

    public enum Order {
        ASC,
        DESC;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<Order> getEntries() {
            return $ENTRIES;
        }
    }

    private FtsOptions() {
    }
}
