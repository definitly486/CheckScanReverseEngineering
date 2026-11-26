package com.posthog.internal.replay;

import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public enum RREventType {
    DomContentLoaded(0),
    Load(1),
    FullSnapshot(2),
    IncrementalSnapshot(3),
    Meta(4),
    Custom(5),
    Plugin(6);

    private final int value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    RREventType(int i) {
        this.value = i;
    }

    public static g03<RREventType> getEntries() {
        return $ENTRIES;
    }

    public final int getValue() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final RREventType fromValue(int i) {
            switch (i) {
                case 0:
                    return RREventType.DomContentLoaded;
                case 1:
                    return RREventType.Load;
                case 2:
                    return RREventType.FullSnapshot;
                case 3:
                    return RREventType.IncrementalSnapshot;
                case 4:
                    return RREventType.Meta;
                case 5:
                    return RREventType.Custom;
                case 6:
                    return RREventType.Plugin;
                default:
                    return null;
            }
        }

        private Companion() {
        }
    }
}
