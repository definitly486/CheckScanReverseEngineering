.class public final synthetic Loj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/CiceroneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loj1;->b:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    sget p1, Lcom/warefly/checkscan/presentation/CiceroneActivity;->s:I

    iget-object p0, p0, Loj1;->b:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->s()Lrx1;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->r:Lrx1;

    return-void
.end method
