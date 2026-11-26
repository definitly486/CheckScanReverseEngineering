.class public final Lyads/yu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/y13;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/yu3;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static final a(Ljava/util/List;Lyads/u13;)Lyads/s13;
    .locals 0

    .line 86
    invoke-virtual {p1, p0}, Lyads/u13;->a(Ljava/util/List;)Lyads/s13;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/util/List;Lyads/u13;)Lyads/s13;
    .locals 0

    .line 32
    invoke-virtual {p1, p0}, Lyads/u13;->b(Ljava/util/List;)Lyads/s13;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/util/List;Lyads/u13;)Lyads/s13;
    .locals 0

    invoke-virtual {p1, p0}, Lyads/u13;->a(Ljava/util/List;)Lyads/s13;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/util/List;Lyads/u13;)Lyads/s13;
    .locals 0

    invoke-virtual {p1, p0}, Lyads/u13;->b(Ljava/util/List;)Lyads/s13;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;
    .locals 2

    .line 84
    new-instance v0, Llq;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Llq;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Lyads/yu3;->a(Ljava/lang/String;Lnl3;)Lyads/u13;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lxf1;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lxf1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Lyads/yu3;->a(Ljava/lang/String;Lnl3;)Lyads/u13;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 85
    :cond_1
    new-instance p0, Lyads/a94;

    invoke-direct {p0, p1, p2}, Lyads/a94;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    throw p0
.end method

.method public final a(Ljava/lang/String;Lnl3;)Lyads/u13;
    .locals 4

    iget-object p0, p0, Lyads/yu3;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lyads/u13;

    invoke-virtual {v2}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lyads/r13;->a:Lyads/r13;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-ne p0, p2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/u13;

    return-object p0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Function "

    const-string v0, " declared multiple times."

    invoke-static {p0, p2, v0}, Lch;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lqg;->h(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/util/ArrayList;)Lyads/u13;
    .locals 2

    new-instance v0, Lgk3;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lgk3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Lyads/yu3;->a(Ljava/lang/String;Lnl3;)Lyads/u13;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lmr2;

    const/4 v1, 0x4

    invoke-direct {v0, p2, v1}, Lmr2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Lyads/yu3;->a(Ljava/lang/String;Lnl3;)Lyads/u13;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lyads/a94;

    invoke-direct {p0, p1, p2}, Lyads/a94;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    throw p0
.end method
