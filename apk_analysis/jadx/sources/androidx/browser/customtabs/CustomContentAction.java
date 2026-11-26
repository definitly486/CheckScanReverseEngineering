package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import defpackage.fg;
import defpackage.jh;

/* JADX INFO: loaded from: classes.dex */
public final class CustomContentAction {
    static final String KEY_ID = "androidx.browser.customtabs.customcontentaction.ID";
    static final String KEY_LABEL = "androidx.browser.customtabs.customcontentaction.LABEL";
    static final String KEY_PENDING_INTENT = "androidx.browser.customtabs.customcontentaction.PENDING_INTENT";
    static final String KEY_TARGET_TYPE = "androidx.browser.customtabs.customcontentaction.TARGET_TYPE";
    private final int mId;
    private final String mLabel;
    private final PendingIntent mPendingIntent;
    private final int mTargetType;

    public static final class Builder {
        private final int mId;
        private final String mLabel;
        private final PendingIntent mPendingIntent;
        private final int mTargetType;

        public Builder(int i, String str, PendingIntent pendingIntent, int i2) {
            if (str.isEmpty()) {
                fg.c("Label cannot be empty.");
                throw null;
            }
            if (i < 0) {
                fg.c("Id cannot be set to negative numbers.");
                throw null;
            }
            if (i2 != 1 && i2 != 2) {
                fg.c(jh.b(i2, "Invalid target type: "));
                throw null;
            }
            this.mId = i;
            this.mLabel = str;
            this.mPendingIntent = pendingIntent;
            this.mTargetType = i2;
        }

        public CustomContentAction build() {
            return new CustomContentAction(this.mId, this.mLabel, this.mPendingIntent, this.mTargetType);
        }
    }

    private CustomContentAction(int i, String str, PendingIntent pendingIntent, int i2) {
        this.mId = i;
        this.mLabel = str;
        this.mPendingIntent = pendingIntent;
        this.mTargetType = i2;
    }

    public static CustomContentAction fromBundle(Bundle bundle) {
        if (!bundle.containsKey(KEY_ID)) {
            fg.c("Bundle is missing required key: androidx.browser.customtabs.customcontentaction.ID");
            return null;
        }
        int i = bundle.getInt(KEY_ID);
        String string = bundle.getString(KEY_LABEL);
        if (TextUtils.isEmpty(string)) {
            fg.c("Bundle is missing required key: androidx.browser.customtabs.customcontentaction.LABEL");
            return null;
        }
        PendingIntent pendingIntent = Build.VERSION.SDK_INT >= 33 ? (PendingIntent) bundle.getParcelable(KEY_PENDING_INTENT, PendingIntent.class) : (PendingIntent) bundle.getParcelable(KEY_PENDING_INTENT);
        if (pendingIntent == null) {
            fg.c("Bundle is missing required key: androidx.browser.customtabs.customcontentaction.PENDING_INTENT");
            return null;
        }
        int i2 = bundle.getInt(KEY_TARGET_TYPE, 0);
        if (i2 == 1 || i2 == 2) {
            return new CustomContentAction(i, string, pendingIntent, i2);
        }
        fg.c(jh.b(i2, "Invalid target type: "));
        return null;
    }

    public int getId() {
        return this.mId;
    }

    public String getLabel() {
        return this.mLabel;
    }

    public PendingIntent getPendingIntent() {
        return this.mPendingIntent;
    }

    public int getTargetType() {
        return this.mTargetType;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(KEY_ID, this.mId);
        bundle.putString(KEY_LABEL, this.mLabel);
        bundle.putParcelable(KEY_PENDING_INTENT, this.mPendingIntent);
        bundle.putInt(KEY_TARGET_TYPE, this.mTargetType);
        return bundle;
    }
}
