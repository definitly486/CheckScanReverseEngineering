.class public final enum Lyads/ne4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/ne4;

.field public static final enum c:Lyads/ne4;

.field public static final enum d:Lyads/ne4;

.field public static final enum e:Lyads/ne4;

.field public static final enum f:Lyads/ne4;

.field public static final synthetic g:[Lyads/ne4;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/ne4;

    const-string v1, "CLICK_HANDLING_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/ne4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/ne4;->b:Lyads/ne4;

    new-instance v1, Lyads/ne4;

    const-string v2, "URL_OPEN_FAILED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/ne4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/ne4;->c:Lyads/ne4;

    new-instance v2, Lyads/ne4;

    const-string v3, "DEEPLINK_OPEN_FAILED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/ne4;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/ne4;->d:Lyads/ne4;

    new-instance v3, Lyads/ne4;

    const-string v4, "EMPTY_CLICK_URL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lyads/ne4;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyads/ne4;->e:Lyads/ne4;

    new-instance v4, Lyads/ne4;

    const-string v5, "NO_CLICK_HANDLER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lyads/ne4;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lyads/ne4;->f:Lyads/ne4;

    filled-new-array {v0, v1, v2, v3, v4}, [Lyads/ne4;

    move-result-object v0

    sput-object v0, Lyads/ne4;->g:[Lyads/ne4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/ne4;
    .locals 1

    const-class v0, Lyads/ne4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/ne4;

    return-object p0
.end method

.method public static values()[Lyads/ne4;
    .locals 1

    sget-object v0, Lyads/ne4;->g:[Lyads/ne4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/ne4;

    return-object v0
.end method
