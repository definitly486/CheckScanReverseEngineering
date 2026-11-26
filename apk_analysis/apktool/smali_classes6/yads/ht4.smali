.class public final enum Lyads/ht4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/ht4;

.field public static final enum c:Lyads/ht4;

.field public static final enum d:Lyads/ht4;

.field public static final enum e:Lyads/ht4;

.field public static final enum f:Lyads/ht4;

.field public static final enum g:Lyads/ht4;

.field public static final synthetic h:[Lyads/ht4;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lyads/ht4;

    const-string v1, "MISSING_TEMPLATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/ht4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/ht4;->b:Lyads/ht4;

    new-instance v1, Lyads/ht4;

    const-string v2, "MISSING_VALUE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/ht4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/ht4;->c:Lyads/ht4;

    new-instance v2, Lyads/ht4;

    const-string v3, "MISSING_VARIABLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/ht4;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/ht4;->d:Lyads/ht4;

    new-instance v3, Lyads/ht4;

    const-string v4, "TYPE_MISMATCH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lyads/ht4;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyads/ht4;->e:Lyads/ht4;

    new-instance v4, Lyads/ht4;

    const-string v5, "INVALID_VALUE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lyads/ht4;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lyads/ht4;->f:Lyads/ht4;

    new-instance v5, Lyads/ht4;

    const-string v6, "DEPENDENCY_FAILED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lyads/ht4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lyads/ht4;->g:Lyads/ht4;

    filled-new-array/range {v0 .. v5}, [Lyads/ht4;

    move-result-object v0

    sput-object v0, Lyads/ht4;->h:[Lyads/ht4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/ht4;
    .locals 1

    const-class v0, Lyads/ht4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/ht4;

    return-object p0
.end method

.method public static values()[Lyads/ht4;
    .locals 1

    sget-object v0, Lyads/ht4;->h:[Lyads/ht4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/ht4;

    return-object v0
.end method
