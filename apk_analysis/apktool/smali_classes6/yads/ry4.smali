.class public final Lyads/ry4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lyads/qy4;
    .locals 3

    sget-object v0, Lyads/iy4;->d:Lyads/iy4;

    const/16 v0, 0x3eb

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 18
    const-string v1, "undefined"

    const-string v2, "No mediation data was received. Possibly, Client Bidding adapters are not connected"

    invoke-static {v1, v2, v0}, Lyads/ry4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lyads/qy4;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lyads/qy4;
    .locals 6

    new-instance v4, Lyads/iz4;

    sget-object v0, Lyads/kz4;->d:Lyads/kz4;

    invoke-direct {v4, v0, p1, p2}, Lyads/iz4;-><init>(Lyads/kz4;Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Lyads/qy4;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lyads/qy4;-><init>(Ljava/lang/String;Lyads/yy4;Lyads/nz4;Lyads/iz4;Ljava/lang/String;)V

    return-object v0
.end method
