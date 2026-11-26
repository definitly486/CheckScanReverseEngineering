.class public final synthetic Landroidx/camera/video/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/VideoCapture$2;

.field public final synthetic c:Landroidx/camera/core/impl/SessionConfig$Builder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoCapture$2;Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/p;->b:Landroidx/camera/video/VideoCapture$2;

    iput-object p2, p0, Landroidx/camera/video/p;->c:Landroidx/camera/core/impl/SessionConfig$Builder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/p;->b:Landroidx/camera/video/VideoCapture$2;

    iget-object p0, p0, Landroidx/camera/video/p;->c:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-static {v0, p0}, Landroidx/camera/video/VideoCapture$2;->a(Landroidx/camera/video/VideoCapture$2;Landroidx/camera/core/impl/SessionConfig$Builder;)V

    return-void
.end method
