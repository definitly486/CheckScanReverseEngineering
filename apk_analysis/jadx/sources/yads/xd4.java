package yads;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.monetization.ads.nativeads.CustomizableMediaView;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class xd4 implements vd4 {
    @Override // yads.vd4
    public final TextView a(View view) {
        View viewFindViewWithTag = view.findViewWithTag(TtmlNode.TAG_BODY);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final CheckBox b(View view) {
        View viewFindViewWithTag = view.findViewWithTag("mute_button");
        if (viewFindViewWithTag instanceof CheckBox) {
            return (CheckBox) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final CustomizableMediaView c(View view) {
        View viewFindViewWithTag = view.findViewWithTag("media");
        if (viewFindViewWithTag instanceof CustomizableMediaView) {
            return (CustomizableMediaView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView d(View view) {
        View viewFindViewWithTag = view.findViewWithTag(FirebaseAnalytics.Param.PRICE);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView e(View view) {
        View viewFindViewWithTag = view.findViewWithTag("call_to_action");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView f(View view) {
        View viewFindViewWithTag = view.findViewWithTag("warning");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final ImageView g(View view) {
        View viewFindViewWithTag = view.findViewWithTag("favicon");
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView h(View view) {
        View viewFindViewWithTag = view.findViewWithTag("age");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final View i(View view) {
        View viewFindViewWithTag = view.findViewWithTag("rating");
        if (viewFindViewWithTag != null) {
            return viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView j(View view) {
        View viewFindViewWithTag = view.findViewWithTag(TJAdUnitConstants.String.TITLE);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final ProgressBar k(View view) {
        View viewFindViewWithTag = view.findViewWithTag("video_progress");
        if (viewFindViewWithTag instanceof ProgressBar) {
            return (ProgressBar) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final ImageView l(View view) {
        View viewFindViewWithTag = view.findViewWithTag("feedback");
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView m(View view) {
        View viewFindViewWithTag = view.findViewWithTag("sponsored");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView n(View view) {
        View viewFindViewWithTag = view.findViewWithTag(DynamicLink.Builder.KEY_DOMAIN);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final ImageView o(View view) {
        View viewFindViewWithTag = view.findViewWithTag("icon");
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final TextView p(View view) {
        View viewFindViewWithTag = view.findViewWithTag("review_count");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override // yads.vd4
    public final View a(View view, String str) {
        View viewFindViewWithTag = view.findViewWithTag(str);
        if (viewFindViewWithTag != null) {
            return viewFindViewWithTag;
        }
        return null;
    }
}
