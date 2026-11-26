.class public final Landroidx/navigationevent/NavigationEventHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final currentIndex:I

.field private final mergedHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    sget-object v0, Lkx2;->b:Lkx2;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroidx/navigationevent/NavigationEventHistory;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;)V
    .locals 6

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/navigationevent/NavigationEventHistory;-><init>(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/NavigationEventInfo;",
            "Ljava/util/List<",
            "+",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/navigationevent/NavigationEventHistory;-><init>(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigationevent/NavigationEventInfo;",
            "Ljava/util/List<",
            "+",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    .line 63
    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 64
    invoke-virtual {v0, p1}, Lar4;->add(Ljava/lang/Object;)Z

    .line 65
    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3, v0}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 66
    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object p1

    .line 67
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 68
    invoke-direct {p0, p1, p2}, Landroidx/navigationevent/NavigationEventHistory;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;ILjh2;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    .line 61
    sget-object v0, Lkx2;->b:Lkx2;

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigationevent/NavigationEventHistory;-><init>(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHistory;->mergedHistory:Ljava/util/List;

    iput p2, p0, Landroidx/navigationevent/NavigationEventHistory;->currentIndex:I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    :cond_0
    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-ltz p2, :cond_2

    if-ge p2, p0, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string p0, "Invalid \'NavigationEventHistory\' state:  \'currentIndex\' must be within the bounds of \'mergedHistory\' (or -1 if empty). Received: currentIndex = \'"

    const-string v0, "\', bounds = \'"

    invoke-static {p2, p0, v0}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object p1

    const-string p2, "\'."

    invoke-static {p0, p1, p2}, Li2;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Landroidx/navigationevent/NavigationEventHistory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/navigationevent/NavigationEventHistory;

    iget v2, p0, Landroidx/navigationevent/NavigationEventHistory;->currentIndex:I

    iget v3, p1, Landroidx/navigationevent/NavigationEventHistory;->currentIndex:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHistory;->mergedHistory:Ljava/util/List;

    iget-object p1, p1, Landroidx/navigationevent/NavigationEventHistory;->mergedHistory:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getCurrentIndex()I
    .locals 0

    iget p0, p0, Landroidx/navigationevent/NavigationEventHistory;->currentIndex:I

    return p0
.end method

.method public final getMergedHistory()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHistory;->mergedHistory:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/navigationevent/NavigationEventHistory;->currentIndex:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHistory;->mergedHistory:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavigationEventHistory(currentIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/navigationevent/NavigationEventHistory;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mergedHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHistory;->mergedHistory:Ljava/util/List;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lqg;->f(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
