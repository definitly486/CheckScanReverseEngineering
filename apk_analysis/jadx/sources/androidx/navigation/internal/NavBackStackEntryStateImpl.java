package androidx.navigation.internal;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDestination;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.b36;
import defpackage.jh2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class NavBackStackEntryStateImpl {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_ARGS = "nav-entry-state:args";
    public static final String KEY_DESTINATION_ID = "nav-entry-state:destination-id";
    public static final String KEY_ID = "nav-entry-state:id";
    public static final String KEY_SAVED_STATE = "nav-entry-state:saved-state";
    private final Bundle args;
    private final int destinationId;
    private final String id;
    private final Bundle savedState;

    public NavBackStackEntryStateImpl(Bundle bundle) {
        bundle.getClass();
        this.id = SavedStateReader.m9441getStringimpl(SavedStateReader.m9370constructorimpl(bundle), KEY_ID);
        this.destinationId = SavedStateReader.m9401getIntimpl(SavedStateReader.m9370constructorimpl(bundle), KEY_DESTINATION_ID);
        this.args = SavedStateReader.m9427getSavedStateimpl(SavedStateReader.m9370constructorimpl(bundle), KEY_ARGS);
        this.savedState = SavedStateReader.m9427getSavedStateimpl(SavedStateReader.m9370constructorimpl(bundle), KEY_SAVED_STATE);
    }

    public final Bundle getArgs$navigation_runtime_release() {
        return this.args;
    }

    public final int getDestinationId$navigation_runtime_release() {
        return this.destinationId;
    }

    public final String getId$navigation_runtime_release() {
        return this.id;
    }

    public final Bundle getSavedState$navigation_runtime_release() {
        return this.savedState;
    }

    public final NavBackStackEntry instantiate(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavControllerViewModel navControllerViewModel) {
        navContext.getClass();
        navDestination.getClass();
        state.getClass();
        return NavBackStackEntry.Companion.create(navContext, navDestination, bundle, state, navControllerViewModel, this.id, this.savedState);
    }

    public final Bundle writeToState$navigation_runtime_release() {
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        SavedStateWriter.m9489putStringimpl(bundleM9456constructorimpl, KEY_ID, this.id);
        SavedStateWriter.m9473putIntimpl(bundleM9456constructorimpl, KEY_DESTINATION_ID, this.destinationId);
        Bundle bundleBundleOf2 = this.args;
        if (bundleBundleOf2 == null) {
            b36[] b36VarArr2 = new b36[0];
            bundleBundleOf2 = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr2, b36VarArr2.length));
            SavedStateWriter.m9456constructorimpl(bundleBundleOf2);
        }
        SavedStateWriter.m9483putSavedStateimpl(bundleM9456constructorimpl, KEY_ARGS, bundleBundleOf2);
        SavedStateWriter.m9483putSavedStateimpl(bundleM9456constructorimpl, KEY_SAVED_STATE, this.savedState);
        return bundleBundleOf;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public NavBackStackEntryStateImpl(NavBackStackEntry navBackStackEntry, int i) {
        navBackStackEntry.getClass();
        this.id = navBackStackEntry.getId();
        this.destinationId = i;
        this.args = navBackStackEntry.getArguments();
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        this.savedState = bundleBundleOf;
        navBackStackEntry.saveState(bundleBundleOf);
    }
}
