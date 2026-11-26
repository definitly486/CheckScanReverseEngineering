.class public final enum Lyads/t72;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/s72;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/t72;

.field public static final enum f:Lyads/t72;

.field public static final enum g:Lyads/t72;

.field public static final enum h:Lyads/t72;

.field public static final enum i:Lyads/t72;

.field public static final synthetic j:[Lyads/t72;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lyads/t72;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lyads/t72;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/t72;->e:Lyads/t72;

    new-instance v1, Lyads/t72;

    const/4 v2, 0x1

    const-string v3, "button"

    const-string v4, "BUTTON"

    invoke-direct {v1, v4, v2, v3}, Lyads/t72;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/t72;->f:Lyads/t72;

    new-instance v2, Lyads/t72;

    const/4 v3, 0x2

    const-string v4, "image"

    const-string v5, "IMAGE"

    invoke-direct {v2, v5, v3, v4}, Lyads/t72;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/t72;->g:Lyads/t72;

    new-instance v3, Lyads/t72;

    const/4 v4, 0x3

    const-string v5, "text"

    const-string v6, "TEXT"

    invoke-direct {v3, v6, v4, v5}, Lyads/t72;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/t72;->h:Lyads/t72;

    new-instance v4, Lyads/t72;

    const/4 v5, 0x4

    const-string v6, "auto"

    const-string v7, "AUTO"

    invoke-direct {v4, v7, v5, v6}, Lyads/t72;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/t72;->i:Lyads/t72;

    filled-new-array {v0, v1, v2, v3, v4}, [Lyads/t72;

    move-result-object v0

    sput-object v0, Lyads/t72;->j:[Lyads/t72;

    new-instance v0, Lyads/s72;

    invoke-direct {v0}, Lyads/s72;-><init>()V

    sput-object v0, Lyads/t72;->c:Lyads/s72;

    new-instance v0, Lvu2;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lvu2;-><init>(I)V

    sput-object v0, Lyads/t72;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/t72;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/t72;
    .locals 2

    sget-object v0, Lyads/t72;->c:Lyads/s72;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/t72;->e:Lyads/t72;

    const-string v1, "none"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/t72;->f:Lyads/t72;

    const-string v1, "button"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/t72;->g:Lyads/t72;

    const-string v1, "image"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lyads/t72;->h:Lyads/t72;

    const-string v1, "text"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lyads/t72;->i:Lyads/t72;

    const-string v1, "auto"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/t72;
    .locals 1

    const-class v0, Lyads/t72;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/t72;

    return-object p0
.end method

.method public static values()[Lyads/t72;
    .locals 1

    sget-object v0, Lyads/t72;->j:[Lyads/t72;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/t72;

    return-object v0
.end method
