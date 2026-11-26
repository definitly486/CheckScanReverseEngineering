.class public final synthetic Lqo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/pipe/Request$Listener;

.field public final synthetic c:Landroidx/camera/camera2/pipe/RequestMetadata;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqo1;->b:Landroidx/camera/camera2/pipe/Request$Listener;

    iput-object p2, p0, Lqo1;->c:Landroidx/camera/camera2/pipe/RequestMetadata;

    iput-wide p3, p0, Lqo1;->d:J

    iput-wide p5, p0, Lqo1;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-wide v2, p0, Lqo1;->d:J

    iget-wide v4, p0, Lqo1;->e:J

    iget-object v0, p0, Lqo1;->b:Landroidx/camera/camera2/pipe/Request$Listener;

    iget-object v1, p0, Lqo1;->c:Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/ComboRequestListener;->e(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method
