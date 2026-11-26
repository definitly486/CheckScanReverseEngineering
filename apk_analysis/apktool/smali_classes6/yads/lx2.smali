.class public final Lyads/lx2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lyads/kx2;

.field public b:Lyads/kx2;

.field public c:Z

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/kx2;

    invoke-direct {v0}, Lyads/kx2;-><init>()V

    iput-object v0, p0, Lyads/lx2;->a:Lyads/kx2;

    new-instance v0, Lyads/kx2;

    invoke-direct {v0}, Lyads/kx2;-><init>()V

    iput-object v0, p0, Lyads/lx2;->b:Lyads/kx2;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/lx2;->d:J

    return-void
.end method
