.class public final Lyads/nh5;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lr07;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lr07;)V
    .locals 0

    iput-object p1, p0, Lyads/nh5;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lyads/nh5;->c:Lr07;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lyads/br0;

    iget-object p1, p0, Lyads/nh5;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/lh5;

    iget v1, v0, Lyads/lh5;->b:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lyads/lh5;->b:I

    iget v1, v0, Lyads/lh5;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lyads/lh5;->c:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lyads/lh5;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lyads/lh5;->c:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lyads/nh5;->c:Lr07;

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Lyads/lh5;

    if-eqz p0, :cond_3

    iget p1, p0, Lyads/lh5;->b:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lyads/lh5;->b:I

    iget p1, p0, Lyads/lh5;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lyads/lh5;->c:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lyads/lh5;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lyads/lh5;->c:I

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
