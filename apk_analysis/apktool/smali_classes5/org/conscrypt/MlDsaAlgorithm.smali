.class public final enum Lorg/conscrypt/MlDsaAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/MlDsaAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/MlDsaAlgorithm;

.field public static final enum ML_DSA_44:Lorg/conscrypt/MlDsaAlgorithm;

.field public static final enum ML_DSA_65:Lorg/conscrypt/MlDsaAlgorithm;

.field public static final enum ML_DSA_87:Lorg/conscrypt/MlDsaAlgorithm;


# instance fields
.field private final name:Ljava/lang/String;

.field private final publicKeySize:I


# direct methods
.method private static synthetic $values()[Lorg/conscrypt/MlDsaAlgorithm;
    .locals 3

    sget-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_44:Lorg/conscrypt/MlDsaAlgorithm;

    sget-object v1, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_65:Lorg/conscrypt/MlDsaAlgorithm;

    sget-object v2, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_87:Lorg/conscrypt/MlDsaAlgorithm;

    filled-new-array {v0, v1, v2}, [Lorg/conscrypt/MlDsaAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/conscrypt/MlDsaAlgorithm;

    const-string v1, "ML-DSA-44"

    const/16 v2, 0x520

    const-string v3, "ML_DSA_44"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/conscrypt/MlDsaAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_44:Lorg/conscrypt/MlDsaAlgorithm;

    new-instance v0, Lorg/conscrypt/MlDsaAlgorithm;

    const-string v1, "ML-DSA-65"

    const/16 v2, 0x7a0

    const-string v3, "ML_DSA_65"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/conscrypt/MlDsaAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_65:Lorg/conscrypt/MlDsaAlgorithm;

    new-instance v0, Lorg/conscrypt/MlDsaAlgorithm;

    const-string v1, "ML-DSA-87"

    const/16 v2, 0xa20

    const-string v3, "ML_DSA_87"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/conscrypt/MlDsaAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_87:Lorg/conscrypt/MlDsaAlgorithm;

    invoke-static {}, Lorg/conscrypt/MlDsaAlgorithm;->$values()[Lorg/conscrypt/MlDsaAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/MlDsaAlgorithm;->$VALUES:[Lorg/conscrypt/MlDsaAlgorithm;

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

    iput-object p3, p0, Lorg/conscrypt/MlDsaAlgorithm;->name:Ljava/lang/String;

    iput p4, p0, Lorg/conscrypt/MlDsaAlgorithm;->publicKeySize:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/conscrypt/MlDsaAlgorithm;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ML-DSA-87"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "ML-DSA-65"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "ML-DSA-44"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v0, "Unsupported algorithm: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_87:Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_65:Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_44:Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x34a08489 -> :sswitch_2
        0x34a084c8 -> :sswitch_1
        0x34a08508 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/MlDsaAlgorithm;
    .locals 1

    const-class v0, Lorg/conscrypt/MlDsaAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/MlDsaAlgorithm;
    .locals 1

    sget-object v0, Lorg/conscrypt/MlDsaAlgorithm;->$VALUES:[Lorg/conscrypt/MlDsaAlgorithm;

    invoke-virtual {v0}, [Lorg/conscrypt/MlDsaAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/MlDsaAlgorithm;

    return-object v0
.end method


# virtual methods
.method public publicKeySize()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/MlDsaAlgorithm;->publicKeySize:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/MlDsaAlgorithm;->name:Ljava/lang/String;

    return-object p0
.end method
