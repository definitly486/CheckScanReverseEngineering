package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.R;

/* JADX INFO: loaded from: classes4.dex */
public class StringResourceValueReader {
    public final Resources a;
    public final String b;

    public StringResourceValueReader(Context context) {
        Preconditions.checkNotNull(context);
        Resources resources = context.getResources();
        this.a = resources;
        this.b = resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
    }

    public String getString(String str) {
        Resources resources = this.a;
        int identifier = resources.getIdentifier(str, TypedValues.Custom.S_STRING, this.b);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }
}
