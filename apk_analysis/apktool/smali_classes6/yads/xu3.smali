.class public final Lyads/xu3;
.super Lyads/u13;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lyads/xo2;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lyads/mo2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lyads/xo2;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    iput-object p1, p0, Lyads/xu3;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/xu3;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lyads/xu3;->c:Lyads/xo2;

    iput-object p4, p0, Lyads/xu3;->d:Ljava/util/ArrayList;

    sget-object p1, Lyads/uo2;->d:Ljava/util/Set;

    new-instance p1, Lyads/mo2;

    invoke-direct {p1, p5}, Lyads/mo2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lyads/xu3;->e:Lyads/mo2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lyads/xu3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p3, Lyads/y66;

    iget-object v0, p1, Lyads/yo2;->a:Lyads/z66;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/z50;

    invoke-direct {v1, p2}, Lyads/z50;-><init>(Ljava/util/Map;)V

    invoke-direct {p3, v0, v1}, Lyads/y66;-><init>(Lyads/z66;Lyads/z50;)V

    new-instance p2, Lyads/yo2;

    iget-object v0, p1, Lyads/yo2;->b:Lyads/mr5;

    iget-object v1, p1, Lyads/yo2;->c:Lyads/y13;

    iget-object p1, p1, Lyads/yo2;->d:Lyads/ij6;

    invoke-direct {p2, p3, v0, v1, p1}, Lyads/yo2;-><init>(Lyads/z66;Lyads/mr5;Lyads/y13;Lyads/ij6;)V

    new-instance p1, Lyads/bp2;

    invoke-direct {p1, p2}, Lyads/bp2;-><init>(Lyads/yo2;)V

    iget-object p0, p0, Lyads/xu3;->e:Lyads/mo2;

    invoke-virtual {p1, p0}, Lyads/bp2;->a(Lyads/uo2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lyads/xu3;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/xu3;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/xu3;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
