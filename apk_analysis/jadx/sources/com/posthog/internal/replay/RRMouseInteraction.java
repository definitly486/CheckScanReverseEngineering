package com.posthog.internal.replay;

import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public enum RRMouseInteraction {
    MouseUp(0),
    MouseDown(1),
    Click(2),
    ContextMenu(3),
    DblClick(4),
    Focus(5),
    Blur(6),
    TouchStart(7),
    TouchMoveDeparted(8),
    TouchEnd(9),
    TouchCancel(10);

    private final int value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    RRMouseInteraction(int i) {
        this.value = i;
    }

    public static g03<RRMouseInteraction> getEntries() {
        return $ENTRIES;
    }

    public final int getValue() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final RRMouseInteraction fromValue(int i) {
            switch (i) {
                case 0:
                    return RRMouseInteraction.MouseUp;
                case 1:
                    return RRMouseInteraction.MouseDown;
                case 2:
                    return RRMouseInteraction.Click;
                case 3:
                    return RRMouseInteraction.ContextMenu;
                case 4:
                    return RRMouseInteraction.DblClick;
                case 5:
                    return RRMouseInteraction.Focus;
                case 6:
                    return RRMouseInteraction.Blur;
                case 7:
                    return RRMouseInteraction.TouchStart;
                case 8:
                    return RRMouseInteraction.TouchMoveDeparted;
                case 9:
                    return RRMouseInteraction.TouchEnd;
                case 10:
                    return RRMouseInteraction.TouchCancel;
                default:
                    return null;
            }
        }

        private Companion() {
        }
    }
}
