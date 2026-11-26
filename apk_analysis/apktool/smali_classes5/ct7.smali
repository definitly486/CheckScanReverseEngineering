.class public final Lct7;
.super Lr1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr1<",
        "Lzs7<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:Lc31;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lr1;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lct7;->a:J

    return-void
.end method


# virtual methods
.method public final a(Lp1;)Z
    .locals 4

    check-cast p1, Lzs7;

    iget-wide v0, p0, Lct7;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p1, Lzs7;->j:J

    iget-wide v2, p1, Lzs7;->k:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iput-wide v0, p1, Lzs7;->k:J

    :cond_1
    iput-wide v0, p0, Lct7;->a:J

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Lp1;)[Le02;
    .locals 4

    check-cast p1, Lzs7;

    iget-wide v0, p0, Lct7;->a:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lct7;->a:J

    const/4 v2, 0x0

    iput-object v2, p0, Lct7;->b:Lc31;

    invoke-virtual {p1, v0, v1}, Lzs7;->w(J)[Le02;

    move-result-object p0

    return-object p0
.end method
