.class public final synthetic Lf11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/impl/CameraPresenceProvider;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf11;->b:Landroidx/camera/core/impl/CameraPresenceProvider;

    iput-object p2, p0, Lf11;->c:Ljava/util/List;

    iput p3, p0, Lf11;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf11;->c:Ljava/util/List;

    iget v1, p0, Lf11;->d:I

    iget-object p0, p0, Lf11;->b:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {p0, v0, v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->h(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V

    return-void
.end method
