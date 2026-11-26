package yads;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.monetization.ads.nativeads.CustomizableMediaView;

/* JADX INFO: loaded from: classes6.dex */
public final class dp4 implements vd4 {
    public final int a;

    public dp4(int i) {
        this.a = i;
    }

    @Override // yads.vd4
    public final View a(View view, String str) {
        View viewFindViewWithTag = view.findViewWithTag(str + "_" + this.a);
        if (viewFindViewWithTag != null) {
            return viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final CheckBox b(View view) {
        View viewFindViewWithTag = view.findViewWithTag("mute_button_" + this.a);
        if (viewFindViewWithTag instanceof CheckBox) {
            return (CheckBox) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final CustomizableMediaView c(View view) {
        View viewFindViewWithTag = view.findViewWithTag("media_" + this.a);
        if (viewFindViewWithTag instanceof CustomizableMediaView) {
            return (CustomizableMediaView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView d(View view) {
        View viewFindViewWithTag = view.findViewWithTag("price_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView e(View view) {
        View viewFindViewWithTag = view.findViewWithTag("call_to_action_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView f(View view) {
        View viewFindViewWithTag = view.findViewWithTag("warning_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final ImageView g(View view) {
        View viewFindViewWithTag = view.findViewWithTag("favicon_" + this.a);
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView h(View view) {
        View viewFindViewWithTag = view.findViewWithTag("age_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final View i(View view) {
        View viewFindViewWithTag = view.findViewWithTag("rating_" + this.a);
        if (viewFindViewWithTag != null) {
            return viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView j(View view) {
        View viewFindViewWithTag = view.findViewWithTag("title_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final ProgressBar k(View view) {
        return (ProgressBar) view.findViewWithTag("video_progress_" + this.a);
    }

    @Override // yads.vd4
    public final ImageView l(View view) {
        View viewFindViewWithTag = view.findViewWithTag("feedback_" + this.a);
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView m(View view) {
        View viewFindViewWithTag = view.findViewWithTag("sponsored_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView n(View view) {
        View viewFindViewWithTag = view.findViewWithTag("domain_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final ImageView o(View view) {
        View viewFindViewWithTag = view.findViewWithTag("icon_" + this.a);
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView p(View view) {
        View viewFindViewWithTag = view.findViewWithTag("review_count_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView a(View view) {
        View viewFindViewWithTag = view.findViewWithTag("body_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }
}
