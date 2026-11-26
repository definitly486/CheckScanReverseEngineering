.class public final Lyads/ii5;
.super Lyads/rb5;
.source "SourceFile"


# instance fields
.field public final i:Lyads/cw;

.field public final j:Lyads/gi5;

.field public final k:[B

.field public final l:Lyads/lw;


# direct methods
.method public constructor <init>(Lyads/hi5;Lyads/cw;Lyads/gi5;[B)V
    .locals 1

    invoke-direct {p0}, Lyads/rb5;-><init>()V

    iput-object p2, p0, Lyads/ii5;->i:Lyads/cw;

    iput-object p3, p0, Lyads/ii5;->j:Lyads/gi5;

    iput-object p4, p0, Lyads/ii5;->k:[B

    new-instance v0, Lyads/lw;

    iget-object p1, p1, Lyads/hi5;->c:Lyads/bd0;

    invoke-direct {v0, p2, p1, p4, p3}, Lyads/lw;-><init>(Lyads/cw;Lyads/bd0;[BLyads/kw;)V

    iput-object v0, p0, Lyads/ii5;->l:Lyads/lw;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lyads/ii5;->l:Lyads/lw;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/lw;->j:Z

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lyads/ii5;->l:Lyads/lw;

    invoke-virtual {v0}, Lyads/lw;->a()V

    iget-object p0, p0, Lyads/ii5;->j:Lyads/gi5;

    if-eqz p0, :cond_2

    iget v0, p0, Lyads/gi5;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyads/gi5;->e:I

    iget-object v1, p0, Lyads/gi5;->a:Lyads/pk2;

    iget-wide v2, p0, Lyads/gi5;->b:J

    iget-wide v4, p0, Lyads/gi5;->d:J

    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    const/high16 v7, 0x42c80000    # 100.0f

    if-eqz v6, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-eqz v6, :cond_0

    long-to-float p0, v4

    mul-float/2addr p0, v7

    long-to-float v0, v2

    div-float/2addr p0, v0

    :goto_0
    move v6, p0

    goto :goto_1

    :cond_0
    iget p0, p0, Lyads/gi5;->c:I

    if-eqz p0, :cond_1

    int-to-float v0, v0

    mul-float/2addr v0, v7

    int-to-float p0, p0

    div-float p0, v0, p0

    goto :goto_0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    :goto_1
    invoke-virtual/range {v1 .. v6}, Lyads/pk2;->a(JJF)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
