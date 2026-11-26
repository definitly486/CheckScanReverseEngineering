.class public final Lyads/y66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/z66;


# instance fields
.field public final a:Lyads/z66;

.field public final b:Lyads/z50;


# direct methods
.method public constructor <init>(Lyads/z66;Lyads/z50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/y66;->a:Lyads/z66;

    iput-object p2, p0, Lyads/y66;->b:Lyads/z50;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ao2;ZLnl3;)Lyads/tp0;
    .locals 0

    .line 9
    iget-object p0, p0, Lyads/y66;->a:Lyads/z66;

    invoke-interface {p0, p1, p2, p3, p4}, Lyads/z66;->a(Ljava/lang/String;Lyads/ao2;ZLnl3;)Lyads/tp0;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/util/ArrayList;Lnl3;)Lyads/tp0;
    .locals 0

    iget-object p0, p0, Lyads/y66;->a:Lyads/z66;

    invoke-interface {p0, p1, p2}, Lyads/z66;->a(Ljava/util/ArrayList;Lnl3;)Lyads/tp0;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/util/List;Lnl3;)Lyads/tp0;
    .locals 0

    .line 8
    sget-object p0, Lyads/tp0;->a:Lyads/tp0;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lyads/u66;
    .locals 0

    .line 10
    iget-object p0, p0, Lyads/y66;->a:Lyads/z66;

    invoke-interface {p0, p1}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 7
    return-void
.end method

.method public final a(Lyads/gs2;Lnl3;)V
    .locals 0

    .line 12
    iget-object p0, p0, Lyads/y66;->a:Lyads/z66;

    invoke-interface {p0, p1, p2}, Lyads/z66;->a(Lyads/gs2;Lnl3;)V

    return-void
.end method

.method public final a(Lyads/u66;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lyads/y66;->a:Lyads/z66;

    invoke-interface {p0, p1}, Lyads/z66;->a(Lyads/u66;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lyads/y66;->b:Lyads/z50;

    iget-object v0, v0, Lyads/z50;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lyads/q46;

    invoke-direct {v1, v0}, Lyads/q46;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lyads/y66;->a:Lyads/z66;

    invoke-interface {p0, p1}, Lyads/m76;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
