.class public final synthetic Lzz8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzz8;->b:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lzz8;->b:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;->d:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$a;->invoke()Ljava/lang/Object;

    return-void
.end method
