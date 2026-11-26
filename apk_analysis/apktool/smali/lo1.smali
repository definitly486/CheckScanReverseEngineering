.class public final synthetic Llo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/pipe/Request$Listener;

.field public final synthetic c:Landroidx/camera/camera2/pipe/RequestMetadata;

.field public final synthetic d:J

.field public final synthetic e:Landroidx/camera/camera2/pipe/FrameInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llo1;->b:Landroidx/camera/camera2/pipe/Request$Listener;

    iput-object p2, p0, Llo1;->c:Landroidx/camera/camera2/pipe/RequestMetadata;

    iput-wide p3, p0, Llo1;->d:J

    iput-object p5, p0, Llo1;->e:Landroidx/camera/camera2/pipe/FrameInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Llo1;->d:J

    iget-object v2, p0, Llo1;->e:Landroidx/camera/camera2/pipe/FrameInfo;

    iget-object v3, p0, Llo1;->b:Landroidx/camera/camera2/pipe/Request$Listener;

    iget-object p0, p0, Llo1;->c:Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-static {v3, p0, v0, v1, v2}, Landroidx/camera/camera2/impl/ComboRequestListener;->j(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method
