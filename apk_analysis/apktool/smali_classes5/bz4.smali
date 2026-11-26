.class public final synthetic Lbz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;
.implements Leh8$a;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lbz4;->b:Ljava/lang/Object;

    iput-object p1, p0, Lbz4;->c:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbz4;->b:Ljava/lang/Object;

    check-cast v0, Lr89;

    iget-object p0, p0, Lbz4;->c:Ljava/lang/Iterable;

    iget-object v0, v0, Lr89;->c:Lf13;

    invoke-interface {v0, p0}, Lf13;->N(Ljava/lang/Iterable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 2

    iget-object v0, p0, Lbz4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;

    iget-object p0, p0, Lbz4;->c:Ljava/lang/Iterable;

    check-cast p0, Ljava/util/ArrayList;

    sget-object v1, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->h:Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    iget-object p0, p0, Lb36;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method
