.class public final enum Lyads/z40;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/z40;

.field public static final enum c:Lyads/z40;

.field public static final enum d:Lyads/z40;

.field public static final synthetic e:[Lyads/z40;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/z40;

    const-string v1, "FAVICON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/z40;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/z40;->b:Lyads/z40;

    new-instance v1, Lyads/z40;

    const-string v2, "ICON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/z40;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/z40;->c:Lyads/z40;

    new-instance v2, Lyads/z40;

    const-string v3, "THUMB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/z40;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/z40;->d:Lyads/z40;

    filled-new-array {v0, v1, v2}, [Lyads/z40;

    move-result-object v0

    sput-object v0, Lyads/z40;->e:[Lyads/z40;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/z40;
    .locals 1

    const-class v0, Lyads/z40;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/z40;

    return-object p0
.end method

.method public static values()[Lyads/z40;
    .locals 1

    sget-object v0, Lyads/z40;->e:[Lyads/z40;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/z40;

    return-object v0
.end method
