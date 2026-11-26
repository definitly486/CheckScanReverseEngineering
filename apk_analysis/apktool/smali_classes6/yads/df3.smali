.class public final enum Lyads/df3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/df3;

.field public static final synthetic d:[Lyads/df3;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lyads/df3;

    const/4 v1, 0x0

    const-string v2, "definedByJavaScript"

    const-string v3, "DEFINED_BY_JAVASCRIPT"

    invoke-direct {v0, v3, v1, v2}, Lyads/df3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lyads/df3;

    const/4 v2, 0x1

    const-string v3, "unspecified"

    const-string v4, "UNSPECIFIED"

    invoke-direct {v1, v4, v2, v3}, Lyads/df3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lyads/df3;

    const/4 v3, 0x2

    const-string v4, "loaded"

    const-string v5, "LOADED"

    invoke-direct {v2, v5, v3, v4}, Lyads/df3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lyads/df3;

    const/4 v4, 0x3

    const-string v5, "beginToRender"

    const-string v6, "BEGIN_TO_RENDER"

    invoke-direct {v3, v6, v4, v5}, Lyads/df3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lyads/df3;

    const/4 v5, 0x4

    const-string v6, "onePixel"

    const-string v7, "ONE_PIXEL"

    invoke-direct {v4, v7, v5, v6}, Lyads/df3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lyads/df3;

    const/4 v6, 0x5

    const-string v7, "viewable"

    const-string v8, "VIEWABLE"

    invoke-direct {v5, v8, v6, v7}, Lyads/df3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/df3;->c:Lyads/df3;

    new-instance v6, Lyads/df3;

    const/4 v7, 0x6

    const-string v8, "audible"

    const-string v9, "AUDIBLE"

    invoke-direct {v6, v9, v7, v8}, Lyads/df3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lyads/df3;

    const/4 v8, 0x7

    const-string v9, "other"

    const-string v10, "OTHER"

    invoke-direct {v7, v10, v8, v9}, Lyads/df3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array/range {v0 .. v7}, [Lyads/df3;

    move-result-object v0

    sput-object v0, Lyads/df3;->d:[Lyads/df3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/df3;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/df3;
    .locals 1

    const-class v0, Lyads/df3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/df3;

    return-object p0
.end method

.method public static values()[Lyads/df3;
    .locals 1

    sget-object v0, Lyads/df3;->d:[Lyads/df3;

    invoke-virtual {v0}, [Lyads/df3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/df3;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/df3;->b:Ljava/lang/String;

    return-object p0
.end method
