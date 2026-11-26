.class public final enum Lyads/bb3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/bb3;

.field public static final synthetic d:[Lyads/bb3;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/bb3;

    const/4 v1, 0x0

    const-string v2, "top"

    const-string v3, "ICON_VERTICAL_POSITION_TOP"

    invoke-direct {v0, v3, v1, v2}, Lyads/bb3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lyads/bb3;

    const/4 v2, 0x1

    const-string v3, "bottom"

    const-string v4, "ICON_VERTICAL_POSITION_BOTTOM"

    invoke-direct {v1, v4, v2, v3}, Lyads/bb3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lyads/bb3;

    const/4 v3, 0x2

    const-string v4, "topOffset"

    const-string v5, "ICON_VERTICAL_POSITION_TOP_OFFSET"

    invoke-direct {v2, v5, v3, v4}, Lyads/bb3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/bb3;->c:Lyads/bb3;

    filled-new-array {v0, v1, v2}, [Lyads/bb3;

    move-result-object v0

    sput-object v0, Lyads/bb3;->d:[Lyads/bb3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/bb3;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/bb3;
    .locals 1

    const-class v0, Lyads/bb3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/bb3;

    return-object p0
.end method

.method public static values()[Lyads/bb3;
    .locals 1

    sget-object v0, Lyads/bb3;->d:[Lyads/bb3;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/bb3;

    return-object v0
.end method
