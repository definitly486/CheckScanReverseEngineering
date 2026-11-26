.class public final Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;

.field public final synthetic g:Lb06;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;Lb06;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet$c;->f:Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet$c;->g:Lb06;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet$c;->f:Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;->e:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet$c;->g:Lb06;

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;->a(Lb06;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
