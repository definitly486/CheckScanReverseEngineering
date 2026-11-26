.class public final Lfe1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/List<",
        "+",
        "Lp71;",
        ">;",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "+",
        "Lp71;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lfe1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfe1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lfe1;->f:Lfe1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    const/16 p0, 0xa

    invoke-static {p1, p0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-static {p0}, Lm05;->b(I)I

    move-result p0

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    move p0, v0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lp71;

    invoke-virtual {v1}, Lp71;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
