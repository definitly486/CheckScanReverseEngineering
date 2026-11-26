.class public final enum Ll93;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll93;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ll93;

.field public static final enum GZIP:Ll93;

.field public static final enum JSON:Ll93;

.field public static final enum ZIP:Ll93;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ll93;

    const/4 v1, 0x0

    const-string v2, ".json"

    const-string v3, "JSON"

    invoke-direct {v0, v3, v1, v2}, Ll93;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ll93;->JSON:Ll93;

    new-instance v1, Ll93;

    const/4 v2, 0x1

    const-string v3, ".zip"

    const-string v4, "ZIP"

    invoke-direct {v1, v4, v2, v3}, Ll93;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ll93;->ZIP:Ll93;

    new-instance v2, Ll93;

    const/4 v3, 0x2

    const-string v4, ".gz"

    const-string v5, "GZIP"

    invoke-direct {v2, v5, v3, v4}, Ll93;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Ll93;->GZIP:Ll93;

    filled-new-array {v0, v1, v2}, [Ll93;

    move-result-object v0

    sput-object v0, Ll93;->$VALUES:[Ll93;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ll93;->extension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll93;
    .locals 1

    const-class v0, Ll93;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll93;

    return-object p0
.end method

.method public static values()[Ll93;
    .locals 1

    sget-object v0, Ll93;->$VALUES:[Ll93;

    invoke-virtual {v0}, [Ll93;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll93;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll93;->extension:Ljava/lang/String;

    return-object p0
.end method
