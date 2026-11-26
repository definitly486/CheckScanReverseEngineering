.class public abstract Lyads/z93;
.super Lyads/pp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V
    .locals 8

    move-object v0, p4

    check-cast v0, Lyads/do6;

    iget-object v0, v0, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v0, v0}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v0

    new-instance v1, Lyads/j90;

    invoke-direct {v1, v0}, Lyads/j90;-><init>(Lyads/k75;)V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v0

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    invoke-static {v0, v2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v0

    invoke-interface {v0, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v6

    new-instance v7, Lyads/x93;

    invoke-direct {v7, p1, p2, p3, p4}, Lyads/x93;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lyads/pp;-><init>(Landroid/content/Context;Lyads/t5;Lyads/e4;Lyads/bf5;Ly22;Lyads/n4;)V

    return-void
.end method
