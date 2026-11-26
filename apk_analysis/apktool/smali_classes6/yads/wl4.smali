.class public final Lyads/wl4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/aj4;

.field public final b:Lyads/ul4;

.field public final c:Lyads/uc6;

.field public final d:Lyads/xk4;

.field public e:Lyads/tl4;

.field public f:Lyads/zi4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/nf6;Lyads/td6;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/we3;Lyads/nl4;Lyads/aj4;Lyads/b05;Lyads/uj5;Ly22;)V
    .locals 11

    new-instance v0, Lyads/ul4;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lyads/ul4;-><init>(Lyads/nf6;Lyads/td6;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/we3;Lyads/nl4;Lyads/b05;Lyads/uj5;Ly22;)V

    new-instance p2, Lyads/uc6;

    invoke-direct {p2}, Lyads/uc6;-><init>()V

    new-instance p3, Lyads/xk4;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1, p4, v4, v5}, Lyads/xk4;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 p1, p9

    iput-object p1, p0, Lyads/wl4;->a:Lyads/aj4;

    iput-object v0, p0, Lyads/wl4;->b:Lyads/ul4;

    iput-object p2, p0, Lyads/wl4;->c:Lyads/uc6;

    iput-object p3, p0, Lyads/wl4;->d:Lyads/xk4;

    return-void
.end method
