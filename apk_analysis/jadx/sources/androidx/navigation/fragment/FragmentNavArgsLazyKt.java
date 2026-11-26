package androidx.navigation.fragment;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavArgs;
import androidx.navigation.NavArgsLazy;
import defpackage.aa4;
import defpackage.ki0;
import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentNavArgsLazyKt {

    /* JADX INFO: renamed from: androidx.navigation.fragment.FragmentNavArgsLazyKt$navArgs$1, reason: invalid class name */
    public static final class AnonymousClass1 implements ll3<Bundle> {
        final /* synthetic */ Fragment $this_navArgs;

        public AnonymousClass1(Fragment fragment) {
            this.$this_navArgs = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Bundle invoke() {
            Bundle arguments = this.$this_navArgs.getArguments();
            if (arguments != null) {
                return arguments;
            }
            ki0.c(this.$this_navArgs, "Fragment ", " has null arguments");
            return null;
        }
    }

    public static final <Args extends NavArgs> NavArgsLazy<Args> navArgs(Fragment fragment) {
        fragment.getClass();
        aa4.i();
        throw null;
    }
}
