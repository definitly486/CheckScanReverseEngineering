.class public abstract Lyads/zr;
.super Lyads/cz;
.source "SourceFile"


# instance fields
.field public final j:J

.field public final k:J

.field public final l:J

.field public m:Lyads/bs;

.field public n:[I


# direct methods
.method public constructor <init>(Lyads/wc0;Lyads/bd0;Lyads/vz2;ILjava/lang/Object;JJJJJ)V
    .locals 11

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lyads/cz;-><init>(Lyads/wc0;Lyads/bd0;ILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 p1, p14

    iput-wide p1, p0, Lyads/zr;->j:J

    move-wide/from16 p1, p10

    iput-wide p1, p0, Lyads/zr;->k:J

    move-wide/from16 p1, p12

    iput-wide p1, p0, Lyads/zr;->l:J

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    iget-object p0, p0, Lyads/zr;->n:[I

    if-eqz p0, :cond_0

    aget p0, p0, p1

    return p0

    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return p0
.end method

.method public c()J
    .locals 4

    iget-wide v0, p0, Lyads/zr;->j:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public abstract d()Z
.end method
