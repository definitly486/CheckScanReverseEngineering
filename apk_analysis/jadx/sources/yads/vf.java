package yads;

import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import com.monetization.ads.fullscreen.template.view.ExtendedTextView;

/* JADX INFO: loaded from: classes6.dex */
public class vf extends xf {
    @Override // yads.xf
    public void a(StaticLayout.Builder builder, ExtendedTextView extendedTextView) {
        builder.setTextDirection((TextDirectionHeuristic) yf.a(extendedTextView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
    }
}
