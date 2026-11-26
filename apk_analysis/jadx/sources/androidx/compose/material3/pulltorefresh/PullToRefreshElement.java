package androidx.compose.material3.pulltorefresh;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.il1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.tg;

/* JADX INFO: loaded from: classes2.dex */
public final class PullToRefreshElement extends ModifierNodeElement<PullToRefreshModifierNode> {
    public static final int $stable = 0;
    private final boolean enabled;
    private final boolean isRefreshing;
    private final ll3<j59> onRefresh;
    private final PullToRefreshState state;
    private final float threshold;

    private PullToRefreshElement(boolean z, ll3<j59> ll3Var, boolean z2, PullToRefreshState pullToRefreshState, float f) {
        this.isRefreshing = z;
        this.onRefresh = ll3Var;
        this.enabled = z2;
        this.state = pullToRefreshState;
        this.threshold = f;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public PullToRefreshModifierNode create() {
        return new PullToRefreshModifierNode(this.isRefreshing, this.onRefresh, this.enabled, this.state, this.threshold, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PullToRefreshElement)) {
            return false;
        }
        PullToRefreshElement pullToRefreshElement = (PullToRefreshElement) obj;
        return this.isRefreshing == pullToRefreshElement.isRefreshing && this.enabled == pullToRefreshElement.enabled && this.onRefresh == pullToRefreshElement.onRefresh && aa4.e(this.state, pullToRefreshElement.state) && Dp.m9047equalsimpl0(this.threshold, pullToRefreshElement.threshold);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final ll3<j59> getOnRefresh() {
        return this.onRefresh;
    }

    public final PullToRefreshState getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: getThreshold-D9Ej5fM, reason: not valid java name */
    public final float m4475getThresholdD9Ej5fM() {
        return this.threshold;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return Dp.m9048hashCodeimpl(this.threshold) + ((this.state.hashCode() + ((this.onRefresh.hashCode() + tg.c(Boolean.hashCode(this.isRefreshing) * 31, 31, this.enabled)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("PullToRefreshModifierNode");
        il1.c(this.isRefreshing, inspectorInfo.getProperties(), "isRefreshing", inspectorInfo).set("onRefresh", this.onRefresh);
        il1.c(this.enabled, inspectorInfo.getProperties(), TJAdUnitConstants.String.ENABLED, inspectorInfo).set(RemoteConfigConstants.ResponseFieldKey.STATE, this.state);
        inspectorInfo.getProperties().set("threshold", Dp.m9040boximpl(this.threshold));
    }

    public final boolean isRefreshing() {
        return this.isRefreshing;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(PullToRefreshModifierNode pullToRefreshModifierNode) {
        pullToRefreshModifierNode.setOnRefresh(this.onRefresh);
        pullToRefreshModifierNode.setEnabled(this.enabled);
        pullToRefreshModifierNode.setState(this.state);
        pullToRefreshModifierNode.m4484setThreshold0680j_4(this.threshold);
        boolean zIsRefreshing = pullToRefreshModifierNode.isRefreshing();
        boolean z = this.isRefreshing;
        if (zIsRefreshing != z) {
            pullToRefreshModifierNode.setRefreshing(z);
            pullToRefreshModifierNode.update();
        }
    }

    public /* synthetic */ PullToRefreshElement(boolean z, ll3 ll3Var, boolean z2, PullToRefreshState pullToRefreshState, float f, jh2 jh2Var) {
        this(z, ll3Var, z2, pullToRefreshState, f);
    }
}
