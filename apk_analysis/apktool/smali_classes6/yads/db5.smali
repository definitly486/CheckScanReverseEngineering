.class public final Lyads/db5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qn0;


# instance fields
.field public final a:Lyads/ta5;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/x2;I)V
    .locals 1

    new-instance v0, Lyads/ta5;

    invoke-direct {v0, p1, p2, p3, p4}, Lyads/ta5;-><init>(Lyads/e4;Lyads/bf5;Lyads/x2;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/db5;->a:Lyads/ta5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lyads/d9;Lyads/pg4;Lyads/m2;Lyads/i2;Lyads/jd0;Lyads/b4;Lyads/oa5;Lyads/bx5;Lyads/ln1;Lyads/fo1;Lyads/u6;)Ljava/util/List;
    .locals 8

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lyads/db5;->a:Lyads/ta5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lyads/ta5;->e:Lyads/mo1;

    invoke-virtual {v0, p1}, Lyads/mo1;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p11, :cond_0

    move-object v0, p2

    move-object v1, p3

    move-object v2, p5

    move-object v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    invoke-static/range {v0 .. v7}, Lyads/ta5;->a(Lyads/d9;Lyads/pg4;Lyads/i2;Lyads/b4;Lyads/oa5;Lyads/bx5;Lyads/fo1;Lyads/u6;)Lyads/v40;

    move-result-object v4

    new-instance v0, Lyads/io1;

    iget-object v2, p0, Lyads/ta5;->a:Lyads/e4;

    iget-object v3, p0, Lyads/ta5;->b:Lyads/bf5;

    iget-object v5, p0, Lyads/ta5;->c:Lyads/x2;

    iget v7, p0, Lyads/ta5;->d:I

    move-object/from16 v6, p10

    move-object/from16 v1, p11

    invoke-direct/range {v0 .. v7}, Lyads/io1;-><init>(Lyads/fo1;Lyads/e4;Lyads/bf5;Lyads/v40;Lyads/x2;Lyads/ln1;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p4
.end method
