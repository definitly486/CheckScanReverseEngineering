.class public final Lyads/dh;
.super Lyads/s03;
.source "SourceFile"


# instance fields
.field public final G:Lyads/n25;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/p5;Lyads/u03;Lyads/n8;)V
    .locals 8

    new-instance v4, Lyads/t5;

    invoke-direct {v4}, Lyads/t5;-><init>()V

    new-instance v2, Lyads/e4;

    sget-object v0, Lyads/n70;->i:Lyads/n70;

    invoke-direct {v2, v0}, Lyads/e4;-><init>(Lyads/n70;)V

    new-instance v7, Lyads/ah4;

    invoke-direct {v7, v2}, Lyads/ah4;-><init>(Lyads/e4;)V

    new-instance v6, Lyads/bh;

    invoke-direct {v6, p1, p2}, Lyads/bh;-><init>(Landroid/content/Context;Lyads/bf5;)V

    new-instance v0, Lyads/n25;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lyads/n25;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/t5;Lyads/u03;)V

    move-object v5, v4

    move-object v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lyads/s03;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/t03;Lyads/t5;Lyads/y03;Lyads/ah4;)V

    iput-object v4, v0, Lyads/dh;->G:Lyads/n25;

    iput-object p5, v2, Lyads/e4;->e:Lyads/n8;

    new-instance p0, Lyads/ch;

    invoke-direct {p0, p3, v0}, Lyads/ch;-><init>(Lyads/p5;Lyads/dh;)V

    iput-object p0, v4, Lyads/n25;->e:Lyads/ch;

    iget-object p0, v4, Lyads/n25;->b:Lyads/v5;

    iput-object v7, p0, Lyads/v5;->f:Lyads/ah4;

    new-instance p0, Lyads/q8;

    invoke-direct {p0, v2}, Lyads/q8;-><init>(Lyads/e4;)V

    iget-object p1, v4, Lyads/n25;->b:Lyads/v5;

    iput-object p0, p1, Lyads/v5;->e:Lyads/g85;

    return-void
.end method


# virtual methods
.method public final a(Lyads/p03;)Lyads/o03;
    .locals 1

    .line 14
    iget-object v0, p0, Lyads/pp;->x:Lyads/dp;

    .line 15
    invoke-interface {p1, p0, v0}, Lyads/p03;->a(Lyads/dh;Lyads/dp;)Lyads/o03;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/p70;)V
    .locals 0

    iget-object p0, p0, Lyads/dh;->G:Lyads/n25;

    iput-object p1, p0, Lyads/n25;->d:Lyads/p70;

    iget-object p0, p0, Lyads/n25;->b:Lyads/v5;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/v5;->a([Ljava/lang/Object;)V

    return-void
.end method
