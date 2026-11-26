.class public final enum Lyads/pd3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/pd3;

.field public static final enum c:Lyads/pd3;

.field public static final enum d:Lyads/pd3;

.field public static final enum e:Lyads/pd3;

.field public static final synthetic f:[Lyads/pd3;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/pd3;

    const-string v1, "PNG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/pd3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/pd3;->b:Lyads/pd3;

    new-instance v1, Lyads/pd3;

    const-string v2, "JPEG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/pd3;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/pd3;->c:Lyads/pd3;

    new-instance v2, Lyads/pd3;

    const-string v3, "GIF"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/pd3;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/pd3;->d:Lyads/pd3;

    new-instance v3, Lyads/pd3;

    const-string v4, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lyads/pd3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyads/pd3;->e:Lyads/pd3;

    filled-new-array {v0, v1, v2, v3}, [Lyads/pd3;

    move-result-object v0

    sput-object v0, Lyads/pd3;->f:[Lyads/pd3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/pd3;
    .locals 1

    const-class v0, Lyads/pd3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/pd3;

    return-object p0
.end method

.method public static values()[Lyads/pd3;
    .locals 1

    sget-object v0, Lyads/pd3;->f:[Lyads/pd3;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/pd3;

    return-object v0
.end method
