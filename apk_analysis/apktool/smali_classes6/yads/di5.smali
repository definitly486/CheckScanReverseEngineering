.class public final Lyads/di5;
.super Lyads/ei5;
.source "SourceFile"


# instance fields
.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lyads/ei5;-><init>(Lyads/y35;JJ)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lyads/di5;->d:J

    iput-wide v1, v0, Lyads/di5;->e:J

    return-void
.end method

.method public constructor <init>(Lyads/y35;JJJJ)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p5}, Lyads/ei5;-><init>(Lyads/y35;JJ)V

    .line 17
    iput-wide p6, p0, Lyads/di5;->d:J

    .line 18
    iput-wide p8, p0, Lyads/di5;->e:J

    return-void
.end method
