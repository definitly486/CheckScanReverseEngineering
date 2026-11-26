.class public final Lyads/m26;
.super Lyads/qt;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyads/vx5;JJII)V
    .locals 14

    new-instance v1, Lyads/lt;

    invoke-direct {v1}, Lyads/lt;-><init>()V

    new-instance v2, Lyads/l26;

    move/from16 v0, p6

    move/from16 v3, p7

    invoke-direct {v2, v0, p1, v3}, Lyads/l26;-><init>(ILyads/vx5;I)V

    const-wide/16 v3, 0x1

    add-long v5, p2, v3

    const-wide/16 v11, 0xbc

    const/16 v13, 0x3ac

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v13}, Lyads/qt;-><init>(Lyads/nt;Lyads/pt;JJJJJI)V

    return-void
.end method
