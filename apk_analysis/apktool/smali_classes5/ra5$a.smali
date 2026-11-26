.class public final enum Lra5$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lra5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lra5$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lra5$a;

.field public static final enum BIDI_STREAMING:Lra5$a;

.field public static final enum CLIENT_STREAMING:Lra5$a;

.field public static final enum SERVER_STREAMING:Lra5$a;

.field public static final enum UNARY:Lra5$a;

.field public static final enum UNKNOWN:Lra5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lra5$a;

    const-string v1, "UNARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lra5$a;->UNARY:Lra5$a;

    new-instance v1, Lra5$a;

    const-string v2, "CLIENT_STREAMING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lra5$a;->CLIENT_STREAMING:Lra5$a;

    new-instance v2, Lra5$a;

    const-string v3, "SERVER_STREAMING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lra5$a;->SERVER_STREAMING:Lra5$a;

    new-instance v3, Lra5$a;

    const-string v4, "BIDI_STREAMING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lra5$a;->BIDI_STREAMING:Lra5$a;

    new-instance v4, Lra5$a;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lra5$a;->UNKNOWN:Lra5$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Lra5$a;

    move-result-object v0

    sput-object v0, Lra5$a;->$VALUES:[Lra5$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lra5$a;
    .locals 1

    const-class v0, Lra5$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lra5$a;

    return-object p0
.end method

.method public static values()[Lra5$a;
    .locals 1

    sget-object v0, Lra5$a;->$VALUES:[Lra5$a;

    invoke-virtual {v0}, [Lra5$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lra5$a;

    return-object v0
.end method
