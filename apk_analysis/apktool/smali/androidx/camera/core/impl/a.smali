.class public final synthetic Landroidx/camera/core/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/a;->b:Ljava/lang/Throwable;

    iput-object p2, p0, Landroidx/camera/core/impl/a;->c:Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

    iput-object p3, p0, Landroidx/camera/core/impl/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/a;->c:Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

    iget-object v1, p0, Landroidx/camera/core/impl/a;->d:Ljava/util/List;

    iget-object p0, p0, Landroidx/camera/core/impl/a;->b:Ljava/lang/Throwable;

    invoke-static {p0, v0, v1}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;->a(Ljava/lang/Throwable;Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;Ljava/util/List;)V

    return-void
.end method
