.class Lorg/conscrypt/OpenSSLXECParameterSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final X25519:Ljava/lang/String; = "1.3.101.110"


# instance fields
.field private final oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/OpenSSLXECParameterSpec;->oid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLXECParameterSpec;->oid:Ljava/lang/String;

    return-object p0
.end method
