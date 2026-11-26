package com.google.firebase.dynamiclinks.ktx;

import android.net.Uri;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import com.google.firebase.dynamiclinks.PendingDynamicLinkData;
import com.google.firebase.dynamiclinks.ShortDynamicLink;
import com.google.firebase.ktx.Firebase;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseDynamicLinksKt {
    @ul2
    public static final void androidParameters(DynamicLink.Builder builder, String str, nl3<? super DynamicLink.AndroidParameters.Builder, j59> nl3Var) {
        builder.getClass();
        str.getClass();
        nl3Var.getClass();
        DynamicLink.AndroidParameters.Builder builder2 = new DynamicLink.AndroidParameters.Builder(str);
        nl3Var.invoke(builder2);
        builder.setAndroidParameters(builder2.build());
    }

    @ul2
    public static final Uri component1(ShortDynamicLink shortDynamicLink) {
        shortDynamicLink.getClass();
        return shortDynamicLink.getShortLink();
    }

    @ul2
    public static final Uri component2(ShortDynamicLink shortDynamicLink) {
        shortDynamicLink.getClass();
        return shortDynamicLink.getPreviewLink();
    }

    @ul2
    public static final List<ShortDynamicLink.Warning> component3(ShortDynamicLink shortDynamicLink) {
        shortDynamicLink.getClass();
        List warnings = shortDynamicLink.getWarnings();
        warnings.getClass();
        return warnings;
    }

    @ul2
    public static final DynamicLink dynamicLink(FirebaseDynamicLinks firebaseDynamicLinks, nl3<? super DynamicLink.Builder, j59> nl3Var) {
        firebaseDynamicLinks.getClass();
        nl3Var.getClass();
        DynamicLink.Builder builderCreateDynamicLink = FirebaseDynamicLinks.getInstance().createDynamicLink();
        builderCreateDynamicLink.getClass();
        nl3Var.invoke(builderCreateDynamicLink);
        DynamicLink dynamicLinkBuildDynamicLink = builderCreateDynamicLink.buildDynamicLink();
        dynamicLinkBuildDynamicLink.getClass();
        return dynamicLinkBuildDynamicLink;
    }

    public static final FirebaseDynamicLinks dynamicLinks(Firebase firebase, FirebaseApp firebaseApp) {
        firebase.getClass();
        firebaseApp.getClass();
        FirebaseDynamicLinks firebaseDynamicLinks = FirebaseDynamicLinks.getInstance(firebaseApp);
        firebaseDynamicLinks.getClass();
        return firebaseDynamicLinks;
    }

    public static final FirebaseDynamicLinks getDynamicLinks(Firebase firebase) {
        firebase.getClass();
        FirebaseDynamicLinks firebaseDynamicLinks = FirebaseDynamicLinks.getInstance();
        firebaseDynamicLinks.getClass();
        return firebaseDynamicLinks;
    }

    @ul2
    public static final void googleAnalyticsParameters(DynamicLink.Builder builder, String str, String str2, String str3, nl3<? super DynamicLink.GoogleAnalyticsParameters.Builder, j59> nl3Var) {
        builder.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        nl3Var.getClass();
        DynamicLink.GoogleAnalyticsParameters.Builder builder2 = new DynamicLink.GoogleAnalyticsParameters.Builder(str, str2, str3);
        nl3Var.invoke(builder2);
        builder.setGoogleAnalyticsParameters(builder2.build());
    }

    @ul2
    public static final void iosParameters(DynamicLink.Builder builder, String str, nl3<? super DynamicLink.IosParameters.Builder, j59> nl3Var) {
        builder.getClass();
        str.getClass();
        nl3Var.getClass();
        DynamicLink.IosParameters.Builder builder2 = new DynamicLink.IosParameters.Builder(str);
        nl3Var.invoke(builder2);
        builder.setIosParameters(builder2.build());
    }

    @ul2
    public static final void itunesConnectAnalyticsParameters(DynamicLink.Builder builder, nl3<? super DynamicLink.ItunesConnectAnalyticsParameters.Builder, j59> nl3Var) {
        builder.getClass();
        nl3Var.getClass();
        DynamicLink.ItunesConnectAnalyticsParameters.Builder builder2 = new DynamicLink.ItunesConnectAnalyticsParameters.Builder();
        nl3Var.invoke(builder2);
        builder.setItunesConnectAnalyticsParameters(builder2.build());
    }

    @ul2
    public static final void navigationInfoParameters(DynamicLink.Builder builder, nl3<? super DynamicLink.NavigationInfoParameters.Builder, j59> nl3Var) {
        builder.getClass();
        nl3Var.getClass();
        DynamicLink.NavigationInfoParameters.Builder builder2 = new DynamicLink.NavigationInfoParameters.Builder();
        nl3Var.invoke(builder2);
        builder.setNavigationInfoParameters(builder2.build());
    }

    @ul2
    public static final Task<ShortDynamicLink> shortLinkAsync(FirebaseDynamicLinks firebaseDynamicLinks, nl3<? super DynamicLink.Builder, j59> nl3Var) {
        firebaseDynamicLinks.getClass();
        nl3Var.getClass();
        DynamicLink.Builder builderCreateDynamicLink = FirebaseDynamicLinks.getInstance().createDynamicLink();
        builderCreateDynamicLink.getClass();
        nl3Var.invoke(builderCreateDynamicLink);
        Task<ShortDynamicLink> taskBuildShortDynamicLink = builderCreateDynamicLink.buildShortDynamicLink();
        taskBuildShortDynamicLink.getClass();
        return taskBuildShortDynamicLink;
    }

    @ul2
    public static final void socialMetaTagParameters(DynamicLink.Builder builder, nl3<? super DynamicLink.SocialMetaTagParameters.Builder, j59> nl3Var) {
        builder.getClass();
        nl3Var.getClass();
        DynamicLink.SocialMetaTagParameters.Builder builder2 = new DynamicLink.SocialMetaTagParameters.Builder();
        nl3Var.invoke(builder2);
        builder.setSocialMetaTagParameters(builder2.build());
    }

    @ul2
    public static final Uri component1(PendingDynamicLinkData pendingDynamicLinkData) {
        pendingDynamicLinkData.getClass();
        return pendingDynamicLinkData.getLink();
    }

    @ul2
    public static final int component2(PendingDynamicLinkData pendingDynamicLinkData) {
        pendingDynamicLinkData.getClass();
        return pendingDynamicLinkData.getMinimumAppVersion();
    }

    @ul2
    public static final long component3(PendingDynamicLinkData pendingDynamicLinkData) {
        pendingDynamicLinkData.getClass();
        return pendingDynamicLinkData.getClickTimestamp();
    }

    @ul2
    public static final void androidParameters(DynamicLink.Builder builder, nl3<? super DynamicLink.AndroidParameters.Builder, j59> nl3Var) {
        builder.getClass();
        nl3Var.getClass();
        DynamicLink.AndroidParameters.Builder builder2 = new DynamicLink.AndroidParameters.Builder();
        nl3Var.invoke(builder2);
        builder.setAndroidParameters(builder2.build());
    }

    @ul2
    public static final Task<ShortDynamicLink> shortLinkAsync(FirebaseDynamicLinks firebaseDynamicLinks, int i, nl3<? super DynamicLink.Builder, j59> nl3Var) {
        firebaseDynamicLinks.getClass();
        nl3Var.getClass();
        DynamicLink.Builder builderCreateDynamicLink = FirebaseDynamicLinks.getInstance().createDynamicLink();
        builderCreateDynamicLink.getClass();
        nl3Var.invoke(builderCreateDynamicLink);
        Task<ShortDynamicLink> taskBuildShortDynamicLink = builderCreateDynamicLink.buildShortDynamicLink(i);
        taskBuildShortDynamicLink.getClass();
        return taskBuildShortDynamicLink;
    }

    @ul2
    public static final void googleAnalyticsParameters(DynamicLink.Builder builder, nl3<? super DynamicLink.GoogleAnalyticsParameters.Builder, j59> nl3Var) {
        builder.getClass();
        nl3Var.getClass();
        DynamicLink.GoogleAnalyticsParameters.Builder builder2 = new DynamicLink.GoogleAnalyticsParameters.Builder();
        nl3Var.invoke(builder2);
        builder.setGoogleAnalyticsParameters(builder2.build());
    }
}
