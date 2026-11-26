package androidx.activity.result;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.ActivityOptionsCompat;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.j59;
import defpackage.q;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityResultCallerLauncher<I, O> extends ActivityResultLauncher<j59> {
    private final ActivityResultContract<I, O> callerContract;
    private final I callerInput;
    private final ActivityResultContract<j59, O> contract;
    private final ActivityResultLauncher<I> launcher;
    private final cl4 resultContract$delegate;

    public ActivityResultCallerLauncher(ActivityResultLauncher<I> activityResultLauncher, ActivityResultContract<I, O> activityResultContract, I i) {
        activityResultLauncher.getClass();
        activityResultContract.getClass();
        this.launcher = activityResultLauncher;
        this.callerContract = activityResultContract;
        this.callerInput = i;
        this.resultContract$delegate = new fh8(new q(this, 1));
        this.contract = getResultContract();
    }

    private final ActivityResultContract<j59, O> getResultContract() {
        return (ActivityResultContract) this.resultContract$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ActivityResultCallerLauncher$resultContract$2$1 resultContract_delegate$lambda$0(final ActivityResultCallerLauncher activityResultCallerLauncher) {
        return new ActivityResultContract<j59, O>(activityResultCallerLauncher) { // from class: androidx.activity.result.ActivityResultCallerLauncher$resultContract$2$1
            final /* synthetic */ ActivityResultCallerLauncher<I, O> this$0;

            {
                this.this$0 = activityResultCallerLauncher;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public Intent createIntent(Context context, j59 j59Var) {
                context.getClass();
                j59Var.getClass();
                return this.this$0.getCallerContract().createIntent(context, this.this$0.getCallerInput());
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public O parseResult(int i, Intent intent) {
                return (O) this.this$0.getCallerContract().parseResult(i, intent);
            }
        };
    }

    public final ActivityResultContract<I, O> getCallerContract() {
        return this.callerContract;
    }

    public final I getCallerInput() {
        return this.callerInput;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public ActivityResultContract<j59, ?> getContract() {
        return this.contract;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void launch(j59 j59Var, ActivityOptionsCompat activityOptionsCompat) {
        j59Var.getClass();
        this.launcher.launch(this.callerInput, activityOptionsCompat);
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void unregister() {
        this.launcher.unregister();
    }
}
