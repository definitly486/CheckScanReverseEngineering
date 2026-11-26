.class public final Lio/appmetrica/analytics/push/impl/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/push/impl/m2;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/m2;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/k2;->a:Lio/appmetrica/analytics/push/impl/m2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/k2;->a:Lio/appmetrica/analytics/push/impl/m2;

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/m2;->a:Lio/appmetrica/analytics/push/impl/l2;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/m2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/push/impl/l2;->a(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
