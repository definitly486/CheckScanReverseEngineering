.class public final Lio/appmetrica/analytics/push/impl/E0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/HandlerThread;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/E0;->a:Landroid/os/HandlerThread;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/E0;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/E0;->a:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
