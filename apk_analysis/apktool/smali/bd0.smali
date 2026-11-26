.class public final Lbd0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lgh5<",
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialogFragment<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialogFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialogFragment<",
            "Landroidx/viewbinding/ViewBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialogFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialogFragment<",
            "Landroidx/viewbinding/ViewBinding;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbd0;->f:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialogFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lgh5;

    iget-object p0, p0, Lbd0;->f:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialogFragment;

    invoke-direct {v0, p0}, Lgh5;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
