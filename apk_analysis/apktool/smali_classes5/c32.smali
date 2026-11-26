.class public final enum Lc32;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc32$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc32;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lc32;

.field public static final enum ATOMIC:Lc32;

.field public static final enum DEFAULT:Lc32;

.field public static final enum LAZY:Lc32;

.field public static final enum UNDISPATCHED:Lc32;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lc32;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc32;->DEFAULT:Lc32;

    new-instance v1, Lc32;

    const-string v2, "LAZY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc32;->LAZY:Lc32;

    new-instance v2, Lc32;

    const-string v3, "ATOMIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lc32;->ATOMIC:Lc32;

    new-instance v3, Lc32;

    const-string v4, "UNDISPATCHED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc32;->UNDISPATCHED:Lc32;

    filled-new-array {v0, v1, v2, v3}, [Lc32;

    move-result-object v0

    sput-object v0, Lc32;->$VALUES:[Lc32;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lc32;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lc32;
    .locals 1

    const-class v0, Lc32;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc32;

    return-object p0
.end method

.method public static values()[Lc32;
    .locals 1

    sget-object v0, Lc32;->$VALUES:[Lc32;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc32;

    return-object v0
.end method
