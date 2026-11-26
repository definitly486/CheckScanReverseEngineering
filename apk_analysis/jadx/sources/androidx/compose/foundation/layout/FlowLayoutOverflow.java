package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import defpackage.bm3;
import defpackage.g03;
import defpackage.h03;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ul2
public abstract class FlowLayoutOverflow {
    public static final int $stable = 0;
    private final nl3<FlowLayoutOverflowState, bm3<Composer, Integer, j59>> collapseGetter;
    private final int minCrossAxisSizeToShowCollapse;
    private final int minLinesToShowCollapse;
    private final nl3<FlowLayoutOverflowState, bm3<Composer, Integer, j59>> seeMoreGetter;
    private final OverflowType type;

    public enum OverflowType {
        Visible,
        Clip,
        ExpandIndicator,
        ExpandOrCollapseIndicator;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<OverflowType> getEntries() {
            return $ENTRIES;
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OverflowType.values().length];
            try {
                iArr[OverflowType.ExpandIndicator.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OverflowType.ExpandOrCollapseIndicator.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ FlowLayoutOverflow(OverflowType overflowType, int i, int i2, nl3 nl3Var, nl3 nl3Var2, int i3, jh2 jh2Var) {
        this(overflowType, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? null : nl3Var, (i3 & 16) != 0 ? null : nl3Var2, null);
    }

    public final void addOverflowComposables$foundation_layout(FlowLayoutOverflowState flowLayoutOverflowState, List<bm3<Composer, Integer, j59>> list) {
        nl3<FlowLayoutOverflowState, bm3<Composer, Integer, j59>> nl3Var = this.seeMoreGetter;
        bm3<Composer, Integer, j59> bm3VarInvoke = nl3Var != null ? nl3Var.invoke(flowLayoutOverflowState) : null;
        nl3<FlowLayoutOverflowState, bm3<Composer, Integer, j59>> nl3Var2 = this.collapseGetter;
        bm3<Composer, Integer, j59> bm3VarInvoke2 = nl3Var2 != null ? nl3Var2.invoke(flowLayoutOverflowState) : null;
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i == 1) {
            if (bm3VarInvoke != null) {
                list.add(bm3VarInvoke);
            }
        } else {
            if (i != 2) {
                return;
            }
            if (bm3VarInvoke != null) {
                list.add(bm3VarInvoke);
            }
            if (bm3VarInvoke2 != null) {
                list.add(bm3VarInvoke2);
            }
        }
    }

    public final FlowLayoutOverflowState createOverflowState$foundation_layout() {
        return new FlowLayoutOverflowState(this.type, this.minLinesToShowCollapse, this.minCrossAxisSizeToShowCollapse);
    }

    public final OverflowType getType$foundation_layout() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private FlowLayoutOverflow(OverflowType overflowType, int i, int i2, nl3<? super FlowLayoutOverflowState, ? extends bm3<? super Composer, ? super Integer, j59>> nl3Var, nl3<? super FlowLayoutOverflowState, ? extends bm3<? super Composer, ? super Integer, j59>> nl3Var2) {
        this.type = overflowType;
        this.minLinesToShowCollapse = i;
        this.minCrossAxisSizeToShowCollapse = i2;
        this.seeMoreGetter = nl3Var;
        this.collapseGetter = nl3Var2;
    }

    public /* synthetic */ FlowLayoutOverflow(OverflowType overflowType, int i, int i2, nl3 nl3Var, nl3 nl3Var2, jh2 jh2Var) {
        this(overflowType, i, i2, nl3Var, nl3Var2);
    }
}
