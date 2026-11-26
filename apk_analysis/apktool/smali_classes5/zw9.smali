.class public final synthetic Lzw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/hc;

.field public final synthetic c:Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/hc;Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzw9;->b:Lio/appmetrica/analytics/impl/hc;

    iput-object p2, p0, Lzw9;->c:Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;

    iput-boolean p3, p0, Lzw9;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lzw9;->c:Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;

    iget-boolean v1, p0, Lzw9;->d:Z

    iget-object p0, p0, Lzw9;->b:Lio/appmetrica/analytics/impl/hc;

    invoke-static {p0, v0, v1}, Lio/appmetrica/analytics/impl/hc;->a(Lio/appmetrica/analytics/impl/hc;Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;Z)V

    return-void
.end method
