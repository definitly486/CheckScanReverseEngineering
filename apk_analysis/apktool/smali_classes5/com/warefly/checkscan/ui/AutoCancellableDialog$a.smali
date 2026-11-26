.class public final Lcom/warefly/checkscan/ui/AutoCancellableDialog$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/ui/AutoCancellableDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/ui/AutoCancellableDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/ui/AutoCancellableDialog<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/ui/AutoCancellableDialog;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/ui/AutoCancellableDialog<",
            "TVB;>;JJ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/ui/AutoCancellableDialog$a;->a:Lcom/warefly/checkscan/ui/AutoCancellableDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/ui/AutoCancellableDialog$a;->a:Lcom/warefly/checkscan/ui/AutoCancellableDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
