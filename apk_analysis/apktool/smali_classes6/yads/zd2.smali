.class public final enum Lyads/zd2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/yd2;

.field public static final d:Lnl3;

.field public static final enum e:Lyads/zd2;

.field public static final enum f:Lyads/zd2;

.field public static final synthetic g:[Lyads/zd2;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/zd2;

    const/4 v1, 0x0

    const-string v2, "on_condition"

    const-string v3, "ON_CONDITION"

    invoke-direct {v0, v3, v1, v2}, Lyads/zd2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/zd2;->e:Lyads/zd2;

    new-instance v1, Lyads/zd2;

    const/4 v2, 0x1

    const-string v3, "on_variable"

    const-string v4, "ON_VARIABLE"

    invoke-direct {v1, v4, v2, v3}, Lyads/zd2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/zd2;->f:Lyads/zd2;

    filled-new-array {v0, v1}, [Lyads/zd2;

    move-result-object v0

    sput-object v0, Lyads/zd2;->g:[Lyads/zd2;

    new-instance v0, Lyads/yd2;

    invoke-direct {v0}, Lyads/yd2;-><init>()V

    sput-object v0, Lyads/zd2;->c:Lyads/yd2;

    new-instance v0, Lji;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lji;-><init>(I)V

    sput-object v0, Lyads/zd2;->d:Lnl3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/zd2;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lyads/zd2;
    .locals 2

    sget-object v0, Lyads/zd2;->c:Lyads/yd2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/zd2;->e:Lyads/zd2;

    const-string v1, "on_condition"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lyads/zd2;->f:Lyads/zd2;

    const-string v1, "on_variable"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/zd2;
    .locals 1

    const-class v0, Lyads/zd2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/zd2;

    return-object p0
.end method

.method public static values()[Lyads/zd2;
    .locals 1

    sget-object v0, Lyads/zd2;->g:[Lyads/zd2;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/zd2;

    return-object v0
.end method
