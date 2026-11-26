.class public final enum Lhf4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhf4;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lhf4;

.field public static final enum INTERNAL:Lhf4;

.field public static final enum PRIVATE:Lhf4;

.field public static final enum PROTECTED:Lhf4;

.field public static final enum PUBLIC:Lhf4;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lhf4;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhf4;->PUBLIC:Lhf4;

    new-instance v1, Lhf4;

    const-string v2, "PROTECTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhf4;->PROTECTED:Lhf4;

    new-instance v2, Lhf4;

    const-string v3, "INTERNAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lhf4;->INTERNAL:Lhf4;

    new-instance v3, Lhf4;

    const-string v4, "PRIVATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhf4;->PRIVATE:Lhf4;

    filled-new-array {v0, v1, v2, v3}, [Lhf4;

    move-result-object v0

    sput-object v0, Lhf4;->$VALUES:[Lhf4;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lhf4;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lhf4;
    .locals 1

    const-class v0, Lhf4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhf4;

    return-object p0
.end method

.method public static values()[Lhf4;
    .locals 1

    sget-object v0, Lhf4;->$VALUES:[Lhf4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhf4;

    return-object v0
.end method
