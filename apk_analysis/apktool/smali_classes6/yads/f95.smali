.class public final enum Lyads/f95;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lyads/f95;

.field public static final enum e:Lyads/f95;

.field public static final enum f:Lyads/f95;

.field public static final synthetic g:[Lyads/f95;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lyads/f95;

    const-string v1, "CONTENT"

    const-string v2, "content"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v2}, Lyads/f95;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lyads/f95;->d:Lyads/f95;

    new-instance v1, Lyads/f95;

    const-string v2, "APP_INSTALL"

    const-string v3, "app"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3, v3}, Lyads/f95;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lyads/f95;->e:Lyads/f95;

    new-instance v2, Lyads/f95;

    const-string v3, "IMAGE"

    const-string v4, "image"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4, v4}, Lyads/f95;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lyads/f95;

    const-string v4, "productPromo"

    const-string v5, "product_promo"

    const/4 v6, 0x3

    const-string v7, "PRODUCT_PROMO"

    invoke-direct {v3, v6, v7, v4, v5}, Lyads/f95;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lyads/f95;->f:Lyads/f95;

    filled-new-array {v0, v1, v2, v3}, [Lyads/f95;

    move-result-object v0

    sput-object v0, Lyads/f95;->g:[Lyads/f95;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/f95;->b:Ljava/lang/String;

    iput-object p4, p0, Lyads/f95;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/f95;
    .locals 1

    const-class v0, Lyads/f95;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/f95;

    return-object p0
.end method

.method public static values()[Lyads/f95;
    .locals 1

    sget-object v0, Lyads/f95;->g:[Lyads/f95;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/f95;

    return-object v0
.end method
