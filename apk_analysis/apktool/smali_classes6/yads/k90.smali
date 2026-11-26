.class public final Lyads/k90;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ly22;
    .locals 4

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lr22;->limitedParallelism(I)Lr22;

    move-result-object v2

    invoke-static {v1, v2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v1

    invoke-interface {v1, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    return-object v0
.end method
