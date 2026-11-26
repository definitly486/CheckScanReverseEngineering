.class public final synthetic Lio/appmetrica/analytics/push/internal/service/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/push/impl/C;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/push/impl/C;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/internal/service/a;->b:Lio/appmetrica/analytics/push/impl/C;

    iput-object p2, p0, Lio/appmetrica/analytics/push/internal/service/a;->c:Landroid/content/Context;

    iput-object p3, p0, Lio/appmetrica/analytics/push/internal/service/a;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/push/internal/service/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lio/appmetrica/analytics/push/internal/service/a;->d:Landroid/content/Intent;

    iget-object p0, p0, Lio/appmetrica/analytics/push/internal/service/a;->b:Lio/appmetrica/analytics/push/impl/C;

    invoke-static {p0, v0, v1}, Lio/appmetrica/analytics/push/internal/service/FakeService;->b(Lio/appmetrica/analytics/push/impl/C;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
