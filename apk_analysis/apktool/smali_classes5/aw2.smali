.class public final Law2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxv2;


# instance fields
.field public final a:Lov2;


# direct methods
.method public constructor <init>(Lov2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law2;->a:Lov2;

    return-void
.end method


# virtual methods
.method public final a()Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Law2;->a:Lov2;

    invoke-interface {p0}, Lov2;->a()Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/util/ArrayList;)Lmz7;
    .locals 0

    iget-object p0, p0, Law2;->a:Lov2;

    invoke-interface {p0, p1}, Lov2;->c(Ljava/util/List;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final c(Loz6;Ljava/lang/String;)Lpr5;
    .locals 2

    new-instance v0, Lmf4;

    invoke-virtual {p1}, Loz6;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf4;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Law2;->a:Lov2;

    invoke-interface {p0, v0, p2}, Lov2;->b(Lmf4;Ljava/lang/String;)Ltq5;

    move-result-object p0

    new-instance p2, Lzv2;

    invoke-direct {p2, p1}, Lzv2;-><init>(Loz6;)V

    new-instance p1, Lup0;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Lup0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lpr5;

    invoke-direct {p2, p0, p1}, Lpr5;-><init>(Ltq5;Lxl3;)V

    return-object p2
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmz7;
    .locals 6

    new-instance v0, Lyb7;

    const-string v1, "1000"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "RECEIVE_DATE:DESC"

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lyb7;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Law2;->a:Lov2;

    invoke-interface {p0, v0, p3}, Lov2;->e(Lyb7;Ljava/lang/String;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lp08;
    .locals 2

    new-instance v0, Lu99;

    invoke-direct {v0, p1}, Lu99;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Law2;->a:Lov2;

    invoke-interface {p0, v0}, Lov2;->d(Lu99;)Lmz7;

    move-result-object p0

    new-instance p1, Ltp0;

    const/4 v0, 0x1

    sget-object v1, Lyv2;->f:Lyv2;

    invoke-direct {p1, v1, v0}, Ltp0;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final getUrl()Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Law2;->a:Lov2;

    invoke-interface {p0}, Lov2;->getUrl()Lmz7;

    move-result-object p0

    return-object p0
.end method
