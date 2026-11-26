.class public final enum Lyads/jg1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/ig1;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/jg1;

.field public static final enum f:Lyads/jg1;

.field public static final synthetic g:[Lyads/jg1;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/jg1;

    const/4 v1, 0x0

    const-string v2, "horizontal"

    const-string v3, "HORIZONTAL"

    invoke-direct {v0, v3, v1, v2}, Lyads/jg1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/jg1;->e:Lyads/jg1;

    new-instance v1, Lyads/jg1;

    const/4 v2, 0x1

    const-string v3, "vertical"

    const-string v4, "VERTICAL"

    invoke-direct {v1, v4, v2, v3}, Lyads/jg1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/jg1;->f:Lyads/jg1;

    filled-new-array {v0, v1}, [Lyads/jg1;

    move-result-object v0

    sput-object v0, Lyads/jg1;->g:[Lyads/jg1;

    new-instance v0, Lyads/ig1;

    invoke-direct {v0}, Lyads/ig1;-><init>()V

    sput-object v0, Lyads/jg1;->c:Lyads/ig1;

    new-instance v0, Lgg1;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lgg1;-><init>(I)V

    sput-object v0, Lyads/jg1;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/jg1;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/jg1;
    .locals 2

    sget-object v0, Lyads/jg1;->c:Lyads/ig1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/jg1;->e:Lyads/jg1;

    const-string v1, "horizontal"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/jg1;->f:Lyads/jg1;

    const-string v1, "vertical"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/jg1;
    .locals 1

    const-class v0, Lyads/jg1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/jg1;

    return-object p0
.end method

.method public static values()[Lyads/jg1;
    .locals 1

    sget-object v0, Lyads/jg1;->g:[Lyads/jg1;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/jg1;

    return-object v0
.end method
