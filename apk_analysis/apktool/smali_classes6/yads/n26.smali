.class public final Lyads/n26;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vx5;

.field public final b:Lyads/os4;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/vx5;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lyads/vx5;-><init>(J)V

    iput-object v0, p0, Lyads/n26;->a:Lyads/vx5;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/n26;->f:J

    iput-wide v0, p0, Lyads/n26;->g:J

    iput-wide v0, p0, Lyads/n26;->h:J

    new-instance v0, Lyads/os4;

    invoke-direct {v0}, Lyads/os4;-><init>()V

    iput-object v0, p0, Lyads/n26;->b:Lyads/os4;

    return-void
.end method
