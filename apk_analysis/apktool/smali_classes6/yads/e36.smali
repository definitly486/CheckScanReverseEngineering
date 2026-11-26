.class public final Lyads/e36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mt5;


# instance fields
.field public final b:Lyads/a36;

.field public final c:[J

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lyads/a36;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/e36;->b:Lyads/a36;

    iput-object p3, p0, Lyads/e36;->e:Ljava/util/HashMap;

    iput-object p4, p0, Lyads/e36;->f:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lyads/e36;->d:Ljava/util/Map;

    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lyads/a36;->a(Ljava/util/TreeSet;Z)V

    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-int/lit8 p4, p3, 0x1

    aput-wide v0, p1, p3

    move p3, p4

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lyads/e36;->c:[J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 15
    iget-object p0, p0, Lyads/e36;->c:[J

    array-length p0, p0

    return p0
.end method

.method public final a(J)I
    .locals 2

    iget-object v0, p0, Lyads/e36;->c:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lyads/u56;->a([JJZ)I

    move-result p1

    iget-object p0, p0, Lyads/e36;->c:[J

    array-length p0, p0

    if-ge p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final a(I)J
    .locals 2

    .line 16
    iget-object p0, p0, Lyads/e36;->c:[J

    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public final b(J)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lyads/e36;->b:Lyads/a36;

    iget-object v3, p0, Lyads/e36;->d:Ljava/util/Map;

    iget-object v4, p0, Lyads/e36;->e:Ljava/util/HashMap;

    iget-object v5, p0, Lyads/e36;->f:Ljava/util/HashMap;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lyads/a36;->a(JLjava/util/Map;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
