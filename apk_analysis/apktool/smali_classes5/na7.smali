.class public final enum Lna7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lna7;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lna7;

.field public static final enum NotSupported:Lna7;
    .annotation runtime Lbq7;
        value = "NotSupported"
    .end annotation
.end field

.field public static final enum UpdateBalance:Lna7;
    .annotation runtime Lbq7;
        value = "UpdateBalance"
    .end annotation
.end field

.field public static final enum UpdateBonuses:Lna7;
    .annotation runtime Lbq7;
        value = "UpdateBonuses"
    .end annotation
.end field

.field public static final enum UpdateProfileIcon:Lna7;
    .annotation runtime Lbq7;
        value = "UpdateProfileIcon"
    .end annotation
.end field

.field public static final enum UpdateSignInState:Lna7;
    .annotation runtime Lbq7;
        value = "UpdateSignInState"
    .end annotation
.end field

.field public static final enum UpdateTasks:Lna7;
    .annotation runtime Lbq7;
        value = "UpdateTasks"
    .end annotation
.end field

.field public static final enum UpdateTransferPoints:Lna7;
    .annotation runtime Lbq7;
        value = "UpdateTransferPoints"
    .end annotation
.end field

.field public static final enum UpdateTransferShowcase:Lna7;
    .annotation runtime Lbq7;
        value = "UpdateTransferShowcase"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lna7;

    const-string v1, "UpdateBonuses"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lna7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lna7;->UpdateBonuses:Lna7;

    new-instance v1, Lna7;

    const-string v2, "UpdateBalance"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lna7;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lna7;->UpdateBalance:Lna7;

    new-instance v2, Lna7;

    const-string v3, "UpdateTransferShowcase"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lna7;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lna7;->UpdateTransferShowcase:Lna7;

    new-instance v3, Lna7;

    const-string v4, "UpdateTasks"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lna7;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lna7;->UpdateTasks:Lna7;

    new-instance v4, Lna7;

    const-string v5, "UpdateProfileIcon"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lna7;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lna7;->UpdateProfileIcon:Lna7;

    new-instance v5, Lna7;

    const-string v6, "UpdateTransferPoints"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lna7;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lna7;->UpdateTransferPoints:Lna7;

    new-instance v6, Lna7;

    const-string v7, "UpdateSignInState"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lna7;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lna7;->UpdateSignInState:Lna7;

    new-instance v7, Lna7;

    const-string v8, "NotSupported"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lna7;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lna7;->NotSupported:Lna7;

    filled-new-array/range {v0 .. v7}, [Lna7;

    move-result-object v0

    sput-object v0, Lna7;->$VALUES:[Lna7;

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

.method public static valueOf(Ljava/lang/String;)Lna7;
    .locals 1

    const-class v0, Lna7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lna7;

    return-object p0
.end method

.method public static values()[Lna7;
    .locals 1

    sget-object v0, Lna7;->$VALUES:[Lna7;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lna7;

    return-object v0
.end method
