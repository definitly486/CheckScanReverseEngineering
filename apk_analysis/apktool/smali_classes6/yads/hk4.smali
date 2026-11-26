.class public final enum Lyads/hk4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/hk4;

.field public static final enum d:Lyads/hk4;

.field public static final enum e:Lyads/hk4;

.field public static final synthetic f:[Lyads/hk4;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/hk4;

    const/4 v1, 0x0

    const-string v2, "ad"

    const-string v3, "AD"

    invoke-direct {v0, v3, v1, v2}, Lyads/hk4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/hk4;->c:Lyads/hk4;

    new-instance v1, Lyads/hk4;

    const/4 v2, 0x1

    const-string v3, "bulk"

    const-string v4, "BULK"

    invoke-direct {v1, v4, v2, v3}, Lyads/hk4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/hk4;->d:Lyads/hk4;

    new-instance v2, Lyads/hk4;

    const/4 v3, 0x2

    const-string v4, "ad_unit"

    const-string v5, "SLIDER"

    invoke-direct {v2, v5, v3, v4}, Lyads/hk4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/hk4;->e:Lyads/hk4;

    filled-new-array {v0, v1, v2}, [Lyads/hk4;

    move-result-object v0

    sput-object v0, Lyads/hk4;->f:[Lyads/hk4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/hk4;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/hk4;
    .locals 1

    const-class v0, Lyads/hk4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/hk4;

    return-object p0
.end method

.method public static values()[Lyads/hk4;
    .locals 1

    sget-object v0, Lyads/hk4;->f:[Lyads/hk4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/hk4;

    return-object v0
.end method
