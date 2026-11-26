.class public final Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinksKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final androidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Ljava/lang/String;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;

    invoke-direct {v0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setAndroidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final androidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lnl3<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;-><init>()V

    .line 26
    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setAndroidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final component1(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Landroid/net/Uri;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final component1(Lcom/google/firebase/dynamiclinks/ShortDynamicLink;)Landroid/net/Uri;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;->getShortLink()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final component2(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getMinimumAppVersion()I

    move-result p0

    return p0
.end method

.method public static final component2(Lcom/google/firebase/dynamiclinks/ShortDynamicLink;)Landroid/net/Uri;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;->getPreviewLink()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final component3(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getClickTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final component3(Lcom/google/firebase/dynamiclinks/ShortDynamicLink;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink$Warning;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;->getWarnings()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final dynamicLink(Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;Lnl3;)Lcom/google/firebase/dynamiclinks/DynamicLink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;",
            "Lnl3<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lj59;",
            ">;)",
            "Lcom/google/firebase/dynamiclinks/DynamicLink;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->createDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->buildDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final dynamicLinks(Lcom/google/firebase/Firebase;Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final getDynamicLinks(Lcom/google/firebase/Firebase;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final googleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setGoogleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final googleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lnl3<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;-><init>()V

    .line 32
    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setGoogleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final iosParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Ljava/lang/String;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;

    invoke-direct {v0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setIosParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final itunesConnectAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lnl3<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;-><init>()V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setItunesConnectAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final navigationInfoParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lnl3<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;-><init>()V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setNavigationInfoParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final shortLinkAsync(Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;ILnl3;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;",
            "I",
            "Lnl3<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lj59;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->createDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-interface {p2, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->buildShortDynamicLink(I)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final shortLinkAsync(Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;Lnl3;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;",
            "Lnl3<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lj59;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->createDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->buildShortDynamicLink()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final socialMetaTagParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lnl3<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;-><init>()V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setSocialMetaTagParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method
