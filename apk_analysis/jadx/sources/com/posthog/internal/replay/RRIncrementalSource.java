package com.posthog.internal.replay;

import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public enum RRIncrementalSource {
    Mutation(0),
    MouseMove(1),
    MouseInteraction(2),
    Scroll(3),
    ViewportResize(4),
    Input(5),
    TouchMove(6),
    MediaInteraction(7),
    StyleSheetRule(8),
    CanvasMutation(9),
    Font(10),
    Log(11),
    Drag(12),
    StyleDeclaration(13),
    Selection(14),
    AdoptedStyleSheet(15),
    CustomElement(16);

    private final int value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    RRIncrementalSource(int i) {
        this.value = i;
    }

    public static g03<RRIncrementalSource> getEntries() {
        return $ENTRIES;
    }

    public final int getValue() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final RRIncrementalSource fromValue(int i) {
            switch (i) {
                case 0:
                    return RRIncrementalSource.Mutation;
                case 1:
                    return RRIncrementalSource.MouseMove;
                case 2:
                    return RRIncrementalSource.MouseInteraction;
                case 3:
                    return RRIncrementalSource.Scroll;
                case 4:
                    return RRIncrementalSource.ViewportResize;
                case 5:
                    return RRIncrementalSource.Input;
                case 6:
                    return RRIncrementalSource.TouchMove;
                case 7:
                    return RRIncrementalSource.MediaInteraction;
                case 8:
                    return RRIncrementalSource.StyleSheetRule;
                case 9:
                    return RRIncrementalSource.CanvasMutation;
                case 10:
                    return RRIncrementalSource.Font;
                case 11:
                    return RRIncrementalSource.Log;
                case 12:
                    return RRIncrementalSource.Drag;
                case 13:
                    return RRIncrementalSource.StyleDeclaration;
                case 14:
                    return RRIncrementalSource.Selection;
                case 15:
                    return RRIncrementalSource.AdoptedStyleSheet;
                case 16:
                    return RRIncrementalSource.CustomElement;
                default:
                    return null;
            }
        }

        private Companion() {
        }
    }
}
