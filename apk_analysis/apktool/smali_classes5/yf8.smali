.class public final Lyf8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyf8$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lag8;",
        "Lcom/warefly/checkscan/support/databinding/ItemSupportSectionBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;)V
    .locals 1

    sget-object v0, Lxf8;->c:Lxf8;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lyf8;->b:Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lag8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/support/databinding/ItemSupportSectionBinding;

    check-cast p2, Lag8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/support/databinding/ItemSupportSectionBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lag8;->a:Lwf8;

    iget-object v1, v1, Lwf8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/support/databinding/ItemSupportSectionBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lzf8;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lzf8;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
