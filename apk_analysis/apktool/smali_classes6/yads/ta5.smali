.class public final Lyads/ta5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;

.field public final c:Lyads/x2;

.field public final d:I

.field public final e:Lyads/mo1;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/x2;I)V
    .locals 1

    new-instance v0, Lyads/mo1;

    invoke-direct {v0}, Lyads/mo1;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ta5;->a:Lyads/e4;

    iput-object p2, p0, Lyads/ta5;->b:Lyads/bf5;

    iput-object p3, p0, Lyads/ta5;->c:Lyads/x2;

    iput p4, p0, Lyads/ta5;->d:I

    iput-object v0, p0, Lyads/ta5;->e:Lyads/mo1;

    return-void
.end method

.method public static a(Lyads/d9;Lyads/pg4;Lyads/i2;Lyads/b4;Lyads/oa5;Lyads/bx5;Lyads/fo1;Lyads/u6;)Lyads/v40;
    .locals 11

    new-instance v8, Lyads/ux5;

    invoke-direct {v8}, Lyads/ux5;-><init>()V

    new-instance v4, Lyads/ve4;

    invoke-direct {v4}, Lyads/ve4;-><init>()V

    invoke-interface {p1}, Lyads/pg4;->d()Lyads/sj4;

    move-result-object v5

    new-instance v9, Lyads/v40;

    new-instance v0, Lyads/sa5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lyads/sa5;-><init>(Lyads/d9;Lyads/i2;Lyads/oa5;Lyads/ve4;Lyads/sj4;Lyads/bx5;Lyads/fo1;)V

    move-object v10, v0

    move-object v7, v4

    move-object v4, v5

    new-instance v0, Lyads/e60;

    move-object v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lyads/e60;-><init>(Lyads/d9;Lyads/i2;Lyads/b4;Lyads/sj4;Lyads/bx5;Lyads/fo1;)V

    new-instance v1, Lyads/hb5;

    invoke-direct {v1, p2, v8, v4, v5}, Lyads/hb5;-><init>(Lyads/i2;Lyads/ux5;Lyads/sj4;Lyads/bx5;)V

    new-instance v3, Lyads/gm5;

    move-object/from16 v4, p7

    invoke-direct {v3, v4, p2, v7}, Lyads/gm5;-><init>(Lyads/u6;Lyads/i2;Lyads/ve4;)V

    const/4 v2, 0x4

    new-array v2, v2, [Lyads/on0;

    const/4 v4, 0x0

    aput-object v10, v2, v4

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    aput-object v3, v2, v0

    invoke-direct {v9, v2}, Lyads/v40;-><init>([Lyads/on0;)V

    return-object v9
.end method
