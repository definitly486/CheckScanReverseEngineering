.class public final Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$i;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$i;->f:Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$i;->f:Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    const/16 v0, 0x18

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
