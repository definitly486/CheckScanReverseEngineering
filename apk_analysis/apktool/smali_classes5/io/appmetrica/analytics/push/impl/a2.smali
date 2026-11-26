.class public final Lio/appmetrica/analytics/push/impl/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/push/impl/C;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Lio/appmetrica/analytics/push/internal/service/PushService;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/internal/service/PushService;Lio/appmetrica/analytics/push/impl/C;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/a2;->c:Lio/appmetrica/analytics/push/internal/service/PushService;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/a2;->a:Lio/appmetrica/analytics/push/impl/C;

    iput-object p3, p0, Lio/appmetrica/analytics/push/impl/a2;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/a2;->a:Lio/appmetrica/analytics/push/impl/C;

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/a2;->c:Lio/appmetrica/analytics/push/internal/service/PushService;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/a2;->b:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/push/impl/C;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
