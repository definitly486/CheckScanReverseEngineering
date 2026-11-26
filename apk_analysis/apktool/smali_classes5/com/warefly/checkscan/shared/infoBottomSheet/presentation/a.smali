.class public final Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;",
        "Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoBadgeBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;)V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$a;->c:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a;->b:Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoBadgeBinding;

    check-cast p2, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoBadgeBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lc54;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p2}, Lc54;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
