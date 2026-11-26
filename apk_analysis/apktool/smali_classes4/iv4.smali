.class public final enum Liv4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Liv4;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Liv4;

.field public static final enum AND:Liv4;

.field public static final enum OR:Liv4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Liv4;

    const-string v1, "AND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liv4;->AND:Liv4;

    new-instance v1, Liv4;

    const-string v2, "OR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Liv4;->OR:Liv4;

    filled-new-array {v0, v1}, [Liv4;

    move-result-object v0

    sput-object v0, Liv4;->$VALUES:[Liv4;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Liv4;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Liv4;
    .locals 1

    const-class v0, Liv4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Liv4;

    return-object p0
.end method

.method public static values()[Liv4;
    .locals 1

    sget-object v0, Liv4;->$VALUES:[Liv4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liv4;

    return-object v0
.end method
