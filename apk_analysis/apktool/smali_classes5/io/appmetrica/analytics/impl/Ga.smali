.class public final Lio/appmetrica/analytics/impl/Ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# instance fields
.field public final a:Lcom/android/installreferrer/api/InstallReferrerClient;

.field public final b:Lio/appmetrica/analytics/impl/qg;

.field public final synthetic c:Lio/appmetrica/analytics/impl/Ha;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ha;Lcom/android/installreferrer/api/InstallReferrerClient;Lio/appmetrica/analytics/impl/qg;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ga;->c:Lio/appmetrica/analytics/impl/Ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ga;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ga;->b:Lio/appmetrica/analytics/impl/qg;

    return-void
.end method

.method public static a(I)V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "Failed to get referrer via Google Play referrer library"

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    return-void

    .line 136
    :cond_0
    sget-object p0, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Permission error"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    new-instance v2, Lio/appmetrica/analytics/impl/Cj;

    invoke-direct {v2, v1, v0}, Lio/appmetrica/analytics/impl/Cj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    return-void

    .line 140
    :cond_1
    sget-object p0, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Developer error"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    new-instance v2, Lio/appmetrica/analytics/impl/Cj;

    invoke-direct {v2, v1, v0}, Lio/appmetrica/analytics/impl/Cj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/Ga;I)V
    .locals 10

    const-string v0, "The connection returned an error code "

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Ga;->a(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lio/appmetrica/analytics/impl/wg;

    invoke-direct {v0, p1, v2, v1, v2}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjh2;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ga;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Lio/appmetrica/analytics/impl/og;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v7

    const/4 v9, 0x2

    invoke-direct/range {v3 .. v9}, Lio/appmetrica/analytics/impl/og;-><init>(Ljava/lang/String;JJI)V

    goto :goto_1

    :cond_3
    :goto_0
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_4

    const-string p1, "Referrer is null"

    new-instance v0, Lio/appmetrica/analytics/impl/wg;

    invoke-direct {v0, p1, v2, v1, v2}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjh2;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lio/appmetrica/analytics/impl/xg;

    invoke-direct {v0, v3}, Lio/appmetrica/analytics/impl/xg;-><init>(Lio/appmetrica/analytics/impl/og;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    sget-object v0, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/appmetrica/analytics/impl/Cj;

    const-string v2, "Failed to get referrer via Google Play referrer library"

    invoke-direct {v1, v2, p1}, Lio/appmetrica/analytics/impl/Cj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    new-instance v0, Lio/appmetrica/analytics/impl/wg;

    invoke-direct {v0, v2, p1}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    check-cast v0, Lio/appmetrica/analytics/impl/yg;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ga;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    :try_start_1
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ga;->b:Lio/appmetrica/analytics/impl/qg;

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ga;->c:Lio/appmetrica/analytics/impl/Ha;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ha;->a:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v1, Lhn3;

    invoke-direct {v1, p0, p1}, Lhn3;-><init>(Lio/appmetrica/analytics/impl/Ga;I)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
