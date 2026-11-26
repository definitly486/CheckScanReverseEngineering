.class public final enum Lts6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lts6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lts6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lts6;

.field public static final Companion:Lts6$a;

.field public static final enum H2_PRIOR_KNOWLEDGE:Lts6;

.field public static final enum HTTP_1_0:Lts6;

.field public static final enum HTTP_1_1:Lts6;

.field public static final enum HTTP_2:Lts6;

.field public static final enum QUIC:Lts6;

.field public static final enum SPDY_3:Lts6;
    .annotation runtime Lul2;
    .end annotation
.end field


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lts6;

    const/4 v1, 0x0

    const-string v2, "http/1.0"

    const-string v3, "HTTP_1_0"

    invoke-direct {v0, v3, v1, v2}, Lts6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lts6;->HTTP_1_0:Lts6;

    new-instance v1, Lts6;

    const/4 v2, 0x1

    const-string v3, "http/1.1"

    const-string v4, "HTTP_1_1"

    invoke-direct {v1, v4, v2, v3}, Lts6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lts6;->HTTP_1_1:Lts6;

    new-instance v2, Lts6;

    const/4 v3, 0x2

    const-string v4, "spdy/3.1"

    const-string v5, "SPDY_3"

    invoke-direct {v2, v5, v3, v4}, Lts6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lts6;->SPDY_3:Lts6;

    new-instance v3, Lts6;

    const/4 v4, 0x3

    const-string v5, "h2"

    const-string v6, "HTTP_2"

    invoke-direct {v3, v6, v4, v5}, Lts6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lts6;->HTTP_2:Lts6;

    new-instance v4, Lts6;

    const/4 v5, 0x4

    const-string v6, "h2_prior_knowledge"

    const-string v7, "H2_PRIOR_KNOWLEDGE"

    invoke-direct {v4, v7, v5, v6}, Lts6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lts6;->H2_PRIOR_KNOWLEDGE:Lts6;

    new-instance v5, Lts6;

    const/4 v6, 0x5

    const-string v7, "quic"

    const-string v8, "QUIC"

    invoke-direct {v5, v8, v6, v7}, Lts6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lts6;->QUIC:Lts6;

    filled-new-array/range {v0 .. v5}, [Lts6;

    move-result-object v0

    sput-object v0, Lts6;->$VALUES:[Lts6;

    new-instance v0, Lts6$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lts6;->Companion:Lts6$a;

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

    iput-object p3, p0, Lts6;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lts6;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lts6;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lts6;
    .locals 1

    const-class v0, Lts6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lts6;

    return-object p0
.end method

.method public static values()[Lts6;
    .locals 1

    sget-object v0, Lts6;->$VALUES:[Lts6;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lts6;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lts6;->protocol:Ljava/lang/String;

    return-object p0
.end method
