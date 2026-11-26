.class public final Lyads/dv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bf5;

.field public final b:Lyads/q84;

.field public final c:Lyads/cv;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lyads/do6;

    iget-object v1, v0, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v1, v1}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v1

    new-instance v2, Lyads/cv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyads/eo6;

    invoke-direct {v0}, Lyads/eo6;-><init>()V

    invoke-direct {v2, v0}, Lyads/cv;-><init>(Lyads/eo6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dv;->a:Lyads/bf5;

    iput-object v1, p0, Lyads/dv;->b:Lyads/q84;

    iput-object v2, p0, Lyads/dv;->c:Lyads/cv;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/e4;Lyads/d9;Lyads/h9;Ljava/lang/String;)Z
    .locals 14

    invoke-static {}, Lyads/g2;->a()Lyads/h2;

    move-result-object v1

    invoke-static {}, Lyads/qb3;->a()J

    move-result-wide v2

    iget-object v4, p0, Lyads/dv;->c:Lyads/cv;

    move-object/from16 v5, p5

    invoke-virtual {v4, p1, v5, v2, v3}, Lyads/cv;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    iget-object v9, p0, Lyads/dv;->a:Lyads/bf5;

    new-instance v5, Lyads/f2;

    const/4 v12, 0x0

    const/16 v13, 0x70

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-direct/range {v5 .. v13}, Lyads/f2;-><init>(Lyads/d9;Lyads/e4;Lyads/h9;Lyads/bf5;Lyads/pg4;ILyads/en0;I)V

    invoke-virtual {v1, v2, v3, v5}, Lyads/h2;->a(JLyads/f2;)V

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v2, v3}, Lyads/h2;->a(J)Lyads/f2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p0, p0, Lyads/dv;->b:Lyads/q84;

    const-string v1, "Failed to show Browser"

    invoke-virtual {p0, v1, v0}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method
