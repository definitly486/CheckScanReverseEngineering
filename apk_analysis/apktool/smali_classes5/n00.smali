.class public final enum Ln00;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln00;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ln00;

.field public static final enum BUFFER:Ln00;

.field public static final enum DROP:Ln00;

.field public static final enum ERROR:Ln00;

.field public static final enum LATEST:Ln00;

.field public static final enum MISSING:Ln00;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ln00;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln00;->MISSING:Ln00;

    new-instance v1, Ln00;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln00;->ERROR:Ln00;

    new-instance v2, Ln00;

    const-string v3, "BUFFER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ln00;->BUFFER:Ln00;

    new-instance v3, Ln00;

    const-string v4, "DROP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln00;->DROP:Ln00;

    new-instance v4, Ln00;

    const-string v5, "LATEST"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ln00;->LATEST:Ln00;

    filled-new-array {v0, v1, v2, v3, v4}, [Ln00;

    move-result-object v0

    sput-object v0, Ln00;->$VALUES:[Ln00;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ln00;
    .locals 1

    const-class v0, Ln00;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln00;

    return-object p0
.end method

.method public static values()[Ln00;
    .locals 1

    sget-object v0, Ln00;->$VALUES:[Ln00;

    invoke-virtual {v0}, [Ln00;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln00;

    return-object v0
.end method
