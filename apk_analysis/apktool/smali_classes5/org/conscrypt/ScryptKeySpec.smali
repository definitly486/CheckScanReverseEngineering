.class public Lorg/conscrypt/ScryptKeySpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final blockSize:I

.field private final costParameter:I

.field private final keyOutputBits:I

.field private final parallelizationParameter:I

.field private final password:[C

.field private final salt:[B


# direct methods
.method public constructor <init>([C[BIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ScryptKeySpec;->password:[C

    iput-object p2, p0, Lorg/conscrypt/ScryptKeySpec;->salt:[B

    iput p3, p0, Lorg/conscrypt/ScryptKeySpec;->costParameter:I

    iput p4, p0, Lorg/conscrypt/ScryptKeySpec;->blockSize:I

    iput p5, p0, Lorg/conscrypt/ScryptKeySpec;->parallelizationParameter:I

    iput p6, p0, Lorg/conscrypt/ScryptKeySpec;->keyOutputBits:I

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/ScryptKeySpec;->blockSize:I

    return p0
.end method

.method public getCostParameter()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/ScryptKeySpec;->costParameter:I

    return p0
.end method

.method public getKeyLength()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/ScryptKeySpec;->keyOutputBits:I

    return p0
.end method

.method public getParallelizationParameter()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/ScryptKeySpec;->parallelizationParameter:I

    return p0
.end method

.method public getPassword()[C
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ScryptKeySpec;->password:[C

    return-object p0
.end method

.method public getSalt()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ScryptKeySpec;->salt:[B

    return-object p0
.end method
