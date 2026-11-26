.class public final Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogNewFeatureAppBinding;",
        ">;"
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
.field public final d:Z

.field public final e:Lud9;

.field public final f:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogNewFeatureAppBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;->d:Z

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogNewFeatureAppBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;->e:Lud9;

    sget-object p1, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance p2, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$c;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;->f:Lcl4;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;->e:Lud9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogNewFeatureAppBinding;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogNewFeatureAppBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogNewFeatureAppBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f14068c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogNewFeatureAppBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f14068b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogNewFeatureAppBinding;->btnUpdate:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
