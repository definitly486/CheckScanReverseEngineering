.class public final Lcom/warefly/checkscan/core/ui/base/architecture/a;
.super Lzp;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
            "Landroidx/viewbinding/ViewBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/base/architecture/a;->e:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lzp;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/a;->e:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->o()V

    return-void
.end method

.method public final e(Lso1;Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p2
.end method

.method public final f(Llk3;Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/a;->e:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lle9;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method
