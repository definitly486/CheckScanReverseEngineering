.class public final Lyads/ek;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/a4;

.field public final c:Lyads/dh4;

.field public final d:Lyads/l65;

.field public final e:Lyads/we3;

.field public final f:Lyads/ot3;

.field public final g:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/util/List;Lyads/a4;Lyads/dh4;Lyads/l65;Lyads/we3;Lyads/ot3;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ek;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/ek;->b:Lyads/a4;

    iput-object p3, p0, Lyads/ek;->c:Lyads/dh4;

    iput-object p4, p0, Lyads/ek;->d:Lyads/l65;

    iput-object p5, p0, Lyads/ek;->e:Lyads/we3;

    iput-object p6, p0, Lyads/ek;->f:Lyads/ot3;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lm05;->b(I)I

    move-result p2

    const/16 p3, 0x10

    if-ge p2, p3, :cond_0

    move p2, p3

    :cond_0
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lyads/ak;

    iget-object p2, v1, Lyads/ak;->a:Ljava/lang/String;

    iget-object p4, v1, Lyads/ak;->d:Lyads/ot3;

    if-nez p4, :cond_1

    iget-object p4, p0, Lyads/ek;->f:Lyads/ot3;

    :cond_1
    move-object v5, p4

    iget-object v2, p0, Lyads/ek;->b:Lyads/a4;

    iget-object v3, p0, Lyads/ek;->c:Lyads/dh4;

    iget-object v4, p0, Lyads/ek;->d:Lyads/l65;

    iget-object v6, p0, Lyads/ek;->e:Lyads/we3;

    new-instance v0, Lyads/kf4;

    invoke-direct/range {v0 .. v6}, Lyads/kf4;-><init>(Lyads/ak;Lyads/a4;Lyads/dh4;Lyads/l65;Lyads/ot3;Lyads/tz2;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object p3, p0, Lyads/ek;->g:Ljava/util/LinkedHashMap;

    return-void
.end method
