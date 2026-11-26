.class public abstract Lyads/c50;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Lyads/vq0;)Lyads/b50;
    .locals 2

    new-instance v0, Lyads/b50;

    iget-object v1, p1, Lyads/vq0;->O:Lyads/qb1;

    iget-object v1, v1, Lyads/qb1;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lyads/vq0;->s()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lyads/b50;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
