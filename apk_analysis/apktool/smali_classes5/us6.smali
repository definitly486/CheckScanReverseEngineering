.class public final enum Lus6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lus6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lus6;

.field public static final enum HTTP_1_0:Lus6;

.field public static final enum HTTP_1_1:Lus6;

.field public static final enum HTTP_2:Lus6;

.field public static final enum SPDY_3:Lus6;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lus6;

    const/4 v1, 0x0

    const-string v2, "http/1.0"

    const-string v3, "HTTP_1_0"

    invoke-direct {v0, v3, v1, v2}, Lus6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lus6;->HTTP_1_0:Lus6;

    new-instance v1, Lus6;

    const/4 v2, 0x1

    const-string v3, "http/1.1"

    const-string v4, "HTTP_1_1"

    invoke-direct {v1, v4, v2, v3}, Lus6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lus6;->HTTP_1_1:Lus6;

    new-instance v2, Lus6;

    const/4 v3, 0x2

    const-string v4, "spdy/3.1"

    const-string v5, "SPDY_3"

    invoke-direct {v2, v5, v3, v4}, Lus6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lus6;->SPDY_3:Lus6;

    new-instance v3, Lus6;

    const/4 v4, 0x3

    const-string v5, "h2"

    const-string v6, "HTTP_2"

    invoke-direct {v3, v6, v4, v5}, Lus6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lus6;->HTTP_2:Lus6;

    filled-new-array {v0, v1, v2, v3}, [Lus6;

    move-result-object v0

    sput-object v0, Lus6;->$VALUES:[Lus6;

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

    iput-object p3, p0, Lus6;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lus6;
    .locals 2

    sget-object v0, Lus6;->HTTP_1_0:Lus6;

    iget-object v1, v0, Lus6;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lus6;->HTTP_1_1:Lus6;

    iget-object v1, v0, Lus6;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lus6;->HTTP_2:Lus6;

    iget-object v1, v0, Lus6;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lus6;->SPDY_3:Lus6;

    iget-object v1, v0, Lus6;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "Unexpected protocol: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lus6;
    .locals 1

    const-class v0, Lus6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lus6;

    return-object p0
.end method

.method public static values()[Lus6;
    .locals 1

    sget-object v0, Lus6;->$VALUES:[Lus6;

    invoke-virtual {v0}, [Lus6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus6;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lus6;->protocol:Ljava/lang/String;

    return-object p0
.end method
