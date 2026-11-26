.class public final Lyads/j65;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/g5;

.field public final b:Lyads/we3;

.field public final c:Lyads/l65;

.field public final d:Lyads/i65;

.field public final e:Lyads/e65;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/m8;Lyads/d9;Lyads/e4;Lyads/bf5;Lyads/ba;Lyads/g5;Lyads/we3;Lyads/l65;Ljava/util/ArrayList;)V
    .locals 7

    new-instance v0, Lyads/i65;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lyads/i65;-><init>(Landroid/content/Context;Lyads/d9;Lyads/e4;Lyads/bf5;Lyads/ba;Ljava/util/ArrayList;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lyads/j65;->a:Lyads/g5;

    iput-object p8, p0, Lyads/j65;->b:Lyads/we3;

    move-object/from16 p1, p9

    iput-object p1, p0, Lyads/j65;->c:Lyads/l65;

    iput-object v0, p0, Lyads/j65;->d:Lyads/i65;

    new-instance p1, Lyads/e65;

    invoke-direct {p1, p2, p0}, Lyads/e65;-><init>(Lyads/m8;Lyads/j65;)V

    iput-object p1, p0, Lyads/j65;->e:Lyads/e65;

    return-void
.end method
