.class public final enum Lyads/so;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/ro;

.field public static final enum d:Lyads/so;

.field public static final enum e:Lyads/so;

.field public static final synthetic f:[Lyads/so;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lyads/so;

    const/4 v1, 0x0

    const-string v2, "constant"

    const-string v3, "CONSTANT"

    invoke-direct {v0, v3, v1, v2}, Lyads/so;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lyads/so;

    const/4 v2, 0x1

    const-string v3, "ratio"

    const-string v4, "RATIO"

    invoke-direct {v1, v4, v2, v3}, Lyads/so;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lyads/so;

    const/4 v3, 0x2

    const-string v4, "screen_based"

    const-string v5, "SCREEN_BASED"

    invoke-direct {v2, v5, v3, v4}, Lyads/so;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lyads/so;

    const/4 v4, 0x3

    const-string v5, "screen_orientation_based"

    const-string v6, "SCREEN_ORIENTATION_BASED"

    invoke-direct {v3, v6, v4, v5}, Lyads/so;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/so;->d:Lyads/so;

    new-instance v4, Lyads/so;

    const/4 v5, 0x4

    const-string v6, "mediation"

    const-string v7, "MEDIATION"

    invoke-direct {v4, v7, v5, v6}, Lyads/so;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/so;->e:Lyads/so;

    filled-new-array {v0, v1, v2, v3, v4}, [Lyads/so;

    move-result-object v0

    sput-object v0, Lyads/so;->f:[Lyads/so;

    new-instance v0, Lyads/ro;

    invoke-direct {v0}, Lyads/ro;-><init>()V

    sput-object v0, Lyads/so;->c:Lyads/ro;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/so;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/so;
    .locals 1

    const-class v0, Lyads/so;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/so;

    return-object p0
.end method

.method public static values()[Lyads/so;
    .locals 1

    sget-object v0, Lyads/so;->f:[Lyads/so;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/so;

    return-object v0
.end method
