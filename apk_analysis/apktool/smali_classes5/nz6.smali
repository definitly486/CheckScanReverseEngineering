.class public final enum Lnz6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnz6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnz6;

.field public static final enum ALREADY_SCANNED:Lnz6;

.field public static final enum CHEQUE_NO_SHOP_RECEIVED:Lnz6;

.field public static final enum CHEQUE_RECEIVED:Lnz6;

.field public static final Companion:Lnz6$a;

.field public static final enum FNS_NOT_RESPONDING:Lnz6;

.field public static final enum INVALID:Lnz6;

.field public static final enum NOT_CORRECT_FORMAT:Lnz6;

.field public static final enum WAITING:Lnz6;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lnz6;

    const-string v1, "WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnz6;->WAITING:Lnz6;

    new-instance v1, Lnz6;

    const-string v2, "FNS_NOT_RESPONDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnz6;->FNS_NOT_RESPONDING:Lnz6;

    new-instance v2, Lnz6;

    const-string v3, "NOT_CORRECT_FORMAT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnz6;->NOT_CORRECT_FORMAT:Lnz6;

    new-instance v3, Lnz6;

    const-string v4, "CHEQUE_RECEIVED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnz6;->CHEQUE_RECEIVED:Lnz6;

    new-instance v4, Lnz6;

    const-string v5, "CHEQUE_NO_SHOP_RECEIVED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnz6;->CHEQUE_NO_SHOP_RECEIVED:Lnz6;

    new-instance v5, Lnz6;

    const-string v6, "ALREADY_SCANNED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnz6;->ALREADY_SCANNED:Lnz6;

    new-instance v6, Lnz6;

    const-string v7, "INVALID"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnz6;->INVALID:Lnz6;

    filled-new-array/range {v0 .. v6}, [Lnz6;

    move-result-object v0

    sput-object v0, Lnz6;->$VALUES:[Lnz6;

    new-instance v0, Lnz6$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnz6;->Companion:Lnz6$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnz6;
    .locals 1

    const-class v0, Lnz6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnz6;

    return-object p0
.end method

.method public static values()[Lnz6;
    .locals 1

    sget-object v0, Lnz6;->$VALUES:[Lnz6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnz6;

    return-object v0
.end method
