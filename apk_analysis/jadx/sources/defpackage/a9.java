package defpackage;

import android.net.Uri;
import androidx.activity.result.ActivityResultCallback;
import com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsFragment;
import com.warefly.checkscan.presentation.operations.base.a;
import java.util.List;
import yads.bw4;
import yads.iw4;
import yads.tt3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class a9 implements ActivityResultCallback, xl3, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ a9(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return (qq1) ((rn0) obj2).invoke(obj);
            case 2:
                return (gq6) ((s51) obj2).invoke(obj);
            case 3:
                return (List) ((nl3) obj2).invoke(obj);
            default:
                return ((a) obj2).invoke(obj);
        }
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((iw4) obj).b(((bw4) this.c).f);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        AddScreenshotsFragment addScreenshotsFragment = (AddScreenshotsFragment) this.c;
        ze4<Object>[] ze4VarArr = AddScreenshotsFragment.n;
        addScreenshotsFragment.o().getUriBankScreenshot((Uri) obj);
    }
}
