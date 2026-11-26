.class public final enum Lyw8;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyw8$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyw8;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyw8;

.field public static final Companion:Lyw8$a;

.field public static final enum SSL_3_0:Lyw8;

.field public static final enum TLS_1_0:Lyw8;

.field public static final enum TLS_1_1:Lyw8;

.field public static final enum TLS_1_2:Lyw8;

.field public static final enum TLS_1_3:Lyw8;


# instance fields
.field private final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lyw8;

    const/4 v1, 0x0

    const-string v2, "TLSv1.3"

    const-string v3, "TLS_1_3"

    invoke-direct {v0, v3, v1, v2}, Lyw8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyw8;->TLS_1_3:Lyw8;

    new-instance v1, Lyw8;

    const/4 v2, 0x1

    const-string v3, "TLSv1.2"

    const-string v4, "TLS_1_2"

    invoke-direct {v1, v4, v2, v3}, Lyw8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyw8;->TLS_1_2:Lyw8;

    new-instance v2, Lyw8;

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    const-string v5, "TLS_1_1"

    invoke-direct {v2, v5, v3, v4}, Lyw8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyw8;->TLS_1_1:Lyw8;

    new-instance v3, Lyw8;

    const/4 v4, 0x3

    const-string v5, "TLSv1"

    const-string v6, "TLS_1_0"

    invoke-direct {v3, v6, v4, v5}, Lyw8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyw8;->TLS_1_0:Lyw8;

    new-instance v4, Lyw8;

    const/4 v5, 0x4

    const-string v6, "SSLv3"

    const-string v7, "SSL_3_0"

    invoke-direct {v4, v7, v5, v6}, Lyw8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyw8;->SSL_3_0:Lyw8;

    filled-new-array {v0, v1, v2, v3, v4}, [Lyw8;

    move-result-object v0

    sput-object v0, Lyw8;->$VALUES:[Lyw8;

    new-instance v0, Lyw8$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyw8;->Companion:Lyw8$a;

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

    iput-object p3, p0, Lyw8;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyw8;
    .locals 1

    const-class v0, Lyw8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyw8;

    return-object p0
.end method

.method public static values()[Lyw8;
    .locals 1

    sget-object v0, Lyw8;->$VALUES:[Lyw8;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyw8;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyw8;->javaName:Ljava/lang/String;

    return-object p0
.end method
