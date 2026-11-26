.class public final enum Lyads/i16;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lyads/i16;

.field public static final enum c:Lyads/i16;

.field public static final enum d:Lyads/i16;

.field public static final enum e:Lyads/i16;

.field public static final enum f:Lyads/i16;

.field public static final enum g:Lyads/i16;

.field public static final enum h:Lyads/i16;

.field public static final enum i:Lyads/i16;

.field public static final enum j:Lyads/i16;

.field public static final enum k:Lyads/i16;

.field public static final synthetic l:[Lyads/i16;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lyads/i16;

    const-string v1, "ADTUNE_CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/i16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/i16;->b:Lyads/i16;

    new-instance v1, Lyads/i16;

    const-string v2, "CLICK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/i16;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/i16;->c:Lyads/i16;

    new-instance v2, Lyads/i16;

    const-string v3, "FALSE_CLICK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/i16;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/i16;->d:Lyads/i16;

    new-instance v3, Lyads/i16;

    const-string v4, "IMPRESSION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lyads/i16;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyads/i16;->e:Lyads/i16;

    new-instance v4, Lyads/i16;

    const-string v5, "DSP_IMPRESSION"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lyads/i16;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lyads/i16;->f:Lyads/i16;

    new-instance v5, Lyads/i16;

    const-string v6, "MEDIATION_IMPRESSION"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lyads/i16;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lyads/i16;->g:Lyads/i16;

    new-instance v6, Lyads/i16;

    const-string v7, "MEDIATION_RESPONSE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lyads/i16;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lyads/i16;->h:Lyads/i16;

    new-instance v7, Lyads/i16;

    const-string v8, "RENDER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lyads/i16;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lyads/i16;->i:Lyads/i16;

    new-instance v8, Lyads/i16;

    const-string v9, "SERVER_SIDE_REWARD"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lyads/i16;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lyads/i16;->j:Lyads/i16;

    new-instance v9, Lyads/i16;

    const-string v10, "UNKNOWN"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lyads/i16;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lyads/i16;->k:Lyads/i16;

    filled-new-array/range {v0 .. v9}, [Lyads/i16;

    move-result-object v0

    sput-object v0, Lyads/i16;->l:[Lyads/i16;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/i16;
    .locals 1

    const-class v0, Lyads/i16;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/i16;

    return-object p0
.end method

.method public static values()[Lyads/i16;
    .locals 1

    sget-object v0, Lyads/i16;->l:[Lyads/i16;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/i16;

    return-object v0
.end method
