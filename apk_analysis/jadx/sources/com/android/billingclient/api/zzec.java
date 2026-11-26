package com.android.billingclient.api;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class zzec {
    public zzec(JSONObject jSONObject) throws JSONException {
        jSONObject.getString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
    }
}
