.class public final Lsc8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsc8$a;
    }
.end annotation


# instance fields
.field private final a:Lsc8$a;
    .annotation runtime Lbq7;
        value = "customBadge"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "avatarUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsc8$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsc8;->a:Lsc8$a;

    iput-object p2, p0, Lsc8;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsc8;->a:Lsc8$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsc8$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsc8;->a:Lsc8$a;

    invoke-virtual {v0}, Lsc8$a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$b;

    iget-object v0, p0, Lsc8;->a:Lsc8$a;

    invoke-virtual {v0}, Lsc8$a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsc8;->b:Ljava/lang/String;

    iget-object v2, p0, Lsc8;->a:Lsc8$a;

    invoke-virtual {v2}, Lsc8$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iget-object p0, p0, Lsc8;->a:Lsc8$a;

    invoke-virtual {p0}, Lsc8$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lsc8;->a:Lsc8$a;

    iget-object v2, p0, Lsc8;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lsc8$a;->d()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lsc8;->a:Lsc8$a;

    invoke-virtual {p1}, Lsc8$a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iget-object p1, p0, Lsc8;->a:Lsc8$a;

    invoke-virtual {p1}, Lsc8$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iget-object p1, p0, Lsc8;->a:Lsc8$a;

    invoke-virtual {p1}, Lsc8$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iget-object p1, p0, Lsc8;->a:Lsc8$a;

    invoke-virtual {p1}, Lsc8$a;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    move-object v7, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsc8;->a:Lsc8$a;

    invoke-virtual {p0}, Lsc8$a;->g()Z

    move-result v8

    new-instance v1, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;

    invoke-direct/range {v1 .. v8}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$e;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Integer;Z)V

    return-object v1

    :cond_2
    new-instance p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$d;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b$d;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lsc8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lsc8;

    iget-object v1, p0, Lsc8;->a:Lsc8$a;

    iget-object v3, p1, Lsc8;->a:Lsc8$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lsc8;->b:Ljava/lang/String;

    iget-object p1, p1, Lsc8;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lsc8;->a:Lsc8$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lsc8$a;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lsc8;->b:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lsc8;->a:Lsc8$a;

    iget-object p0, p0, Lsc8;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubscriptionProfileBadgeResponse(customBadge="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", avatarUrl="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
