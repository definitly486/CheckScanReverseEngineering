.class public final enum Lyads/o11;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/n11;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/o11;

.field public static final enum f:Lyads/o11;

.field public static final enum g:Lyads/o11;

.field public static final enum h:Lyads/o11;

.field public static final enum i:Lyads/o11;

.field public static final enum j:Lyads/o11;

.field public static final synthetic k:[Lyads/o11;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lyads/o11;

    const/4 v1, 0x0

    const-string v2, "linear"

    const-string v3, "LINEAR"

    invoke-direct {v0, v3, v1, v2}, Lyads/o11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/o11;->e:Lyads/o11;

    new-instance v1, Lyads/o11;

    const/4 v2, 0x1

    const-string v3, "ease"

    const-string v4, "EASE"

    invoke-direct {v1, v4, v2, v3}, Lyads/o11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/o11;->f:Lyads/o11;

    new-instance v2, Lyads/o11;

    const/4 v3, 0x2

    const-string v4, "ease_in"

    const-string v5, "EASE_IN"

    invoke-direct {v2, v5, v3, v4}, Lyads/o11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/o11;->g:Lyads/o11;

    new-instance v3, Lyads/o11;

    const/4 v4, 0x3

    const-string v5, "ease_out"

    const-string v6, "EASE_OUT"

    invoke-direct {v3, v6, v4, v5}, Lyads/o11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/o11;->h:Lyads/o11;

    new-instance v4, Lyads/o11;

    const/4 v5, 0x4

    const-string v6, "ease_in_out"

    const-string v7, "EASE_IN_OUT"

    invoke-direct {v4, v7, v5, v6}, Lyads/o11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/o11;->i:Lyads/o11;

    new-instance v5, Lyads/o11;

    const/4 v6, 0x5

    const-string v7, "spring"

    const-string v8, "SPRING"

    invoke-direct {v5, v8, v6, v7}, Lyads/o11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/o11;->j:Lyads/o11;

    filled-new-array/range {v0 .. v5}, [Lyads/o11;

    move-result-object v0

    sput-object v0, Lyads/o11;->k:[Lyads/o11;

    new-instance v0, Lyads/n11;

    invoke-direct {v0}, Lyads/n11;-><init>()V

    sput-object v0, Lyads/o11;->c:Lyads/n11;

    new-instance v0, Lvu2;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lvu2;-><init>(I)V

    sput-object v0, Lyads/o11;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/o11;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/o11;
    .locals 2

    sget-object v0, Lyads/o11;->c:Lyads/n11;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/o11;->e:Lyads/o11;

    const-string v1, "linear"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/o11;->f:Lyads/o11;

    const-string v1, "ease"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/o11;->g:Lyads/o11;

    const-string v1, "ease_in"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lyads/o11;->h:Lyads/o11;

    const-string v1, "ease_out"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lyads/o11;->i:Lyads/o11;

    const-string v1, "ease_in_out"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lyads/o11;->j:Lyads/o11;

    const-string v1, "spring"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/o11;
    .locals 1

    const-class v0, Lyads/o11;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/o11;

    return-object p0
.end method

.method public static values()[Lyads/o11;
    .locals 1

    sget-object v0, Lyads/o11;->k:[Lyads/o11;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/o11;

    return-object v0
.end method
