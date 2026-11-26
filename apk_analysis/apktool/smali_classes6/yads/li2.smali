.class public final Lyads/li2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ji2;


# direct methods
.method public constructor <init>(Lyads/ji2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/li2;->a:Lyads/ji2;

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 0

    .line 53
    iget-object p0, p0, Lyads/li2;->a:Lyads/ji2;

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lyads/ji2;->a(I)V

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lyads/ji2;->b(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;IZ)V
    .locals 7

    iget-object v0, p0, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {v0}, Lyads/ji2;->a()I

    move-result v2

    iget-object v0, p0, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {v0}, Lyads/ji2;->b()I

    move-result v3

    iget-object v0, p0, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {v0}, Lyads/ji2;->e()I

    move-result v4

    iget-object v0, p0, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {v0}, Lyads/ji2;->d()I

    move-result v5

    iget-object v0, p0, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {v0}, Lyads/ji2;->c()Landroid/util/DisplayMetrics;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lyads/jr4;->a(Ljava/lang/String;IIIILandroid/util/DisplayMetrics;)Lyads/lr4;

    move-result-object p1

    if-lez p2, :cond_0

    invoke-virtual {p1, p2}, Lyads/lr4;->a(I)I

    move-result p1

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    invoke-virtual {p1, p2}, Lyads/lr4;->c(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1, p3}, Lyads/li2;->a(IZ)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;IZ)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {v0}, Lyads/ji2;->a()I

    move-result v2

    iget-object v0, p0, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {v0}, Lyads/ji2;->b()I

    move-result v3

    iget-object v0, p0, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {v0}, Lyads/ji2;->e()I

    move-result v4

    iget-object v0, p0, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {v0}, Lyads/ji2;->d()I

    move-result v5

    iget-object v0, p0, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {v0}, Lyads/ji2;->c()Landroid/util/DisplayMetrics;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lyads/jr4;->a(Ljava/lang/String;IIIILandroid/util/DisplayMetrics;)Lyads/lr4;

    move-result-object p1

    iget-object p0, p0, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {p1, p2}, Lyads/lr4;->b(I)I

    move-result p1

    sget-object p2, Lyads/g12;->g:Lyads/g12;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ji2;->a(ILyads/g12;Z)V

    return-void
.end method
