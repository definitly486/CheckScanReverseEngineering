.class public Lzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzl5;


# instance fields
.field public final a:Landroidx/fragment/app/FragmentActivity;

.field public final b:Landroidx/fragment/app/FragmentManager;

.field public final c:Landroidx/fragment/app/FragmentFactory;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzp;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lzp;->b:Landroidx/fragment/app/FragmentManager;

    iput-object v0, p0, Lzp;->c:Landroidx/fragment/app/FragmentFactory;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzp;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a([Lso1;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lzp;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    iget-object v1, p0, Lzp;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    move v4, v3

    :goto_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v4

    invoke-interface {v4}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v5, v2, :cond_0

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    :goto_1
    array-length v0, p1

    :goto_2
    if-ge v3, v0, :cond_2

    aget-object v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lzp;->c(Lso1;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p0, v1, p1}, Lzp;->e(Lso1;Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lzp;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final c(Lso1;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lxi3;

    iget-object v1, p0, Lzp;->a:Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lxi3;

    iget-object p1, p1, Lxi3;->a:Ldf7;

    instance-of v0, p1, Ljg7;

    if-eqz v0, :cond_0

    check-cast p1, Ljg7;

    invoke-virtual {p1, v1}, Ljg7;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    instance-of v0, p1, Llk3;

    if-eqz v0, :cond_b

    check-cast p1, Llk3;

    invoke-virtual {p0, p1, v3}, Lzp;->d(Llk3;Z)V

    return-void

    :cond_1
    instance-of v0, p1, Ll27;

    const/4 v4, 0x0

    iget-object v5, p0, Lzp;->b:Landroidx/fragment/app/FragmentManager;

    iget-object v6, p0, Lzp;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    check-cast p1, Ll27;

    iget-object p1, p1, Ll27;->a:Ldf7;

    instance-of v0, p1, Ljg7;

    if-eqz v0, :cond_2

    check-cast p1, Ljg7;

    invoke-virtual {p1, v1}, Ljg7;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    :try_start_1
    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    instance-of v0, p1, Llk3;

    if-eqz v0, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    check-cast p1, Llk3;

    invoke-virtual {p0, p1, v3}, Lzp;->d(Llk3;Z)V

    return-void

    :cond_3
    check-cast p1, Llk3;

    invoke-virtual {p0, p1, v4}, Lzp;->d(Llk3;Z)V

    return-void

    :cond_4
    instance-of v0, p1, Lc00;

    if-eqz v0, :cond_9

    check-cast p1, Lc00;

    iget-object p0, p1, Lc00;->a:Ldf7;

    if-nez p0, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5, v2, v3}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void

    :cond_5
    invoke-interface {p0}, Ldf7;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v7, -0x1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v7

    :goto_1
    if-eq v0, v7, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v6, v0, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1, v4}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5, v2, v3}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void

    :cond_9
    instance-of p1, p1, Lvz;

    if-eqz p1, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_a
    invoke-virtual {p0}, Lzp;->b()V

    :cond_b
    return-void
.end method

.method public final d(Llk3;Z)V
    .locals 4

    iget-object v0, p0, Lzp;->c:Landroidx/fragment/app/FragmentFactory;

    invoke-interface {p1, v0}, Llk3;->a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lzp;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    const v3, 0x7f0a0211

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1, v2, v0}, Lzp;->f(Llk3;Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;)V

    invoke-interface {p1}, Ldf7;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ldf7;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    iget-object p0, p0, Lzp;->d:Ljava/util/ArrayList;

    invoke-interface {p1}, Ldf7;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public e(Lso1;Ljava/lang/RuntimeException;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public f(Llk3;Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
