.class public final enum Lorg/conscrypt/HpkeSuite$AEAD;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/HpkeSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AEAD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/HpkeSuite$AEAD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/HpkeSuite$AEAD;

.field public static final enum AES_128_GCM:Lorg/conscrypt/HpkeSuite$AEAD;

.field public static final enum AES_256_GCM:Lorg/conscrypt/HpkeSuite$AEAD;

.field public static final enum CHACHA20POLY1305:Lorg/conscrypt/HpkeSuite$AEAD;


# instance fields
.field private final id:I

.field private final nk:I

.field private final nn:I

.field private final nt:I


# direct methods
.method private static synthetic $values()[Lorg/conscrypt/HpkeSuite$AEAD;
    .locals 3

    sget-object v0, Lorg/conscrypt/HpkeSuite$AEAD;->AES_128_GCM:Lorg/conscrypt/HpkeSuite$AEAD;

    sget-object v1, Lorg/conscrypt/HpkeSuite$AEAD;->AES_256_GCM:Lorg/conscrypt/HpkeSuite$AEAD;

    sget-object v2, Lorg/conscrypt/HpkeSuite$AEAD;->CHACHA20POLY1305:Lorg/conscrypt/HpkeSuite$AEAD;

    filled-new-array {v0, v1, v2}, [Lorg/conscrypt/HpkeSuite$AEAD;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/conscrypt/HpkeSuite$AEAD;

    const/16 v5, 0xc

    const/16 v6, 0x10

    const-string v1, "AES_128_GCM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/HpkeSuite$AEAD;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/conscrypt/HpkeSuite$AEAD;->AES_128_GCM:Lorg/conscrypt/HpkeSuite$AEAD;

    new-instance v1, Lorg/conscrypt/HpkeSuite$AEAD;

    const/16 v6, 0xc

    const/16 v7, 0x10

    const-string v2, "AES_256_GCM"

    const/4 v4, 0x2

    const/16 v5, 0x20

    invoke-direct/range {v1 .. v7}, Lorg/conscrypt/HpkeSuite$AEAD;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lorg/conscrypt/HpkeSuite$AEAD;->AES_256_GCM:Lorg/conscrypt/HpkeSuite$AEAD;

    new-instance v2, Lorg/conscrypt/HpkeSuite$AEAD;

    const/16 v7, 0xc

    const/16 v8, 0x10

    const-string v3, "CHACHA20POLY1305"

    const/4 v5, 0x3

    const/16 v6, 0x20

    invoke-direct/range {v2 .. v8}, Lorg/conscrypt/HpkeSuite$AEAD;-><init>(Ljava/lang/String;IIIII)V

    sput-object v2, Lorg/conscrypt/HpkeSuite$AEAD;->CHACHA20POLY1305:Lorg/conscrypt/HpkeSuite$AEAD;

    invoke-static {}, Lorg/conscrypt/HpkeSuite$AEAD;->$values()[Lorg/conscrypt/HpkeSuite$AEAD;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/HpkeSuite$AEAD;->$VALUES:[Lorg/conscrypt/HpkeSuite$AEAD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/conscrypt/HpkeSuite$AEAD;->id:I

    iput p4, p0, Lorg/conscrypt/HpkeSuite$AEAD;->nk:I

    iput p5, p0, Lorg/conscrypt/HpkeSuite$AEAD;->nn:I

    iput p6, p0, Lorg/conscrypt/HpkeSuite$AEAD;->nt:I

    return-void
.end method

.method public static forId(I)Lorg/conscrypt/HpkeSuite$AEAD;
    .locals 5

    invoke-static {}, Lorg/conscrypt/HpkeSuite$AEAD;->values()[Lorg/conscrypt/HpkeSuite$AEAD;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/conscrypt/HpkeSuite$AEAD;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Unknown AEAD "

    invoke-static {p0, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/HpkeSuite$AEAD;
    .locals 1

    const-class v0, Lorg/conscrypt/HpkeSuite$AEAD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/HpkeSuite$AEAD;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/HpkeSuite$AEAD;
    .locals 1

    sget-object v0, Lorg/conscrypt/HpkeSuite$AEAD;->$VALUES:[Lorg/conscrypt/HpkeSuite$AEAD;

    invoke-virtual {v0}, [Lorg/conscrypt/HpkeSuite$AEAD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/HpkeSuite$AEAD;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/HpkeSuite$AEAD;->id:I

    return p0
.end method

.method public getKeyLength()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/HpkeSuite$AEAD;->nk:I

    return p0
.end method

.method public getNk()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/conscrypt/HpkeSuite$AEAD;->getKeyLength()I

    move-result p0

    return p0
.end method

.method public getNn()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/conscrypt/HpkeSuite$AEAD;->getNonceLength()I

    move-result p0

    return p0
.end method

.method public getNonceLength()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/HpkeSuite$AEAD;->nn:I

    return p0
.end method

.method public getNt()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lorg/conscrypt/HpkeSuite$AEAD;->nt:I

    return p0
.end method

.method public getTagLength()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/HpkeSuite$AEAD;->nt:I

    return p0
.end method
