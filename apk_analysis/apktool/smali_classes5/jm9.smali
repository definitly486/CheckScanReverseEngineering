.class public final synthetic Ljm9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ln07;

.field public final synthetic c:J

.field public final synthetic d:Lq07;

.field public final synthetic e:Liy6;

.field public final synthetic f:Lq07;

.field public final synthetic g:Lq07;

.field public final synthetic h:Lr07;

.field public final synthetic i:Lr07;

.field public final synthetic j:Lr07;


# direct methods
.method public synthetic constructor <init>(Ln07;JLq07;Liy6;Lq07;Lq07;Lr07;Lr07;Lr07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljm9;->b:Ln07;

    iput-wide p2, p0, Ljm9;->c:J

    iput-object p4, p0, Ljm9;->d:Lq07;

    iput-object p5, p0, Ljm9;->e:Liy6;

    iput-object p6, p0, Ljm9;->f:Lq07;

    iput-object p7, p0, Ljm9;->g:Lq07;

    iput-object p8, p0, Ljm9;->h:Lr07;

    iput-object p9, p0, Ljm9;->i:Lr07;

    iput-object p10, p0, Ljm9;->j:Lr07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p2, 0x0

    iget-object v2, p0, Ljm9;->e:Liy6;

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/16 v3, 0xa

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x4

    cmp-long p1, v0, v3

    if-ltz p1, :cond_1

    invoke-virtual {v2, v3, v4}, Liy6;->skip(J)V

    sub-long/2addr v0, v3

    long-to-int p1, v0

    new-instance p2, Lkm9;

    iget-object v0, p0, Ljm9;->h:Lr07;

    iget-object v1, p0, Ljm9;->i:Lr07;

    iget-object p0, p0, Ljm9;->j:Lr07;

    invoke-direct {p2, v2, v0, v1, p0}, Lkm9;-><init>(Liy6;Lr07;Lr07;Lr07;)V

    invoke-static {v2, p1, p2}, Lmm9;->e(Liy6;ILbm3;)V

    goto :goto_1

    :cond_1
    const-string p0, "bad zip: NTFS extra too short"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object p2

    :cond_2
    iget-object p1, p0, Ljm9;->b:Ln07;

    iget-boolean v4, p1, Ln07;->b:Z

    if-nez v4, :cond_7

    iput-boolean v3, p1, Ln07;->b:Z

    iget-wide v3, p0, Ljm9;->c:J

    cmp-long p1, v0, v3

    if-ltz p1, :cond_6

    iget-object p1, p0, Ljm9;->d:Lq07;

    iget-wide v0, p1, Lq07;->b:J

    const-wide v3, 0xffffffffL

    cmp-long p2, v0, v3

    if-nez p2, :cond_3

    invoke-virtual {v2}, Liy6;->v()J

    move-result-wide v0

    :cond_3
    iput-wide v0, p1, Lq07;->b:J

    iget-object p1, p0, Ljm9;->f:Lq07;

    iget-wide v0, p1, Lq07;->b:J

    cmp-long p2, v0, v3

    const-wide/16 v0, 0x0

    if-nez p2, :cond_4

    invoke-virtual {v2}, Liy6;->v()J

    move-result-wide v5

    goto :goto_0

    :cond_4
    move-wide v5, v0

    :goto_0
    iput-wide v5, p1, Lq07;->b:J

    iget-object p0, p0, Ljm9;->g:Lq07;

    iget-wide p1, p0, Lq07;->b:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_5

    invoke-virtual {v2}, Liy6;->v()J

    move-result-wide v0

    :cond_5
    iput-wide v0, p0, Lq07;->b:J

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_6
    const-string p0, "bad zip: zip64 extra too short"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object p2

    :cond_7
    const-string p0, "bad zip: zip64 extra repeated"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object p2
.end method
