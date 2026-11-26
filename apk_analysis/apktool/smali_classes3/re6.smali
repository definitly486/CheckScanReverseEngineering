.class public final enum Lre6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lre6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lre6;

.field public static final enum EXACT:Lre6;

.field public static final enum INEXACT:Lre6;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lre6;

    const-string v1, "EXACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lre6;->EXACT:Lre6;

    new-instance v1, Lre6;

    const-string v2, "INEXACT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lre6;->INEXACT:Lre6;

    filled-new-array {v0, v1}, [Lre6;

    move-result-object v0

    sput-object v0, Lre6;->$VALUES:[Lre6;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lre6;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lre6;
    .locals 1

    const-class v0, Lre6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lre6;

    return-object p0
.end method

.method public static values()[Lre6;
    .locals 1

    sget-object v0, Lre6;->$VALUES:[Lre6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lre6;

    return-object v0
.end method
