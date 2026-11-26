.class public final Lyp8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxp8;


# instance fields
.field public volatile a:Lwp8;

.field public volatile b:Lwp8;


# virtual methods
.method public final a(Lwp8;)V
    .locals 0

    iput-object p1, p0, Lyp8;->a:Lwp8;

    const/4 p1, 0x0

    iput-object p1, p0, Lyp8;->b:Lwp8;

    return-void
.end method

.method public final b(ILwp8;)V
    .locals 6

    if-nez p2, :cond_0

    iget-object p2, p0, Lyp8;->a:Lwp8;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, p2, Lwp8;->a:Ljava/lang/String;

    iget-object v2, p2, Lwp8;->b:Ljava/lang/String;

    iget-object v3, p2, Lwp8;->c:Ljava/lang/String;

    iget-object v4, p2, Lwp8;->d:Ljava/lang/String;

    new-instance v0, Lwp8;

    invoke-direct/range {v0 .. v5}, Lwp8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lyp8;->b:Lwp8;

    return-void
.end method

.method public final c()Lwp8;
    .locals 0

    iget-object p0, p0, Lyp8;->b:Lwp8;

    return-object p0
.end method

.method public final get()Lwp8;
    .locals 0

    iget-object p0, p0, Lyp8;->a:Lwp8;

    return-object p0
.end method
