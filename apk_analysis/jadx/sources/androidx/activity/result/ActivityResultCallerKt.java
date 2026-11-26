package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;
import defpackage.i7;
import defpackage.j59;
import defpackage.j7;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityResultCallerKt {
    public static final <I, O> ActivityResultLauncher<j59> registerForActivityResult(ActivityResultCaller activityResultCaller, ActivityResultContract<I, O> activityResultContract, I i, ActivityResultRegistry activityResultRegistry, nl3<O, j59> nl3Var) {
        activityResultCaller.getClass();
        activityResultContract.getClass();
        activityResultRegistry.getClass();
        nl3Var.getClass();
        return new ActivityResultCallerLauncher(activityResultCaller.registerForActivityResult(activityResultContract, activityResultRegistry, new i7(nl3Var)), activityResultContract, i);
    }

    public static final <I, O> ActivityResultLauncher<j59> registerForActivityResult(ActivityResultCaller activityResultCaller, ActivityResultContract<I, O> activityResultContract, I i, nl3<O, j59> nl3Var) {
        activityResultCaller.getClass();
        activityResultContract.getClass();
        nl3Var.getClass();
        return new ActivityResultCallerLauncher(activityResultCaller.registerForActivityResult(activityResultContract, new j7(nl3Var, 0)), activityResultContract, i);
    }
}
