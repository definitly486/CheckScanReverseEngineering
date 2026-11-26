.class public final Lyads/k4;
.super Lyads/cp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/q84;Ljava/lang/String;Ljava/lang/String;Lyads/qp;Lyads/ds;)V
    .locals 12

    invoke-static {p1}, Lyads/fj5;->a(Landroid/content/Context;)Lyads/gj5;

    move-result-object v10

    new-instance v0, Lyads/tg4;

    invoke-direct {v0, p1, p3}, Lyads/tg4;-><init>(Landroid/content/Context;Lyads/q84;)V

    new-instance v6, Lyads/ng4;

    invoke-direct {v6, v0}, Lyads/ng4;-><init>(Lyads/tg4;)V

    new-instance v9, Lyads/ug4;

    invoke-direct {v9}, Lyads/ug4;-><init>()V

    const/16 v11, 0x1c00

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lyads/cp;-><init>(Landroid/content/Context;Lyads/e4;Lyads/q84;Ljava/lang/String;Ljava/lang/String;Lyads/ng4;Lyads/qp;Lyads/ds;Lyads/ug4;Lyads/gj5;I)V

    return-void
.end method
