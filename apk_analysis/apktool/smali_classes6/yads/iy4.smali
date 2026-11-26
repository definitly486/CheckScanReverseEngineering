.class public final enum Lyads/iy4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lyads/iy4;

.field public static final enum e:Lyads/iy4;

.field public static final enum f:Lyads/iy4;

.field public static final enum g:Lyads/iy4;

.field public static final synthetic h:[Lyads/iy4;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lyads/iy4;

    const-string v1, "TIMEOUT"

    const-string v2, "The request failed to load due to a timeout"

    const/4 v3, 0x0

    const/16 v4, 0x3e9

    invoke-direct {v0, v3, v4, v1, v2}, Lyads/iy4;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lyads/iy4;->d:Lyads/iy4;

    new-instance v1, Lyads/iy4;

    const-string v2, "INVALID_CONFIGURATION"

    const-string v3, "The provided configuration is invalid"

    const/4 v4, 0x1

    const/16 v5, 0x3ea

    invoke-direct {v1, v4, v5, v2, v3}, Lyads/iy4;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lyads/iy4;->e:Lyads/iy4;

    new-instance v2, Lyads/iy4;

    const-string v3, "EMPTY_MEDIATION_DATA"

    const-string v4, "No mediation data was received. Possibly, Client Bidding adapters are not connected"

    const/4 v5, 0x2

    const/16 v6, 0x3eb

    invoke-direct {v2, v5, v6, v3, v4}, Lyads/iy4;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lyads/iy4;->f:Lyads/iy4;

    new-instance v3, Lyads/iy4;

    const-string v4, "INVALID_FETCHED_DATA"

    const-string v5, "The fetched data is invalid"

    const/4 v6, 0x3

    const/16 v7, 0x3ec

    invoke-direct {v3, v6, v7, v4, v5}, Lyads/iy4;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lyads/iy4;->g:Lyads/iy4;

    filled-new-array {v0, v1, v2, v3}, [Lyads/iy4;

    move-result-object v0

    sput-object v0, Lyads/iy4;->h:[Lyads/iy4;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lyads/iy4;->b:I

    iput-object p4, p0, Lyads/iy4;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/iy4;
    .locals 1

    const-class v0, Lyads/iy4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/iy4;

    return-object p0
.end method

.method public static values()[Lyads/iy4;
    .locals 1

    sget-object v0, Lyads/iy4;->h:[Lyads/iy4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/iy4;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lyads/iy4;->b:I

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/iy4;->c:Ljava/lang/String;

    return-object p0
.end method
