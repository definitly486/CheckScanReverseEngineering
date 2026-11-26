.class public final Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lgh5<",
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
            "TVB;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog$a;->f:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lgh5;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog$a;->f:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;

    invoke-direct {v0, p0}, Lgh5;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
