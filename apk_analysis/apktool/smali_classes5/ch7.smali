.class public final Lch7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# static fields
.field public static final a:Lch7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lch7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lch7;->a:Lch7;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 0

    new-instance p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;-><init>()V

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-class p0, Lch7;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
