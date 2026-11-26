package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzaif;
import defpackage.hnb;
import defpackage.u4;
import java.util.Arrays;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhd {
    public final String a;
    public final Bundle b;
    public Bundle c;
    public final /* synthetic */ hnb d;

    public zzhd(hnb hnbVar, String str, Bundle bundle) {
        Objects.requireNonNull(hnbVar);
        this.d = hnbVar;
        Preconditions.checkNotEmpty(str);
        this.a = str;
        this.b = new Bundle();
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00fa A[Catch: NumberFormatException | JSONException -> 0x0108, NumberFormatException | JSONException -> 0x0108, TRY_LEAVE, TryCatch #1 {NumberFormatException | JSONException -> 0x0108, blocks: (B:10:0x0029, B:24:0x005d, B:24:0x005d, B:26:0x006c, B:26:0x006c, B:28:0x007e, B:28:0x007e, B:29:0x0087, B:29:0x0087, B:51:0x00fa, B:51:0x00fa, B:33:0x0094, B:33:0x0094, B:35:0x00a3, B:35:0x00a3, B:37:0x00b5, B:37:0x00b5, B:38:0x00be, B:38:0x00be, B:42:0x00ca, B:42:0x00ca, B:46:0x00da, B:46:0x00da, B:50:0x00ee, B:50:0x00ee), top: B:65:0x0029, outer: #0 }] */
    public final Bundle zza() {
        if (this.c == null) {
            hnb hnbVar = this.d;
            SharedPreferences sharedPreferencesD = hnbVar.d();
            zzic zzicVar = hnbVar.a;
            String string = sharedPreferencesD.getString(this.a, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            String string2 = jSONObject.getString("n");
                            String string3 = jSONObject.getString("t");
                            int iHashCode = string3.hashCode();
                            if (iHashCode != 100) {
                                if (iHashCode != 108) {
                                    if (iHashCode != 115) {
                                        if (iHashCode != 3352) {
                                            if (iHashCode == 3445 && string3.equals("la")) {
                                                zzaif.zza();
                                                if (zzicVar.zzc().zzp(null, zzfy.zzaP)) {
                                                    JSONArray jSONArray2 = new JSONArray(jSONObject.getString("v"));
                                                    int length = jSONArray2.length();
                                                    long[] jArr = new long[length];
                                                    for (int i2 = 0; i2 < length; i2++) {
                                                        jArr[i2] = jSONArray2.optLong(i2);
                                                    }
                                                    bundle.putLongArray(string2, jArr);
                                                }
                                            } else {
                                                zzicVar.zzaW().zzb().zzb("Unrecognized persisted bundle type. Type", string3);
                                            }
                                        } else if (string3.equals("ia")) {
                                            zzaif.zza();
                                            if (zzicVar.zzc().zzp(null, zzfy.zzaP)) {
                                                JSONArray jSONArray3 = new JSONArray(jSONObject.getString("v"));
                                                int length2 = jSONArray3.length();
                                                int[] iArr = new int[length2];
                                                for (int i3 = 0; i3 < length2; i3++) {
                                                    iArr[i3] = jSONArray3.optInt(i3);
                                                }
                                                bundle.putIntArray(string2, iArr);
                                            }
                                        } else {
                                            zzicVar.zzaW().zzb().zzb("Unrecognized persisted bundle type. Type", string3);
                                        }
                                    } else if (string3.equals(CmcdData.STREAMING_FORMAT_SS)) {
                                        bundle.putString(string2, jSONObject.getString("v"));
                                    } else {
                                        zzicVar.zzaW().zzb().zzb("Unrecognized persisted bundle type. Type", string3);
                                    }
                                } else if (string3.equals(CmcdData.STREAM_TYPE_LIVE)) {
                                    bundle.putLong(string2, Long.parseLong(jSONObject.getString("v")));
                                } else {
                                    zzicVar.zzaW().zzb().zzb("Unrecognized persisted bundle type. Type", string3);
                                }
                            } else if (string3.equals("d")) {
                                bundle.putDouble(string2, Double.parseDouble(jSONObject.getString("v")));
                            } else {
                                zzicVar.zzaW().zzb().zzb("Unrecognized persisted bundle type. Type", string3);
                            }
                        } catch (NumberFormatException | JSONException unused) {
                            hnbVar.a.zzaW().zzb().zza("Error reading value from SharedPreferences. Value dropped");
                        }
                    }
                    this.c = bundle;
                } catch (JSONException unused2) {
                    u4.e(hnbVar.a, "Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (this.c == null) {
                this.c = this.b;
            }
        }
        return new Bundle((Bundle) Preconditions.checkNotNull(this.c));
    }

    public final void zzb(Bundle bundle) {
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        hnb hnbVar = this.d;
        SharedPreferences.Editor editorEdit = hnbVar.d().edit();
        int size = bundle2.size();
        String str = this.a;
        if (size == 0) {
            editorEdit.remove(str);
        } else {
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj = bundle2.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        zzaif.zza();
                        zzic zzicVar = hnbVar.a;
                        if (zzicVar.zzc().zzp(null, zzfy.zzaP)) {
                            if (obj instanceof String) {
                                jSONObject.put("v", obj.toString());
                                jSONObject.put("t", CmcdData.STREAMING_FORMAT_SS);
                            } else if (obj instanceof Long) {
                                jSONObject.put("v", obj.toString());
                                jSONObject.put("t", CmcdData.STREAM_TYPE_LIVE);
                            } else if (obj instanceof int[]) {
                                jSONObject.put("v", Arrays.toString((int[]) obj));
                                jSONObject.put("t", "ia");
                            } else if (obj instanceof long[]) {
                                jSONObject.put("v", Arrays.toString((long[]) obj));
                                jSONObject.put("t", "la");
                            } else if (obj instanceof Double) {
                                jSONObject.put("v", obj.toString());
                                jSONObject.put("t", "d");
                            } else {
                                zzicVar.zzaW().zzb().zzb("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                            }
                            jSONArray.put(jSONObject);
                        } else {
                            jSONObject.put("v", obj.toString());
                            if (obj instanceof String) {
                                jSONObject.put("t", CmcdData.STREAMING_FORMAT_SS);
                            } else if (obj instanceof Long) {
                                jSONObject.put("t", CmcdData.STREAM_TYPE_LIVE);
                            } else if (obj instanceof Double) {
                                jSONObject.put("t", "d");
                            } else {
                                zzicVar.zzaW().zzb().zzb("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                            }
                            jSONArray.put(jSONObject);
                        }
                    } catch (JSONException e) {
                        hnbVar.a.zzaW().zzb().zzb("Cannot serialize bundle value to SharedPreferences", e);
                    }
                }
            }
            editorEdit.putString(str, jSONArray.toString());
        }
        editorEdit.apply();
        this.c = bundle2;
    }
}
