.class public final enum Lyads/se6;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/se6;

.field public static final synthetic c:[Lyads/se6;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/se6;

    const-string v1, "FIT_XY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/se6;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lyads/se6;

    const-string v2, "FIT_CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/se6;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/se6;->b:Lyads/se6;

    new-instance v2, Lyads/se6;

    const-string v3, "CENTER_CROP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/se6;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lyads/se6;

    move-result-object v0

    sput-object v0, Lyads/se6;->c:[Lyads/se6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/se6;
    .locals 1

    const-class v0, Lyads/se6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/se6;

    return-object p0
.end method

.method public static values()[Lyads/se6;
    .locals 1

    sget-object v0, Lyads/se6;->c:[Lyads/se6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/se6;

    return-object v0
.end method
