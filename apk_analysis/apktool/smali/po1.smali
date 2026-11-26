.class public final synthetic Lpo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/pipe/Request$Listener;

.field public final synthetic c:Landroidx/camera/camera2/pipe/RequestMetadata;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpo1;->b:Landroidx/camera/camera2/pipe/Request$Listener;

    iput-object p2, p0, Lpo1;->c:Landroidx/camera/camera2/pipe/RequestMetadata;

    iput-wide p3, p0, Lpo1;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lpo1;->c:Landroidx/camera/camera2/pipe/RequestMetadata;

    iget-wide v1, p0, Lpo1;->d:J

    iget-object p0, p0, Lpo1;->b:Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-static {p0, v0, v1, v2}, Landroidx/camera/camera2/impl/ComboRequestListener;->a(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    return-void
.end method
