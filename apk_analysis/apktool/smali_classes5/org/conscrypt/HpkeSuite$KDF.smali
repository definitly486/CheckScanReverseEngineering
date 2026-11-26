.class public final enum Lorg/conscrypt/HpkeSuite$KDF;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/HpkeSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KDF"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/HpkeSuite$KDF;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/HpkeSuite$KDF;

.field public static final enum HKDF_SHA256:Lorg/conscrypt/HpkeSuite$KDF;


# instance fields
.field private final hLength:I

.field private final hName:Ljava/lang/String;

.field private final id:I


# direct methods
.method private static synthetic $values()[Lorg/conscrypt/HpkeSuite$KDF;
    .locals 1

    sget-object v0, Lorg/conscrypt/HpkeSuite$KDF;->HKDF_SHA256:Lorg/conscrypt/HpkeSuite$KDF;

    filled-new-array {v0}, [Lorg/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/conscrypt/HpkeSuite$KDF;

    const/16 v4, 0x20

    const-string v5, "HmacSHA256"

    const-string v1, "HKDF_SHA256"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/HpkeSuite$KDF;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/conscrypt/HpkeSuite$KDF;->HKDF_SHA256:Lorg/conscrypt/HpkeSuite$KDF;

    invoke-static {}, Lorg/conscrypt/HpkeSuite$KDF;->$values()[Lorg/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/HpkeSuite$KDF;->$VALUES:[Lorg/conscrypt/HpkeSuite$KDF;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/conscrypt/HpkeSuite$KDF;->id:I

    iput p4, p0, Lorg/conscrypt/HpkeSuite$KDF;->hLength:I

    iput-object p5, p0, Lorg/conscrypt/HpkeSuite$KDF;->hName:Ljava/lang/String;

    return-void
.end method

.method public static forId(I)Lorg/conscrypt/HpkeSuite$KDF;
    .locals 5

    invoke-static {}, Lorg/conscrypt/HpkeSuite$KDF;->values()[Lorg/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/conscrypt/HpkeSuite$KDF;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Unknown KDF "

    invoke-static {p0, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/HpkeSuite$KDF;
    .locals 1

    const-class v0, Lorg/conscrypt/HpkeSuite$KDF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/HpkeSuite$KDF;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/HpkeSuite$KDF;
    .locals 1

    sget-object v0, Lorg/conscrypt/HpkeSuite$KDF;->$VALUES:[Lorg/conscrypt/HpkeSuite$KDF;

    invoke-virtual {v0}, [Lorg/conscrypt/HpkeSuite$KDF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/HpkeSuite$KDF;

    return-object v0
.end method


# virtual methods
.method public getHLength()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/conscrypt/HpkeSuite$KDF;->getMacLength()I

    move-result p0

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/HpkeSuite$KDF;->id:I

    return p0
.end method

.method public getMacAlgorithmName()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/conscrypt/HpkeSuite$KDF;->getMacName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacLength()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/HpkeSuite$KDF;->hLength:I

    return p0
.end method

.method public getMacName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/HpkeSuite$KDF;->hName:Ljava/lang/String;

    return-object p0
.end method

.method public maxExportLength()J
    .locals 4

    invoke-virtual {p0}, Lorg/conscrypt/HpkeSuite$KDF;->getMacLength()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0xff

    mul-long/2addr v0, v2

    return-wide v0
.end method
