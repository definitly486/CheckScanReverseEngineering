.class public final synthetic Lno1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/pipe/Request$Listener;

.field public final synthetic c:Landroidx/camera/camera2/pipe/RequestMetadata;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno1;->b:Landroidx/camera/camera2/pipe/Request$Listener;

    iput-object p2, p0, Lno1;->c:Landroidx/camera/camera2/pipe/RequestMetadata;

    iput-wide p3, p0, Lno1;->d:J

    iput p5, p0, Lno1;->e:I

    iput p6, p0, Lno1;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v4, p0, Lno1;->e:I

    iget v5, p0, Lno1;->f:I

    iget-object v0, p0, Lno1;->b:Landroidx/camera/camera2/pipe/Request$Listener;

    iget-object v1, p0, Lno1;->c:Landroidx/camera/camera2/pipe/RequestMetadata;

    iget-wide v2, p0, Lno1;->d:J

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/ComboRequestListener;->b(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    return-void
.end method
