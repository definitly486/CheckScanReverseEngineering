package androidx.window.embedding;

import android.content.res.Configuration;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.WindowMetrics;
import defpackage.xp;

/* JADX INFO: loaded from: classes3.dex */
public final class SplitAttributesCalculatorParams {
    private final boolean areDefaultConstraintsSatisfied;
    private final SplitAttributes defaultSplitAttributes;
    private final Configuration parentConfiguration;
    private final WindowLayoutInfo parentWindowLayoutInfo;
    private final WindowMetrics parentWindowMetrics;
    private final String splitRuleTag;

    public SplitAttributesCalculatorParams(WindowMetrics windowMetrics, Configuration configuration, WindowLayoutInfo windowLayoutInfo, SplitAttributes splitAttributes, boolean z, String str) {
        windowMetrics.getClass();
        configuration.getClass();
        windowLayoutInfo.getClass();
        splitAttributes.getClass();
        this.parentWindowMetrics = windowMetrics;
        this.parentConfiguration = configuration;
        this.parentWindowLayoutInfo = windowLayoutInfo;
        this.defaultSplitAttributes = splitAttributes;
        this.areDefaultConstraintsSatisfied = z;
        this.splitRuleTag = str;
    }

    public final boolean areDefaultConstraintsSatisfied() {
        return this.areDefaultConstraintsSatisfied;
    }

    public final SplitAttributes getDefaultSplitAttributes() {
        return this.defaultSplitAttributes;
    }

    public final Configuration getParentConfiguration() {
        return this.parentConfiguration;
    }

    public final WindowLayoutInfo getParentWindowLayoutInfo() {
        return this.parentWindowLayoutInfo;
    }

    public final WindowMetrics getParentWindowMetrics() {
        return this.parentWindowMetrics;
    }

    public final String getSplitRuleTag() {
        return this.splitRuleTag;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SplitAttributesCalculatorParams:{windowMetrics=");
        sb.append(this.parentWindowMetrics);
        sb.append(", configuration=");
        sb.append(this.parentConfiguration);
        sb.append(", windowLayoutInfo=");
        sb.append(this.parentWindowLayoutInfo);
        sb.append(", defaultSplitAttributes=");
        sb.append(this.defaultSplitAttributes);
        sb.append(", areDefaultConstraintsSatisfied=");
        sb.append(this.areDefaultConstraintsSatisfied);
        sb.append(", tag=");
        return xp.e(sb, this.splitRuleTag, '}');
    }
}
