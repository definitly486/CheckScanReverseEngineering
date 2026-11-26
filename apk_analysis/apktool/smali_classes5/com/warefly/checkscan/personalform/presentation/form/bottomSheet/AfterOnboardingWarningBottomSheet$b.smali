.class public final Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet$b;->f:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet$b;->f:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iget-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;->e:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$e;

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;->d:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;->e:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$b;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$b;->b:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
