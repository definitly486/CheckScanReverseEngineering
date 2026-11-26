.class public final Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$b;->f:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    const/16 p0, 0x10

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
