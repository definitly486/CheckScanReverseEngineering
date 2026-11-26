.class public final Lyads/vl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/h85;


# instance fields
.field public final a:Lyads/ac6;


# direct methods
.method public constructor <init>(Lyads/ac6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vl6;->a:Lyads/ac6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lyads/g75;
    .locals 2

    .line 79
    check-cast p1, Lyads/t96;

    .line 80
    iget-object p0, p0, Lyads/vl6;->a:Lyads/ac6;

    invoke-interface {p0}, Lyads/ac6;->a()Ljava/util/Map;

    move-result-object p0

    .line 81
    new-instance p1, Lyads/g75;

    sget-object v0, Lyads/e75;->c:Lyads/e75;

    .line 82
    const-string v0, "vast_wrapper_request"

    .line 83
    invoke-static {p0}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    return-object p1
.end method

.method public final a(Lyads/z85;ILjava/lang/Object;Lyads/hi6;)Lyads/g75;
    .locals 0

    check-cast p3, Lyads/t96;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lyads/z85;->a:Ljava/lang/Object;

    check-cast p1, Lyads/v76;

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    const/16 p4, 0xcc

    if-ne p4, p2, :cond_1

    sget-object p1, Lyads/f75;->e:Lyads/f75;

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_4

    const/16 p4, 0xc8

    if-eq p2, p4, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lyads/v76;->a:Lyads/q76;

    iget-object p1, p1, Lyads/q76;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lyads/f75;->e:Lyads/f75;

    goto :goto_2

    :cond_3
    sget-object p1, Lyads/f75;->c:Lyads/f75;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p1, Lyads/f75;->d:Lyads/f75;

    :goto_2
    iget-object p0, p0, Lyads/vl6;->a:Lyads/ac6;

    invoke-interface {p0}, Lyads/ac6;->a()Ljava/util/Map;

    move-result-object p0

    const-string p2, "status"

    iget-object p1, p1, Lyads/f75;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance p1, Lyads/g75;

    sget-object p2, Lyads/e75;->c:Lyads/e75;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string p0, "vast_wrapper_response"

    invoke-direct {p1, p0, p2, p3}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    return-object p1
.end method
