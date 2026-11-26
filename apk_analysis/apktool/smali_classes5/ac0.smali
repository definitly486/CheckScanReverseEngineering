.class public final synthetic Lac0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lbc0;


# direct methods
.method public synthetic constructor <init>(Lbc0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lac0;->b:Lbc0;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lac0;->b:Lbc0;

    const/4 p1, 0x0

    iput-object p1, p0, Lbc0;->a:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;

    return-void
.end method
