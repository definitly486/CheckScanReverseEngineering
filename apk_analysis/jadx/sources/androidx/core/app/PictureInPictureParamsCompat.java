package androidx.core.app;

import android.app.PictureInPictureParams;
import android.app.RemoteAction;
import android.graphics.Rect;
import android.os.Build;
import android.util.Rational;
import defpackage.jh2;
import defpackage.kx2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class PictureInPictureParamsCompat {
    private final List<RemoteAction> actions;
    private final Rational aspectRatio;
    private final RemoteAction closeAction;
    private final Rational expandedAspectRatio;
    private final boolean isEnabled;
    private final boolean isSeamlessResizeEnabled;
    private final Rect sourceRectHint;
    private final CharSequence subTitle;
    private final CharSequence title;

    public static final class Api26Impl {
        public static final Api26Impl INSTANCE = new Api26Impl();

        private Api26Impl() {
        }

        public static final PictureInPictureParams create(Rational rational, List<RemoteAction> list, Rect rect) {
            list.getClass();
            PictureInPictureParams pictureInPictureParamsBuild = new PictureInPictureParams.Builder().setAspectRatio(rational).setActions(list).setSourceRectHint(rect).build();
            pictureInPictureParamsBuild.getClass();
            return pictureInPictureParamsBuild;
        }
    }

    public static final class Api31Impl {
        public static final Api31Impl INSTANCE = new Api31Impl();

        private Api31Impl() {
        }

        public static final PictureInPictureParams create(Rational rational, List<RemoteAction> list, Rect rect, boolean z, boolean z2) {
            list.getClass();
            PictureInPictureParams pictureInPictureParamsBuild = new PictureInPictureParams.Builder().setAspectRatio(rational).setActions(list).setSourceRectHint(rect).setAutoEnterEnabled(z).setSeamlessResizeEnabled(z2).build();
            pictureInPictureParamsBuild.getClass();
            return pictureInPictureParamsBuild;
        }
    }

    public static final class Api33Impl {
        public static final Api33Impl INSTANCE = new Api33Impl();

        private Api33Impl() {
        }

        public static final PictureInPictureParams create(Rational rational, List<RemoteAction> list, Rect rect, boolean z, boolean z2, Rational rational2, RemoteAction remoteAction, CharSequence charSequence, CharSequence charSequence2) {
            list.getClass();
            PictureInPictureParams pictureInPictureParamsBuild = new PictureInPictureParams.Builder().setAspectRatio(rational).setActions(list).setSourceRectHint(rect).setAutoEnterEnabled(z).setSeamlessResizeEnabled(z2).setExpandedAspectRatio(rational2).setCloseAction(remoteAction).setTitle(charSequence).setSubtitle(charSequence2).build();
            pictureInPictureParamsBuild.getClass();
            return pictureInPictureParamsBuild;
        }
    }

    public static final class Builder {
        private Rational aspectRatio;
        private RemoteAction closeAction;
        private Rational expandedAspectRatio;
        private boolean seamlessResizeEnabled;
        private Rect sourceRectHint;
        private CharSequence subTitle;
        private CharSequence title;
        private boolean enabled = true;
        private List<RemoteAction> actions = kx2.b;

        public final PictureInPictureParamsCompat build() {
            return new PictureInPictureParamsCompat(this.enabled, this.aspectRatio, this.actions, this.sourceRectHint, this.seamlessResizeEnabled, this.closeAction, this.expandedAspectRatio, this.title, this.subTitle);
        }

        public final Builder setActions(List<RemoteAction> list) {
            list.getClass();
            this.actions = list;
            return this;
        }

        public final Builder setAspectRatio(Rational rational) {
            this.aspectRatio = rational;
            return this;
        }

        public final Builder setCloseAction(RemoteAction remoteAction) {
            this.closeAction = remoteAction;
            return this;
        }

        public final Builder setEnabled(boolean z) {
            this.enabled = z;
            return this;
        }

        public final Builder setExpandedAspectRatio(Rational rational) {
            this.expandedAspectRatio = rational;
            return this;
        }

        public final Builder setSeamlessResizeEnabled(boolean z) {
            this.seamlessResizeEnabled = z;
            return this;
        }

        public final Builder setSourceRectHint(Rect rect) {
            this.sourceRectHint = rect;
            return this;
        }

        public final Builder setSubTitle(CharSequence charSequence) {
            this.subTitle = charSequence;
            return this;
        }

        public final Builder setTitle(CharSequence charSequence) {
            this.title = charSequence;
            return this;
        }
    }

    public /* synthetic */ PictureInPictureParamsCompat(boolean z, Rational rational, List list, Rect rect, boolean z2, RemoteAction remoteAction, Rational rational2, CharSequence charSequence, CharSequence charSequence2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? null : rational, (i & 4) != 0 ? kx2.b : list, (i & 8) != 0 ? null : rect, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? null : remoteAction, (i & 64) != 0 ? null : rational2, (i & 128) != 0 ? null : charSequence, (i & 256) != 0 ? null : charSequence2);
    }

    public final List<RemoteAction> getActions() {
        return this.actions;
    }

    public final Rational getAspectRatio() {
        return this.aspectRatio;
    }

    public final RemoteAction getCloseAction() {
        return this.closeAction;
    }

    public final Rational getExpandedAspectRatio() {
        return this.expandedAspectRatio;
    }

    public final Rect getSourceRectHint() {
        return this.sourceRectHint;
    }

    public final CharSequence getSubTitle() {
        return this.subTitle;
    }

    public final CharSequence getTitle() {
        return this.title;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final boolean isSeamlessResizeEnabled() {
        return this.isSeamlessResizeEnabled;
    }

    public final PictureInPictureParams toPictureInPictureParams() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            return Api33Impl.create(this.aspectRatio, this.actions, this.sourceRectHint, this.isEnabled, this.isSeamlessResizeEnabled, this.expandedAspectRatio, this.closeAction, this.title, this.subTitle);
        }
        Rational rational = this.aspectRatio;
        return i >= 31 ? Api31Impl.create(rational, this.actions, this.sourceRectHint, this.isEnabled, this.isSeamlessResizeEnabled) : Api26Impl.create(rational, this.actions, this.sourceRectHint);
    }

    public PictureInPictureParamsCompat(boolean z, Rational rational, List<RemoteAction> list, Rect rect, boolean z2, RemoteAction remoteAction, Rational rational2, CharSequence charSequence, CharSequence charSequence2) {
        list.getClass();
        this.isEnabled = z;
        this.aspectRatio = rational;
        this.actions = list;
        this.sourceRectHint = rect;
        this.isSeamlessResizeEnabled = z2;
        this.closeAction = remoteAction;
        this.expandedAspectRatio = rational2;
        this.title = charSequence;
        this.subTitle = charSequence2;
    }

    public PictureInPictureParamsCompat() {
        this(false, null, null, null, false, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }
}
