.class public final Lyads/um6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/t70;


# instance fields
.field public final a:Lcom/yandex/mobile/ads/common/InitializationListener;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/common/InitializationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/um6;->a:Lcom/yandex/mobile/ads/common/InitializationListener;

    return-void
.end method

.method public static final a(Lyads/um6;)Lj59;
    .locals 1

    iget-object p0, p0, Lyads/um6;->a:Lcom/yandex/mobile/ads/common/InitializationListener;

    check-cast p0, Lni0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    const-string p0, "yandex mob sdk listener initialized"

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lyads/um6;

    if-eqz v0, :cond_0

    check-cast p1, Lyads/um6;

    iget-object p1, p1, Lyads/um6;->a:Lcom/yandex/mobile/ads/common/InitializationListener;

    iget-object p0, p0, Lyads/um6;->a:Lcom/yandex/mobile/ads/common/InitializationListener;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/um6;->a:Lcom/yandex/mobile/ads/common/InitializationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onInitializationCompleted()V
    .locals 3

    new-instance v0, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lg22;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lg22;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lll3;)V

    return-void
.end method
