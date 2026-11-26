package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcn extends zzbl implements zzcp {
    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void beginAdUnitExposure(String str, long j) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        parcelG.writeLong(j);
        h(parcelG, 23);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        parcelG.writeString(str2);
        zzbn.zzc(parcelG, bundle);
        h(parcelG, 9);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void clearMeasurementEnabled(long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void endAdUnitExposure(String str, long j) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        parcelG.writeLong(j);
        h(parcelG, 24);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void generateEventId(zzcs zzcsVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcsVar);
        h(parcelG, 22);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getAppInstanceId(zzcs zzcsVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcsVar);
        h(parcelG, 20);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getCachedAppInstanceId(zzcs zzcsVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcsVar);
        h(parcelG, 19);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getConditionalUserProperties(String str, String str2, zzcs zzcsVar) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        parcelG.writeString(str2);
        zzbn.zzd(parcelG, zzcsVar);
        h(parcelG, 10);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getCurrentScreenClass(zzcs zzcsVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcsVar);
        h(parcelG, 17);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getCurrentScreenName(zzcs zzcsVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcsVar);
        h(parcelG, 16);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getGmpAppId(zzcs zzcsVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcsVar);
        h(parcelG, 21);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getMaxUserProperties(String str, zzcs zzcsVar) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        zzbn.zzd(parcelG, zzcsVar);
        h(parcelG, 6);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getSessionId(zzcs zzcsVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcsVar);
        h(parcelG, 46);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getTestFlag(zzcs zzcsVar, int i) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcsVar);
        parcelG.writeInt(i);
        h(parcelG, 38);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void getUserProperties(String str, String str2, boolean z, zzcs zzcsVar) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        parcelG.writeString(str2);
        ClassLoader classLoader = zzbn.a;
        parcelG.writeInt(z ? 1 : 0);
        zzbn.zzd(parcelG, zzcsVar);
        h(parcelG, 5);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void initForTests(Map map) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void initialize(IObjectWrapper iObjectWrapper, zzdb zzdbVar, long j) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, iObjectWrapper);
        zzbn.zzc(parcelG, zzdbVar);
        parcelG.writeLong(j);
        h(parcelG, 1);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void initializeWithElapsedTime(IObjectWrapper iObjectWrapper, zzdb zzdbVar, long j, long j2) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, iObjectWrapper);
        zzbn.zzc(parcelG, zzdbVar);
        parcelG.writeLong(j);
        parcelG.writeLong(j2);
        h(parcelG, 60);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void isDataCollectionEnabled(zzcs zzcsVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzcs zzcsVar, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void logEventWithElapsedTime(String str, String str2, Bundle bundle, boolean z, boolean z2, long j, long j2) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        parcelG.writeString(str2);
        zzbn.zzc(parcelG, bundle);
        parcelG.writeInt(z ? 1 : 0);
        parcelG.writeInt(z2 ? 1 : 0);
        parcelG.writeLong(j);
        parcelG.writeLong(j2);
        h(parcelG, 59);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel parcelG = g();
        parcelG.writeInt(5);
        parcelG.writeString(str);
        zzbn.zzd(parcelG, iObjectWrapper);
        zzbn.zzd(parcelG, iObjectWrapper2);
        zzbn.zzd(parcelG, iObjectWrapper3);
        h(parcelG, 33);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityCreatedByScionActivityInfo(zzdd zzddVar, Bundle bundle, long j) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzddVar);
        zzbn.zzc(parcelG, bundle);
        parcelG.writeLong(j);
        h(parcelG, 53);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityDestroyedByScionActivityInfo(zzdd zzddVar, long j) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzddVar);
        parcelG.writeLong(j);
        h(parcelG, 54);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityPausedByScionActivityInfo(zzdd zzddVar, long j) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzddVar);
        parcelG.writeLong(j);
        h(parcelG, 55);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityResumedByScionActivityInfo(zzdd zzddVar, long j) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzddVar);
        parcelG.writeLong(j);
        h(parcelG, 56);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzcs zzcsVar, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivitySaveInstanceStateByScionActivityInfo(zzdd zzddVar, zzcs zzcsVar, long j) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzddVar);
        zzbn.zzd(parcelG, zzcsVar);
        parcelG.writeLong(j);
        h(parcelG, 57);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityStartedByScionActivityInfo(zzdd zzddVar, long j) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzddVar);
        parcelG.writeLong(j);
        h(parcelG, 51);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void onActivityStoppedByScionActivityInfo(zzdd zzddVar, long j) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzddVar);
        parcelG.writeLong(j);
        h(parcelG, 52);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void performAction(Bundle bundle, zzcs zzcsVar, long j) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, bundle);
        zzbn.zzd(parcelG, zzcsVar);
        parcelG.writeLong(j);
        h(parcelG, 32);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void registerOnMeasurementEventListener(zzcy zzcyVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcyVar);
        h(parcelG, 35);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void resetAnalyticsData(long j) {
        Parcel parcelG = g();
        parcelG.writeLong(j);
        h(parcelG, 12);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void resetAnalyticsDataWithElapsedTime(long j, long j2) {
        Parcel parcelG = g();
        parcelG.writeLong(j);
        parcelG.writeLong(j2);
        h(parcelG, 61);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void retrieveAndUploadBatches(zzcv zzcvVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcvVar);
        h(parcelG, 58);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, bundle);
        parcelG.writeLong(j);
        h(parcelG, 8);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setConsent(Bundle bundle, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setConsentThirdParty(Bundle bundle, long j) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, bundle);
        parcelG.writeLong(j);
        h(parcelG, 45);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setCurrentScreenByScionActivityInfo(zzdd zzddVar, String str, String str2, long j) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, zzddVar);
        parcelG.writeString(str);
        parcelG.writeString(str2);
        parcelG.writeLong(j);
        h(parcelG, 50);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setDataCollectionEnabled(boolean z) {
        Parcel parcelG = g();
        ClassLoader classLoader = zzbn.a;
        parcelG.writeInt(z ? 1 : 0);
        h(parcelG, 39);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setDefaultEventParameters(Bundle bundle) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, bundle);
        h(parcelG, 42);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setEventInterceptor(zzcy zzcyVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcyVar);
        h(parcelG, 34);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setInstanceIdProvider(zzda zzdaVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setMeasurementEnabled(boolean z, long j) {
        Parcel parcelG = g();
        ClassLoader classLoader = zzbn.a;
        parcelG.writeInt(z ? 1 : 0);
        parcelG.writeLong(j);
        h(parcelG, 11);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setMinimumSessionDuration(long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setSessionTimeoutDuration(long j) {
        Parcel parcelG = g();
        parcelG.writeLong(j);
        h(parcelG, 14);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setSgtmDebugInfo(Intent intent) {
        Parcel parcelG = g();
        zzbn.zzc(parcelG, intent);
        h(parcelG, 48);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setUserId(String str, long j) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        parcelG.writeLong(j);
        h(parcelG, 7);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) {
        Parcel parcelG = g();
        parcelG.writeString(str);
        parcelG.writeString(str2);
        zzbn.zzd(parcelG, iObjectWrapper);
        parcelG.writeInt(z ? 1 : 0);
        parcelG.writeLong(j);
        h(parcelG, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public final void unregisterOnMeasurementEventListener(zzcy zzcyVar) {
        Parcel parcelG = g();
        zzbn.zzd(parcelG, zzcyVar);
        h(parcelG, 36);
    }
}
