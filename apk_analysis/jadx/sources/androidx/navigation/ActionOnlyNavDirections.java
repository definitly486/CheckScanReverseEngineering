package androidx.navigation;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateWriter;
import defpackage.b36;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class ActionOnlyNavDirections implements NavDirections {
    private final int actionId;
    private final Bundle arguments;

    public ActionOnlyNavDirections(int i) {
        this.actionId = i;
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        this.arguments = bundleBundleOf;
    }

    public static /* synthetic */ ActionOnlyNavDirections copy$default(ActionOnlyNavDirections actionOnlyNavDirections, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = actionOnlyNavDirections.actionId;
        }
        return actionOnlyNavDirections.copy(i);
    }

    public final int component1() {
        return this.actionId;
    }

    public final ActionOnlyNavDirections copy(int i) {
        return new ActionOnlyNavDirections(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && ActionOnlyNavDirections.class.equals(obj.getClass()) && getActionId() == ((ActionOnlyNavDirections) obj).getActionId();
    }

    @Override // androidx.navigation.NavDirections
    public int getActionId() {
        return this.actionId;
    }

    @Override // androidx.navigation.NavDirections
    public Bundle getArguments() {
        return this.arguments;
    }

    public int hashCode() {
        return getActionId() + 31;
    }

    public String toString() {
        return "ActionOnlyNavDirections(actionId=" + getActionId() + ')';
    }
}
