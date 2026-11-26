.class public final synthetic Landroidx/camera/core/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/d;->b:Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    iput-object p2, p0, Landroidx/camera/core/impl/d;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/d;->b:Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    iget-object p0, p0, Landroidx/camera/core/impl/d;->c:Ljava/util/Set;

    invoke-static {v0, p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->i(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;)V

    return-void
.end method
