.class public final Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->showOptions(Lt90;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$c;->f:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;

    move-result-object p0

    return-object p0
.end method
