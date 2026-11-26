.class public final enum Lik6$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lik6$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lik6$a;

.field public static final enum MerchantOffersSelection:Lik6$a;
    .annotation runtime Lbq7;
        value = "MerchantOffersSelection"
    .end annotation
.end field

.field public static final enum MixedOffersSelection:Lik6$a;
    .annotation runtime Lbq7;
        value = "MixedOffersSelection"
    .end annotation
.end field

.field public static final enum NotSupported:Lik6$a;
    .annotation runtime Lbq7;
        value = "NotSupported"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lik6$a;

    const-string v1, "MerchantOffersSelection"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lik6$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lik6$a;->MerchantOffersSelection:Lik6$a;

    new-instance v1, Lik6$a;

    const-string v2, "MixedOffersSelection"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lik6$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lik6$a;->MixedOffersSelection:Lik6$a;

    new-instance v2, Lik6$a;

    const-string v3, "NotSupported"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lik6$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lik6$a;->NotSupported:Lik6$a;

    filled-new-array {v0, v1, v2}, [Lik6$a;

    move-result-object v0

    sput-object v0, Lik6$a;->$VALUES:[Lik6$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lik6$a;
    .locals 1

    const-class v0, Lik6$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lik6$a;

    return-object p0
.end method

.method public static values()[Lik6$a;
    .locals 1

    sget-object v0, Lik6$a;->$VALUES:[Lik6$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lik6$a;

    return-object v0
.end method
