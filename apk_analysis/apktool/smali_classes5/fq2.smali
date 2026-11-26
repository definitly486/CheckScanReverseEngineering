.class public final synthetic Lfq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/ui/DoneDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/ui/DoneDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfq2;->b:Lcom/warefly/checkscan/ui/DoneDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/ui/DoneDialog;->d:Lcom/warefly/checkscan/ui/DoneDialog$a;

    iget-object p0, p0, Lfq2;->b:Lcom/warefly/checkscan/ui/DoneDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
