.class public final Lcom/my/tracker/obfuscated/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/tracker/obfuscated/z0$a;
    }
.end annotation


# static fields
.field static f:I = 0x3

.field static volatile g:Lcom/my/tracker/obfuscated/z0;


# instance fields
.field final a:Lcom/my/tracker/obfuscated/i0;

.field final b:Lcom/my/tracker/obfuscated/n;

.field final c:Landroid/content/Context;

.field d:Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;

.field e:I


# direct methods
.method public constructor <init>(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/n;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/z0;->a:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/z0;->b:Lcom/my/tracker/obfuscated/n;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/my/tracker/obfuscated/z0;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/n;Landroid/content/Context;)V
    .locals 2

    .line 92
    sget-object v0, Lcom/my/tracker/obfuscated/z0;->g:Lcom/my/tracker/obfuscated/z0;

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    const-class v0, Lcom/my/tracker/obfuscated/z0;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/my/tracker/obfuscated/z0;->g:Lcom/my/tracker/obfuscated/z0;

    if-eqz v1, :cond_1

    .line 95
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 96
    :cond_1
    new-instance v1, Lcom/my/tracker/obfuscated/z0;

    invoke-direct {v1, p0, p1, p2}, Lcom/my/tracker/obfuscated/z0;-><init>(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/n;Landroid/content/Context;)V

    .line 97
    new-instance p0, Ldia;

    invoke-direct {p0, v1}, Ldia;-><init>(Lcom/my/tracker/obfuscated/z0;)V

    invoke-static {p0}, Lcom/my/tracker/obfuscated/m;->a(Ljava/lang/Runnable;)V

    .line 98
    sput-object v1, Lcom/my/tracker/obfuscated/z0;->g:Lcom/my/tracker/obfuscated/z0;

    .line 99
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/my/tracker/obfuscated/z0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/my/tracker/obfuscated/t1;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/t1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/t1;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    :try_start_0
    const-string v0, "HuaweiReferrerHandler: initialize InstallReferrerClient"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/my/tracker/obfuscated/z0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    iput-object v0, p0, Lcom/my/tracker/obfuscated/z0;->d:Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;

    .line 79
    new-instance v0, Lcom/my/tracker/obfuscated/z0$a;

    invoke-direct {v0, p0}, Lcom/my/tracker/obfuscated/z0$a;-><init>(Lcom/my/tracker/obfuscated/z0;)V

    invoke-virtual {p0, v0}, Lcom/my/tracker/obfuscated/z0;->a(Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 80
    const-string v0, "HuaweiReferrerHandler: error occurred while initialization InstallReferrerClient"

    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 67
    const-string v0, "HuaweiReferrerHandler: InstallReferrerResponse code: "

    iget-object v1, p0, Lcom/my/tracker/obfuscated/z0;->d:Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;

    if-nez v1, :cond_0

    .line 68
    const-string p0, "HuaweiReferrerHandler: install referrer client is null"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 69
    :try_start_0
    const-string p1, "HuaweiReferrerHandler: retrieving install referrer"

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/my/tracker/obfuscated/z0;->d:Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/huawei/hms/ads/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/z0;->a(Lcom/huawei/hms/ads/installreferrer/api/ReferrerDetails;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 72
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 73
    :goto_0
    const-string v0, "HuaweiReferrerHandler: error occurred while retrieving install referrer"

    invoke-static {v0, p1}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/my/tracker/obfuscated/z0;->d:Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/my/tracker/obfuscated/z0;->d:Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;

    return-void
.end method

.method public a(Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerStateListener;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/my/tracker/obfuscated/z0;->d:Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;

    if-nez v0, :cond_0

    .line 82
    const-string p0, "HuaweiReferrerHandler: InstallReferrerClient is null"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    iget v0, p0, Lcom/my/tracker/obfuscated/z0;->e:I

    sget v1, Lcom/my/tracker/obfuscated/z0;->f:I

    if-lt v0, v1, :cond_1

    .line 84
    const-string p1, "HuaweiReferrerHandler: max count of reconnection attempts is reached"

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 85
    :try_start_0
    iget-object p1, p0, Lcom/my/tracker/obfuscated/z0;->d:Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/my/tracker/obfuscated/z0;->d:Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 87
    iput v0, p0, Lcom/my/tracker/obfuscated/z0;->e:I

    .line 88
    :try_start_1
    const-string v0, "HuaweiReferrerHandler: connect to referrer client"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/my/tracker/obfuscated/z0;->d:Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 90
    const-string v1, "HuaweiReferrerHandler: error occurred while connection InstallReferrerClient"

    invoke-static {v1, v0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/z0;->a(Lcom/huawei/hms/ads/installreferrer/api/InstallReferrerStateListener;)V

    return-void
.end method

.method public a(Lcom/huawei/hms/ads/installreferrer/api/ReferrerDetails;)V
    .locals 8

    iget-object v0, p0, Lcom/my/tracker/obfuscated/z0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/my/tracker/obfuscated/t1;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/t1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/t1;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "HuaweiReferrerHandler: api referrer has been tracked"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/ads/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HuaweiReferrerHandler: retrieving install referrer is completed. Referrer: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/tracker/obfuscated/z0;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/my/tracker/obfuscated/w;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/my/tracker/obfuscated/z0;->a:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p1}, Lcom/huawei/hms/ads/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/huawei/hms/ads/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/my/tracker/obfuscated/i0;->b(Ljava/lang/String;Ljava/lang/String;JJ)V

    iget-object p0, p0, Lcom/my/tracker/obfuscated/z0;->b:Lcom/my/tracker/obfuscated/n;

    invoke-virtual {p0, v2}, Lcom/my/tracker/obfuscated/n;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/t1;->t()V

    return-void
.end method
