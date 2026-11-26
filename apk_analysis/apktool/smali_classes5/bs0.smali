.class public final enum Lbs0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbs0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbs0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbs0;

.field public static final enum BUTTON:Lbs0;

.field public static final Companion:Lbs0$a;

.field public static final enum PROMOCODES:Lbs0;

.field public static final enum SHOP:Lbs0;

.field public static final enum TITLE:Lbs0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lbs0;

    const-string v1, "TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbs0;->TITLE:Lbs0;

    new-instance v1, Lbs0;

    const-string v2, "PROMOCODES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbs0;->PROMOCODES:Lbs0;

    new-instance v2, Lbs0;

    const-string v3, "BUTTON"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lbs0;->BUTTON:Lbs0;

    new-instance v3, Lbs0;

    const-string v4, "SHOP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbs0;->SHOP:Lbs0;

    filled-new-array {v0, v1, v2, v3}, [Lbs0;

    move-result-object v0

    sput-object v0, Lbs0;->$VALUES:[Lbs0;

    new-instance v0, Lbs0$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbs0;->Companion:Lbs0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbs0;
    .locals 1

    const-class v0, Lbs0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbs0;

    return-object p0
.end method

.method public static values()[Lbs0;
    .locals 1

    sget-object v0, Lbs0;->$VALUES:[Lbs0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbs0;

    return-object v0
.end method
