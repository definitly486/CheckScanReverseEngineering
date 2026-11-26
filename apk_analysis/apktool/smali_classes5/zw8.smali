.class public final enum Lzw8;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzw8;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzw8;

.field public static final enum SSL_3_0:Lzw8;

.field public static final enum TLS_1_0:Lzw8;

.field public static final enum TLS_1_1:Lzw8;

.field public static final enum TLS_1_2:Lzw8;

.field public static final enum TLS_1_3:Lzw8;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lzw8;

    const/4 v1, 0x0

    const-string v2, "TLSv1.3"

    const-string v3, "TLS_1_3"

    invoke-direct {v0, v3, v1, v2}, Lzw8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lzw8;->TLS_1_3:Lzw8;

    new-instance v1, Lzw8;

    const/4 v2, 0x1

    const-string v3, "TLSv1.2"

    const-string v4, "TLS_1_2"

    invoke-direct {v1, v4, v2, v3}, Lzw8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lzw8;->TLS_1_2:Lzw8;

    new-instance v2, Lzw8;

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    const-string v5, "TLS_1_1"

    invoke-direct {v2, v5, v3, v4}, Lzw8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lzw8;->TLS_1_1:Lzw8;

    new-instance v3, Lzw8;

    const/4 v4, 0x3

    const-string v5, "TLSv1"

    const-string v6, "TLS_1_0"

    invoke-direct {v3, v6, v4, v5}, Lzw8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lzw8;->TLS_1_0:Lzw8;

    new-instance v4, Lzw8;

    const/4 v5, 0x4

    const-string v6, "SSLv3"

    const-string v7, "SSL_3_0"

    invoke-direct {v4, v7, v5, v6}, Lzw8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lzw8;->SSL_3_0:Lzw8;

    filled-new-array {v0, v1, v2, v3, v4}, [Lzw8;

    move-result-object v0

    sput-object v0, Lzw8;->$VALUES:[Lzw8;

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

    iput-object p3, p0, Lzw8;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzw8;
    .locals 1

    const-class v0, Lzw8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzw8;

    return-object p0
.end method

.method public static values()[Lzw8;
    .locals 1

    sget-object v0, Lzw8;->$VALUES:[Lzw8;

    invoke-virtual {v0}, [Lzw8;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzw8;

    return-object v0
.end method
