.class public final enum Lorg/conscrypt/MlKemAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/MlKemAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/MlKemAlgorithm;

.field public static final enum ML_KEM_1024:Lorg/conscrypt/MlKemAlgorithm;

.field public static final enum ML_KEM_768:Lorg/conscrypt/MlKemAlgorithm;


# instance fields
.field private final name:Ljava/lang/String;

.field private final publicKeySize:I


# direct methods
.method private static synthetic $values()[Lorg/conscrypt/MlKemAlgorithm;
    .locals 2

    sget-object v0, Lorg/conscrypt/MlKemAlgorithm;->ML_KEM_768:Lorg/conscrypt/MlKemAlgorithm;

    sget-object v1, Lorg/conscrypt/MlKemAlgorithm;->ML_KEM_1024:Lorg/conscrypt/MlKemAlgorithm;

    filled-new-array {v0, v1}, [Lorg/conscrypt/MlKemAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/conscrypt/MlKemAlgorithm;

    const-string v1, "ML-KEM-768"

    const/16 v2, 0x4a0

    const-string v3, "ML_KEM_768"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/conscrypt/MlKemAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/MlKemAlgorithm;->ML_KEM_768:Lorg/conscrypt/MlKemAlgorithm;

    new-instance v0, Lorg/conscrypt/MlKemAlgorithm;

    const-string v1, "ML-KEM-1024"

    const/16 v2, 0x620

    const-string v3, "ML_KEM_1024"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/conscrypt/MlKemAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/MlKemAlgorithm;->ML_KEM_1024:Lorg/conscrypt/MlKemAlgorithm;

    invoke-static {}, Lorg/conscrypt/MlKemAlgorithm;->$values()[Lorg/conscrypt/MlKemAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/MlKemAlgorithm;->$VALUES:[Lorg/conscrypt/MlKemAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/conscrypt/MlKemAlgorithm;->name:Ljava/lang/String;

    iput p4, p0, Lorg/conscrypt/MlKemAlgorithm;->publicKeySize:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/MlKemAlgorithm;
    .locals 1

    const-class v0, Lorg/conscrypt/MlKemAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/MlKemAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/MlKemAlgorithm;
    .locals 1

    sget-object v0, Lorg/conscrypt/MlKemAlgorithm;->$VALUES:[Lorg/conscrypt/MlKemAlgorithm;

    invoke-virtual {v0}, [Lorg/conscrypt/MlKemAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/MlKemAlgorithm;

    return-object v0
.end method


# virtual methods
.method public publicKeySize()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/MlKemAlgorithm;->publicKeySize:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/MlKemAlgorithm;->name:Ljava/lang/String;

    return-object p0
.end method
