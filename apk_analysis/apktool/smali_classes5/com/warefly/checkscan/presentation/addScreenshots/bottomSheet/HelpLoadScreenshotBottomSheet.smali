.class public final Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogHelpUploadScreenshotBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsView;"
    }
.end annotation


# static fields
.field public static final synthetic g:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:J

.field public final e:Lud9;

.field public final f:Lcl4;

.field public presenter:Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogHelpUploadScreenshotBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-wide p2, p0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;->d:J

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogHelpUploadScreenshotBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;->e:Lud9;

    sget-object p1, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance p2, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet$b;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet$b;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;->f:Lcl4;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;->e:Lud9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogHelpUploadScreenshotBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogHelpUploadScreenshotBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet$a;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;
    .locals 4

    new-instance v0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;

    instance-of v1, p0, Log4;

    const-class v2, Lp51;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Log4;

    invoke-interface {v1}, Log4;->getScope()Lze7;

    move-result-object v1

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object v1

    iget-object v1, v1, Lhg4;->c:Lbf7;

    iget-object v1, v1, Lbf7;->d:Lze7;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lp51;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;->d:J

    invoke-direct {v0, v1, v2, v3}, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;-><init>(Lp51;J)V

    return-object v0
.end method

.method public final showData(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;->f:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv05;

    sget-object v1, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;->g:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;->e:Lud9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogHelpUploadScreenshotBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogHelpUploadScreenshotBinding;->tvHelpScreenshots:Landroid/widget/TextView;

    invoke-virtual {v0, p0, p1}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
