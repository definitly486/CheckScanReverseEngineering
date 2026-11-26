package yads;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class ve4 implements te4 {
    @Override // yads.te4
    public final View a(ViewGroup viewGroup) {
        return viewGroup.findViewWithTag(TJAdUnitConstants.String.CLOSE);
    }

    @Override // yads.te4
    public final ProgressBar b(ViewGroup viewGroup) {
        return (ProgressBar) viewGroup.findViewWithTag("close_progress_view");
    }
}
