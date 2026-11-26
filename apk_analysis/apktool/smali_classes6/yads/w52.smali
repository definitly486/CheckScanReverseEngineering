.class public final enum Lyads/w52;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/v52;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/w52;

.field public static final enum f:Lyads/w52;

.field public static final enum g:Lyads/w52;

.field public static final synthetic h:[Lyads/w52;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/w52;

    const/4 v1, 0x0

    const-string v2, "slide"

    const-string v3, "SLIDE"

    invoke-direct {v0, v3, v1, v2}, Lyads/w52;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/w52;->e:Lyads/w52;

    new-instance v1, Lyads/w52;

    const/4 v2, 0x1

    const-string v3, "fade"

    const-string v4, "FADE"

    invoke-direct {v1, v4, v2, v3}, Lyads/w52;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/w52;->f:Lyads/w52;

    new-instance v2, Lyads/w52;

    const/4 v3, 0x2

    const-string v4, "none"

    const-string v5, "NONE"

    invoke-direct {v2, v5, v3, v4}, Lyads/w52;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/w52;->g:Lyads/w52;

    filled-new-array {v0, v1, v2}, [Lyads/w52;

    move-result-object v0

    sput-object v0, Lyads/w52;->h:[Lyads/w52;

    new-instance v0, Lyads/v52;

    invoke-direct {v0}, Lyads/v52;-><init>()V

    sput-object v0, Lyads/w52;->c:Lyads/v52;

    new-instance v0, Luf0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Luf0;-><init>(I)V

    sput-object v0, Lyads/w52;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/w52;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/w52;
    .locals 2

    sget-object v0, Lyads/w52;->c:Lyads/v52;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/w52;->e:Lyads/w52;

    const-string v1, "slide"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/w52;->f:Lyads/w52;

    const-string v1, "fade"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lyads/w52;->g:Lyads/w52;

    const-string v1, "none"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/w52;
    .locals 1

    const-class v0, Lyads/w52;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/w52;

    return-object p0
.end method

.method public static values()[Lyads/w52;
    .locals 1

    sget-object v0, Lyads/w52;->h:[Lyads/w52;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/w52;

    return-object v0
.end method
