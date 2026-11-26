.class public final Lcom/tapjoy/internal/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Lcom/tapjoy/internal/r1;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/tapjoy/internal/r1;

    invoke-direct {v0}, Lcom/tapjoy/internal/r1;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/w0;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/tapjoy/internal/w0;->b:Lcom/tapjoy/internal/r1;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/w0;->a:Ljava/lang/Long;

    return-void
.end method
