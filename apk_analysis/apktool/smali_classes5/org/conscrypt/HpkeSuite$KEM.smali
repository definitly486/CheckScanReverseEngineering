.class public final enum Lorg/conscrypt/HpkeSuite$KEM;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/HpkeSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KEM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/HpkeSuite$KEM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/HpkeSuite$KEM;

.field public static final enum DHKEM_X25519_HKDF_SHA256:Lorg/conscrypt/HpkeSuite$KEM;

.field public static final enum MLKEM_1024:Lorg/conscrypt/HpkeSuite$KEM;

.field public static final enum MLKEM_768:Lorg/conscrypt/HpkeSuite$KEM;

.field public static final enum XWING:Lorg/conscrypt/HpkeSuite$KEM;


# instance fields
.field private final id:I

.field private final nEnc:I

.field private final nPk:I

.field private final nSecret:I

.field private final nSk:I


# direct methods
.method private static synthetic $values()[Lorg/conscrypt/HpkeSuite$KEM;
    .locals 4

    sget-object v0, Lorg/conscrypt/HpkeSuite$KEM;->DHKEM_X25519_HKDF_SHA256:Lorg/conscrypt/HpkeSuite$KEM;

    sget-object v1, Lorg/conscrypt/HpkeSuite$KEM;->MLKEM_768:Lorg/conscrypt/HpkeSuite$KEM;

    sget-object v2, Lorg/conscrypt/HpkeSuite$KEM;->MLKEM_1024:Lorg/conscrypt/HpkeSuite$KEM;

    sget-object v3, Lorg/conscrypt/HpkeSuite$KEM;->XWING:Lorg/conscrypt/HpkeSuite$KEM;

    filled-new-array {v0, v1, v2, v3}, [Lorg/conscrypt/HpkeSuite$KEM;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/conscrypt/HpkeSuite$KEM;

    const/16 v6, 0x20

    const/16 v7, 0x20

    const-string v1, "DHKEM_X25519_HKDF_SHA256"

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/16 v5, 0x20

    invoke-direct/range {v0 .. v7}, Lorg/conscrypt/HpkeSuite$KEM;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/conscrypt/HpkeSuite$KEM;->DHKEM_X25519_HKDF_SHA256:Lorg/conscrypt/HpkeSuite$KEM;

    new-instance v1, Lorg/conscrypt/HpkeSuite$KEM;

    const/16 v7, 0x4a0

    const/16 v8, 0x40

    const-string v2, "MLKEM_768"

    const/4 v3, 0x1

    const/16 v4, 0x41

    const/16 v6, 0x440

    invoke-direct/range {v1 .. v8}, Lorg/conscrypt/HpkeSuite$KEM;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v1, Lorg/conscrypt/HpkeSuite$KEM;->MLKEM_768:Lorg/conscrypt/HpkeSuite$KEM;

    new-instance v2, Lorg/conscrypt/HpkeSuite$KEM;

    const/16 v8, 0x620

    const/16 v9, 0x40

    const-string v3, "MLKEM_1024"

    const/4 v4, 0x2

    const/16 v5, 0x42

    const/16 v6, 0x20

    const/16 v7, 0x620

    invoke-direct/range {v2 .. v9}, Lorg/conscrypt/HpkeSuite$KEM;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v2, Lorg/conscrypt/HpkeSuite$KEM;->MLKEM_1024:Lorg/conscrypt/HpkeSuite$KEM;

    new-instance v3, Lorg/conscrypt/HpkeSuite$KEM;

    const/16 v9, 0x4c0

    const/16 v10, 0x20

    const-string v4, "XWING"

    const/4 v5, 0x3

    const/16 v6, 0x647a

    const/16 v7, 0x20

    const/16 v8, 0x460

    invoke-direct/range {v3 .. v10}, Lorg/conscrypt/HpkeSuite$KEM;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lorg/conscrypt/HpkeSuite$KEM;->XWING:Lorg/conscrypt/HpkeSuite$KEM;

    invoke-static {}, Lorg/conscrypt/HpkeSuite$KEM;->$values()[Lorg/conscrypt/HpkeSuite$KEM;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/HpkeSuite$KEM;->$VALUES:[Lorg/conscrypt/HpkeSuite$KEM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/conscrypt/HpkeSuite$KEM;->id:I

    iput p4, p0, Lorg/conscrypt/HpkeSuite$KEM;->nSecret:I

    iput p5, p0, Lorg/conscrypt/HpkeSuite$KEM;->nEnc:I

    iput p6, p0, Lorg/conscrypt/HpkeSuite$KEM;->nPk:I

    iput p7, p0, Lorg/conscrypt/HpkeSuite$KEM;->nSk:I

    return-void
.end method

.method public static forId(I)Lorg/conscrypt/HpkeSuite$KEM;
    .locals 5

    invoke-static {}, Lorg/conscrypt/HpkeSuite$KEM;->values()[Lorg/conscrypt/HpkeSuite$KEM;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/conscrypt/HpkeSuite$KEM;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Unknown KEM "

    invoke-static {p0, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/HpkeSuite$KEM;
    .locals 1

    const-class v0, Lorg/conscrypt/HpkeSuite$KEM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/HpkeSuite$KEM;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/HpkeSuite$KEM;
    .locals 1

    sget-object v0, Lorg/conscrypt/HpkeSuite$KEM;->$VALUES:[Lorg/conscrypt/HpkeSuite$KEM;

    invoke-virtual {v0}, [Lorg/conscrypt/HpkeSuite$KEM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/HpkeSuite$KEM;

    return-object v0
.end method


# virtual methods
.method public getEncapsulatedLength()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/HpkeSuite$KEM;->nEnc:I

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/HpkeSuite$KEM;->id:I

    return p0
.end method

.method public getPrivateKeyLength()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/HpkeSuite$KEM;->nSk:I

    return p0
.end method

.method public getPublicKeyLength()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/HpkeSuite$KEM;->nPk:I

    return p0
.end method

.method public getSecretLength()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/HpkeSuite$KEM;->nSecret:I

    return p0
.end method

.method public getnEnc()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/conscrypt/HpkeSuite$KEM;->getEncapsulatedLength()I

    move-result p0

    return p0
.end method
