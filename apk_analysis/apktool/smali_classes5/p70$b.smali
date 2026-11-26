.class public final Lp70$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp70;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lp70$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp70$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp70$b;->a:Lp70$b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V
    .locals 0

    invoke-interface {p1}, Lp70$d;->handlePhoneWithdrawEvent()V

    return-void
.end method
