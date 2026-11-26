.class public abstract Lyads/p76;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/ho6;Lyads/g75;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lyads/g75;->a()Lyads/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/c;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    invoke-virtual {p1}, Lyads/g75;->a()Lyads/c;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lyads/c;->b()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    sget-object p1, Lox2;->b:Lox2;

    :cond_3
    invoke-virtual {p0, v0}, Lyads/ho6;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lyads/ho6;->a(Ljava/util/Set;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method
