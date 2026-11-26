.class public final Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->openUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
            "TVB;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment$a;->f:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment$a;->f:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140693

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
