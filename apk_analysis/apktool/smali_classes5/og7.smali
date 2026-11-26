.class public final Log7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Log7;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance p1, Lcom/warefly/checkscan/presentation/flows/favorite/view/FavoriteFlowFragment;

    invoke-direct {p1}, Lcom/warefly/checkscan/presentation/flows/favorite/view/FavoriteFlowFragment;-><init>()V

    new-instance v0, Lrf3;

    iget-boolean p0, p0, Log7;->a:Z

    invoke-direct {v0, p0}, Lrf3;-><init>(Z)V

    invoke-virtual {v0}, Lrf3;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-class p0, Log7;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Log7;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Log7;

    iget-boolean p0, p0, Log7;->a:Z

    iget-boolean p1, p1, Log7;->a:Z

    if-eq p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, Log7;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "FavoriteFlow(isFavorite="

    const-string v1, ")"

    iget-boolean p0, p0, Log7;->a:Z

    invoke-static {v0, v1, p0}, Ll2;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
