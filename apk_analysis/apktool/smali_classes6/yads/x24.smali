.class public final Lyads/x24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lyads/v34;

.field public final c:Lyads/f34;

.field public final d:Lyads/p24;

.field public e:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lyads/v34;Lyads/l34;Lyads/f34;I)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    new-instance p4, Lyads/f34;

    new-instance p5, Lyads/e34;

    invoke-direct {p5, p3}, Lyads/e34;-><init>(Lyads/l34;)V

    invoke-direct {p4, p5}, Lyads/f34;-><init>(Lyads/e34;)V

    :cond_0
    new-instance p3, Lyads/p24;

    invoke-direct {p3}, Lyads/p24;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/x24;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lyads/x24;->b:Lyads/v34;

    iput-object p4, p0, Lyads/x24;->c:Lyads/f34;

    iput-object p3, p0, Lyads/x24;->d:Lyads/p24;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Class;)Lyads/l24;
    .locals 5

    :goto_0
    iget v0, p0, Lyads/x24;->e:I

    iget-object v1, p0, Lyads/x24;->a:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lyads/x24;->a:Ljava/util/ArrayList;

    iget v1, p0, Lyads/x24;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lyads/x24;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/x54;

    iget-object v1, p0, Lyads/x24;->c:Lyads/f34;

    iget-object v3, v1, Lyads/f34;->b:Lyads/q34;

    if-eqz v3, :cond_0

    invoke-interface {v3, v0, p2}, Lyads/q34;->a(Lyads/x54;Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v1, v1, Lyads/f34;->b:Lyads/q34;

    invoke-interface {v1, p1, v0}, Lyads/q34;->a(Landroid/content/Context;Lyads/x54;)Lcom/monetization/ads/mediation/base/a;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lyads/f34;->a:Lyads/e34;

    invoke-virtual {v1, p1, v0, p2}, Lyads/e34;->a(Landroid/content/Context;Lyads/x54;Ljava/lang/Class;)Lcom/monetization/ads/mediation/base/a;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lyads/x24;->d:Lyads/p24;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lyads/o24;

    invoke-direct {p1, v2}, Lyads/o24;-><init>(Lcom/monetization/ads/mediation/base/a;)V

    new-instance p2, Lyads/l24;

    iget-object p0, p0, Lyads/x24;->b:Lyads/v34;

    invoke-direct {p2, v2, v0, p1, p0}, Lyads/l24;-><init>(Lcom/monetization/ads/mediation/base/a;Lyads/x54;Lyads/o24;Lyads/v34;)V

    return-object p2

    :cond_3
    return-object v2
.end method
