.class public final synthetic Lpj1;
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

    iput-object p1, p0, Lpj1;->b:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const p1, 0x7f140637

    iget-object p0, p0, Lpj1;->b:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
