.class public final Lyads/hc5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:Lyads/ee;

.field public d:Lyads/hc5;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lyads/hc5;->c:Lyads/ee;

    if-nez v0, :cond_0

    iput-wide p1, p0, Lyads/hc5;->a:J

    const-wide/32 v0, 0x10000

    add-long/2addr p1, v0

    iput-wide p1, p0, Lyads/hc5;->b:J

    return-void

    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    throw p0
.end method
