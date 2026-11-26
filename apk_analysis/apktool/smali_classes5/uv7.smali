.class public final enum Luv7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luv7;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luv7;

.field public static final enum Category:Luv7;

.field public static final enum Selection:Luv7;

.field public static final enum TopSelection:Luv7;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Luv7;

    const-string v1, "Selection"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luv7;->Selection:Luv7;

    new-instance v1, Luv7;

    const-string v2, "Category"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luv7;->Category:Luv7;

    new-instance v2, Luv7;

    const-string v3, "TopSelection"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Luv7;->TopSelection:Luv7;

    filled-new-array {v0, v1, v2}, [Luv7;

    move-result-object v0

    sput-object v0, Luv7;->$VALUES:[Luv7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Luv7;
    .locals 1

    const-class v0, Luv7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luv7;

    return-object p0
.end method

.method public static values()[Luv7;
    .locals 1

    sget-object v0, Luv7;->$VALUES:[Luv7;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luv7;

    return-object v0
.end method
