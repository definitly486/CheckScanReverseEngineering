package yads;

import android.text.StaticLayout;
import com.monetization.ads.fullscreen.template.view.ExtendedTextView;

/* JADX INFO: loaded from: classes6.dex */
public final class wf extends vf {
    @Override // yads.vf, yads.xf
    public final void a(StaticLayout.Builder builder, ExtendedTextView extendedTextView) {
        builder.setTextDirection(extendedTextView.getTextDirectionHeuristic());
    }

    @Override // yads.xf
    public final boolean a(ExtendedTextView extendedTextView) {
        return extendedTextView.isHorizontallyScrollable();
    }
}
