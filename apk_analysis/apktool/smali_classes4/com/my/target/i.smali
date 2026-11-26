.class public final Lcom/my/target/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/i$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/my/target/g2;

.field public final b:Ljava/util/ArrayList;

.field public c:Lcom/my/target/m2$a;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/my/target/g2;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/i;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/my/target/i;->a:Lcom/my/target/g2;

    new-instance v0, Lcom/my/target/i$a;

    invoke-direct {v0, p0}, Lcom/my/target/i$a;-><init>(Lcom/my/target/i;)V

    invoke-virtual {p2, v0}, Lcom/my/target/g2;->setCarouselListener(Lcom/my/target/g2$a;)V

    invoke-virtual {p2}, Lcom/my/target/g2;->getNumbersOfCurrentShowingCards()[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    if-ltz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfo9;

    iget-object v3, p0, Lcom/my/target/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lao9;->a:Ln4a;

    const-string v3, "show"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
