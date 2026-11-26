.class public abstract Landroidx/webkit/ProxyController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/ProxyController$LAZY_HOLDER;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroidx/webkit/ProxyController;
    .locals 1

    const-string v0, "PROXY_OVERRIDE"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/webkit/ProxyController$LAZY_HOLDER;->INSTANCE:Landroidx/webkit/ProxyController;

    return-object v0

    :cond_0
    const-string v0, "Proxy override not supported"

    invoke-static {v0}, Ln1;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract clearProxyOverride(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
.end method

.method public abstract setProxyOverride(Landroidx/webkit/ProxyConfig;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
.end method
