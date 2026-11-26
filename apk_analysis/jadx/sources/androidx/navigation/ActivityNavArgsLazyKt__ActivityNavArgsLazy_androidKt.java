package androidx.navigation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import defpackage.aa4;
import defpackage.c9;
import defpackage.ll3;
import defpackage.lt0;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class ActivityNavArgsLazyKt__ActivityNavArgsLazy_androidKt {

    /* JADX INFO: renamed from: androidx.navigation.ActivityNavArgsLazyKt__ActivityNavArgsLazy_androidKt$navArgs$1, reason: invalid class name */
    public static final class AnonymousClass1 implements ll3<Bundle> {
        final /* synthetic */ Activity $this_navArgs;

        public AnonymousClass1(Activity activity) {
            this.$this_navArgs = activity;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Bundle invoke() {
            Intent intent = this.$this_navArgs.getIntent();
            Activity activity = this.$this_navArgs;
            if (intent == null) {
                c9.g(activity, "Activity ", " has a null Intent");
                return null;
            }
            Bundle extras = intent.getExtras();
            if (extras != null) {
                return extras;
            }
            lt0.f("Activity ", activity, " has null extras in ", intent);
            return null;
        }
    }

    public static final <Args extends NavArgs> NavArgsLazy<Args> navArgs(Activity activity) {
        activity.getClass();
        aa4.i();
        throw null;
    }
}
