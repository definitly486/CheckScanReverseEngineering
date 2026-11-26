package androidx.navigation;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateWriter;
import defpackage.b36;
import defpackage.j59;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@NavDestinationDsl
public final class NavActionBuilder {
    private final Map<String, Object> defaultArguments = new LinkedHashMap();
    private int destinationId;
    private NavOptions navOptions;

    public final NavAction build$navigation_common_release() {
        b36[] b36VarArr;
        Bundle bundleBundleOf;
        int i = this.destinationId;
        NavOptions navOptions = this.navOptions;
        if (this.defaultArguments.isEmpty()) {
            bundleBundleOf = null;
        } else {
            Map<String, Object> map = this.defaultArguments;
            if (map.isEmpty()) {
                b36VarArr = new b36[0];
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    arrayList.add(new b36(entry.getKey(), entry.getValue()));
                }
                b36VarArr = (b36[]) arrayList.toArray(new b36[0]);
            }
            bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
            SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        }
        return new NavAction(i, navOptions, bundleBundleOf);
    }

    public final Map<String, Object> getDefaultArguments() {
        return this.defaultArguments;
    }

    public final int getDestinationId() {
        return this.destinationId;
    }

    public final void navOptions(nl3<? super NavOptionsBuilder, j59> nl3Var) {
        nl3Var.getClass();
        NavOptionsBuilder navOptionsBuilder = new NavOptionsBuilder();
        nl3Var.invoke(navOptionsBuilder);
        this.navOptions = navOptionsBuilder.build$navigation_common_release();
    }

    public final void setDestinationId(int i) {
        this.destinationId = i;
    }
}
