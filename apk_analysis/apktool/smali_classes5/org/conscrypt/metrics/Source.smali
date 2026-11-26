.class public final enum Lorg/conscrypt/metrics/Source;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/metrics/Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/metrics/Source;

.field public static final enum SOURCE_GMS:Lorg/conscrypt/metrics/Source;

.field public static final enum SOURCE_MAINLINE:Lorg/conscrypt/metrics/Source;

.field public static final enum SOURCE_UNBUNDLED:Lorg/conscrypt/metrics/Source;

.field public static final enum SOURCE_UNKNOWN:Lorg/conscrypt/metrics/Source;


# instance fields
.field final id:I


# direct methods
.method private static synthetic $values()[Lorg/conscrypt/metrics/Source;
    .locals 4

    sget-object v0, Lorg/conscrypt/metrics/Source;->SOURCE_UNKNOWN:Lorg/conscrypt/metrics/Source;

    sget-object v1, Lorg/conscrypt/metrics/Source;->SOURCE_MAINLINE:Lorg/conscrypt/metrics/Source;

    sget-object v2, Lorg/conscrypt/metrics/Source;->SOURCE_GMS:Lorg/conscrypt/metrics/Source;

    sget-object v3, Lorg/conscrypt/metrics/Source;->SOURCE_UNBUNDLED:Lorg/conscrypt/metrics/Source;

    filled-new-array {v0, v1, v2, v3}, [Lorg/conscrypt/metrics/Source;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/conscrypt/metrics/Source;

    const-string v1, "SOURCE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/conscrypt/metrics/Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/Source;->SOURCE_UNKNOWN:Lorg/conscrypt/metrics/Source;

    new-instance v0, Lorg/conscrypt/metrics/Source;

    const-string v1, "SOURCE_MAINLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/conscrypt/metrics/Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/Source;->SOURCE_MAINLINE:Lorg/conscrypt/metrics/Source;

    new-instance v0, Lorg/conscrypt/metrics/Source;

    const-string v1, "SOURCE_GMS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/conscrypt/metrics/Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/Source;->SOURCE_GMS:Lorg/conscrypt/metrics/Source;

    new-instance v0, Lorg/conscrypt/metrics/Source;

    const-string v1, "SOURCE_UNBUNDLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/conscrypt/metrics/Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/Source;->SOURCE_UNBUNDLED:Lorg/conscrypt/metrics/Source;

    invoke-static {}, Lorg/conscrypt/metrics/Source;->$values()[Lorg/conscrypt/metrics/Source;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/metrics/Source;->$VALUES:[Lorg/conscrypt/metrics/Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/conscrypt/metrics/Source;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/metrics/Source;
    .locals 1

    const-class v0, Lorg/conscrypt/metrics/Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/metrics/Source;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/metrics/Source;
    .locals 1

    sget-object v0, Lorg/conscrypt/metrics/Source;->$VALUES:[Lorg/conscrypt/metrics/Source;

    invoke-virtual {v0}, [Lorg/conscrypt/metrics/Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/metrics/Source;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/metrics/Source;->id:I

    return p0
.end method
