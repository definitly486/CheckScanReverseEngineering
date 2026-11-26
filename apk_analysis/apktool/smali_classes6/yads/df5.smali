.class public final Lyads/df5;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "SourceFile"

# interfaces
.implements Lyads/dh5;


# instance fields
.field public final a:Lyads/eh5;


# direct methods
.method public constructor <init>(Lyads/dc0;)V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    new-instance v0, Lyads/eh5;

    invoke-direct {v0, p1}, Lyads/eh5;-><init>(Lyads/dc0;)V

    iput-object v0, p0, Lyads/df5;->a:Lyads/eh5;

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lyads/df5;->a:Lyads/eh5;

    .line 41
    iget-object p0, p0, Lyads/eh5;->b:Lcl4;

    .line 42
    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    .line 43
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1

    iget-object p0, p0, Lyads/df5;->a:Lyads/eh5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/k26;->a()Z

    move-result v0

    iget-object p0, p0, Lyads/eh5;->b:Lcl4;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    invoke-static {p0, p1, p2, p3}, Lyads/of;->a(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1

    .line 33
    iget-object p0, p0, Lyads/df5;->a:Lyads/eh5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {}, Lyads/k26;->a()Z

    move-result v0

    .line 35
    iget-object p0, p0, Lyads/eh5;->b:Lcl4;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    .line 37
    invoke-static {p0, p1, p2, p3}, Lyads/of;->a(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    return-void

    .line 38
    :cond_0
    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    .line 39
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lyads/df5;->a:Lyads/eh5;

    invoke-virtual {p0, p1, p2}, Lyads/eh5;->a([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 3

    iget-object p0, p0, Lyads/df5;->a:Lyads/eh5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lyads/eh5;->b:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-static {}, Lyads/k26;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1, p2, p3}, Lyads/of;->b(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    iget-object v1, p0, Lyads/eh5;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0}, Lyads/eh5;->b()V

    invoke-virtual {p0}, Lyads/eh5;->c()V

    iget-object p0, p0, Lyads/eh5;->d:Ljavax/net/ssl/X509TrustManager;

    if-eqz p0, :cond_2

    invoke-static {}, Lyads/k26;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1, p2, p3}, Lyads/of;->b(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_3

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :cond_3
    :try_start_2
    const-string p0, "SdkTrustManager"

    const-string p1, "Custom TrustManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit v1

    throw p0
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 3

    .line 78
    iget-object p0, p0, Lyads/df5;->a:Lyads/eh5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    :try_start_0
    iget-object v0, p0, Lyads/eh5;->b:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 80
    invoke-static {}, Lyads/k26;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {v0, p1, p2, p3}, Lyads/of;->b(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 83
    :goto_0
    iget-object v1, p0, Lyads/eh5;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_1
    invoke-virtual {p0}, Lyads/eh5;->b()V

    .line 85
    invoke-virtual {p0}, Lyads/eh5;->c()V

    .line 86
    iget-object p0, p0, Lyads/eh5;->d:Ljavax/net/ssl/X509TrustManager;

    if-eqz p0, :cond_2

    .line 87
    invoke-static {}, Lyads/k26;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-static {p0, p1, p2, p3}, Lyads/of;->b(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 89
    :cond_1
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 90
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_3

    .line 91
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit v1

    return-void

    .line 93
    :cond_3
    :try_start_2
    const-string p0, "SdkTrustManager"

    const-string p1, "Custom TrustManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :goto_3
    monitor-exit v1

    throw p0
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lyads/df5;->a:Lyads/eh5;

    iget-object p0, p0, Lyads/eh5;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {p0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method
