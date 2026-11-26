.class public final synthetic Lu5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/pl;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/pl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu5a;->a:Lio/appmetrica/analytics/impl/pl;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V
    .locals 0

    iget-object p0, p0, Lu5a;->a:Lio/appmetrica/analytics/impl/pl;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/pl;->b(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    return-void
.end method
