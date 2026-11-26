.class public abstract Lyads/c76;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/z66;Lyads/uf2;Lyads/gs2;Lyads/ao2;)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lyads/mg2;->a(Lyads/uf2;Lyads/gs2;)Lyads/u66;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/z66;->a(Lyads/u66;)V
    :try_end_0
    .catch Lyads/d76; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p1, p3, Lyads/ao2;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lyads/ao2;->a()V

    return-void
.end method
